; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_compute_max_vf_buses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_compute_max_vf_buses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @compute_max_vf_buses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_max_vf_buses(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_sriov*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load %struct.pci_sriov*, %struct.pci_sriov** %8, align 8
  store %struct.pci_sriov* %9, %struct.pci_sriov** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %11 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pci_iov_set_numvfs(%struct.pci_dev* %17, i32 %18)
  %20 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %21 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %29 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %27, %24
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %36, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %42 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.pci_sriov*, %struct.pci_sriov** %3, align 8
  %48 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %13

53:                                               ; preds = %13
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_iov_set_numvfs(%struct.pci_dev* %55, i32 0)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @pci_iov_set_numvfs(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iov_virtfn_bus(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
