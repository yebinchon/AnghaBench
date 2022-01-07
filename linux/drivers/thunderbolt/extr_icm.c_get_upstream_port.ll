; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_get_upstream_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_get_upstream_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_TYPE_UPSTREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_dev*)* @get_upstream_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @get_upstream_port(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %4, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_is_pcie(%struct.pci_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %35

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @pci_pcie_type(%struct.pci_dev* %16)
  %18 = load i64, i64* @PCI_EXP_TYPE_UPSTREAM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %4, align 8
  br label %7

24:                                               ; preds = %20, %7
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %35

28:                                               ; preds = %24
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %34 [
    i32 134, label %32
    i32 133, label %32
    i32 130, label %32
    i32 131, label %32
    i32 132, label %32
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28, %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %2, align 8
  br label %35

34:                                               ; preds = %28
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %35

35:                                               ; preds = %34, %32, %27, %14
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %36
}

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
