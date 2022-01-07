; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproce_pcie_get_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproce_pcie_get_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"arm,gic-v3-its\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to find compatible MSI controller\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unable to obtain MSI controller resources\0A\00", align 1
@GITS_TRANSLATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, %struct.device_node*, i64*)* @iproce_pcie_get_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproce_pcie_get_msi(%struct.iproc_pcie* %0, %struct.device_node* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iproc_pcie*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource, align 8
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_device_is_compatible(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @of_address_to_resource(%struct.device_node* %23, i32 0, %struct.resource* %10)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GITS_TRANSLATER, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %27, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
