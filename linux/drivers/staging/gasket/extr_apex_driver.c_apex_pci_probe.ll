; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_apex_driver.c_apex_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.gasket_dev = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"error enabling PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error adding gasket device\0A\00", align 1
@APEX_RESET_RETRY = common dso_local global i32 0, align 4
@APEX_BAR_INDEX = common dso_local global i32 0, align 4
@APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT = common dso_local global i32 0, align 4
@APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT = common dso_local global i32 0, align 4
@APEX_RESET_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Page table init timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"MSI-X table init timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@apex_sysfs_attrs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"error creating device sysfs entries\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"error enabling gasket device\0A\00", align 1
@allow_power_save = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apex_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apex_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gasket_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %123

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_set_master(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @gasket_pci_add_device(%struct.pci_dev* %23, %struct.gasket_dev** %10)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_disable_device(%struct.pci_dev* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %123

34:                                               ; preds = %20
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %37 = call i32 @pci_set_drvdata(%struct.pci_dev* %35, %struct.gasket_dev* %36)
  %38 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %39 = call i32 @apex_reset(%struct.gasket_dev* %38)
  br label %40

40:                                               ; preds = %59, %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @APEX_RESET_RETRY, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %46 = load i32, i32* @APEX_BAR_INDEX, align 4
  %47 = load i32, i32* @APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT, align 4
  %48 = call i64 @gasket_dev_read_64(%struct.gasket_dev* %45, i32 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %50 = load i32, i32* @APEX_BAR_INDEX, align 4
  %51 = load i32, i32* @APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT, align 4
  %52 = call i64 @gasket_dev_read_64(%struct.gasket_dev* %49, i32 %50, i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %65

59:                                               ; preds = %55, %44
  %60 = load i32, i32* @APEX_RESET_DELAY, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @schedule_timeout(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %40

65:                                               ; preds = %58, %40
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @APEX_RESET_RETRY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %74 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %82 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %117

88:                                               ; preds = %65
  %89 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %90 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @apex_sysfs_attrs, align 4
  %94 = call i32 @gasket_sysfs_create_entries(i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %88
  %102 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %103 = call i32 @gasket_enable_device(%struct.gasket_dev* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %117

110:                                              ; preds = %101
  %111 = load i64, i64* @allow_power_save, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %115 = call i32 @apex_enter_reset(%struct.gasket_dev* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %3, align 4
  br label %123

117:                                              ; preds = %106, %85
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = call i32 @gasket_pci_remove_device(%struct.pci_dev* %118)
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = call i32 @pci_disable_device(%struct.pci_dev* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %116, %27, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @gasket_pci_add_device(%struct.pci_dev*, %struct.gasket_dev**) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.gasket_dev*) #1

declare dso_local i32 @apex_reset(%struct.gasket_dev*) #1

declare dso_local i64 @gasket_dev_read_64(%struct.gasket_dev*, i32, i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @gasket_sysfs_create_entries(i32, i32) #1

declare dso_local i32 @gasket_enable_device(%struct.gasket_dev*) #1

declare dso_local i32 @apex_enter_reset(%struct.gasket_dev*) #1

declare dso_local i32 @gasket_pci_remove_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
