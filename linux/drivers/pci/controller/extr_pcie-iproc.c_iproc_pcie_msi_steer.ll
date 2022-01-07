; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_msi_steer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_msi_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"msi steering failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, %struct.device_node*)* @iproc_pcie_msi_steer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_msi_steer(%struct.iproc_pcie* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_pcie*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @iproce_pcie_get_msi(%struct.iproc_pcie* %12, %struct.device_node* %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %23 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %38 [
    i32 129, label %25
    i32 128, label %34
  ]

25:                                               ; preds = %21
  %26 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @iproc_pcie_paxb_v2_msi_steer(%struct.iproc_pcie* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.iproc_pcie*, %struct.iproc_pcie** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @iproc_pcie_paxc_v2_msi_steer(%struct.iproc_pcie* %35, i32 %36, i32 1)
  br label %41

38:                                               ; preds = %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %34, %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %31, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iproce_pcie_get_msi(%struct.iproc_pcie*, %struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iproc_pcie_paxb_v2_msi_steer(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @iproc_pcie_paxc_v2_msi_steer(%struct.iproc_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
