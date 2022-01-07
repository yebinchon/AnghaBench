; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_ntb_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.amd_ntb_dev = type { i32, %struct.ntb_dev_data* }
%struct.ntb_dev_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NTB device registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd_ntb_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.amd_ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_to_node(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.amd_ntb_dev* @kzalloc_node(i32 16, i32 %12, i32 %13)
  store %struct.amd_ntb_dev* %14, %struct.amd_ntb_dev** %6, align 8
  %15 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %16 = icmp ne %struct.amd_ntb_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ntb_dev_data*
  %25 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %26 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %25, i32 0, i32 1
  store %struct.ntb_dev_data* %24, %struct.ntb_dev_data** %26, align 8
  %27 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @ndev_init_struct(%struct.amd_ntb_dev* %27, %struct.pci_dev* %28)
  %30 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @amd_ntb_init_pci(%struct.amd_ntb_dev* %30, %struct.pci_dev* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %67

36:                                               ; preds = %20
  %37 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %38 = call i32 @amd_init_dev(%struct.amd_ntb_dev* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %64

42:                                               ; preds = %36
  %43 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %44 = call i32 @amd_init_side_info(%struct.amd_ntb_dev* %43)
  %45 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %46 = call i32 @amd_poll_link(%struct.amd_ntb_dev* %45)
  %47 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %48 = call i32 @ndev_init_debugfs(%struct.amd_ntb_dev* %47)
  %49 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %50 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %49, i32 0, i32 0
  %51 = call i32 @ntb_register_device(i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

59:                                               ; preds = %54
  %60 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %61 = call i32 @ndev_deinit_debugfs(%struct.amd_ntb_dev* %60)
  %62 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %63 = call i32 @amd_deinit_dev(%struct.amd_ntb_dev* %62)
  br label %64

64:                                               ; preds = %59, %41
  %65 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %66 = call i32 @amd_ntb_deinit_pci(%struct.amd_ntb_dev* %65)
  br label %67

67:                                               ; preds = %64, %35
  %68 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %6, align 8
  %69 = call i32 @kfree(%struct.amd_ntb_dev* %68)
  br label %70

70:                                               ; preds = %67, %17
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %55
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local %struct.amd_ntb_dev* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ndev_init_struct(%struct.amd_ntb_dev*, %struct.pci_dev*) #1

declare dso_local i32 @amd_ntb_init_pci(%struct.amd_ntb_dev*, %struct.pci_dev*) #1

declare dso_local i32 @amd_init_dev(%struct.amd_ntb_dev*) #1

declare dso_local i32 @amd_init_side_info(%struct.amd_ntb_dev*) #1

declare dso_local i32 @amd_poll_link(%struct.amd_ntb_dev*) #1

declare dso_local i32 @ndev_init_debugfs(%struct.amd_ntb_dev*) #1

declare dso_local i32 @ntb_register_device(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ndev_deinit_debugfs(%struct.amd_ntb_dev*) #1

declare dso_local i32 @amd_deinit_dev(%struct.amd_ntb_dev*) #1

declare dso_local i32 @amd_ntb_deinit_pci(%struct.amd_ntb_dev*) #1

declare dso_local i32 @kfree(%struct.amd_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
