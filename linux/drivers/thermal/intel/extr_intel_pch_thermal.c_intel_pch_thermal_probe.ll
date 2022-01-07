; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_intel_pch_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_intel_pch_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pch_thermal_device*, i32*)* }
%struct.pch_thermal_device = type { i32, i32, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@board_info = common dso_local global %struct.board_info* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to enable pci device\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request pci region\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to map mem base\0A\00", align 1
@tzd_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to register thermal zone %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pci device failed to probe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @intel_pch_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pch_thermal_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.board_info*, align 8
  %8 = alloca %struct.pch_thermal_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.board_info*, %struct.board_info** @board_info, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.board_info, %struct.board_info* %14, i64 %16
  store %struct.board_info* %17, %struct.board_info** %7, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pch_thermal_device* @devm_kzalloc(i32* %19, i32 24, i32 %20)
  store %struct.pch_thermal_device* %21, %struct.pch_thermal_device** %8, align 8
  %22 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %23 = icmp ne %struct.pch_thermal_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %125

27:                                               ; preds = %2
  %28 = load %struct.board_info*, %struct.board_info** %7, align 8
  %29 = getelementptr inbounds %struct.board_info, %struct.board_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %32 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %31, i32 0, i32 2
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %35 = call i32 @pci_set_drvdata(%struct.pci_dev* %33, %struct.pch_thermal_device* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %38 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %37, i32 0, i32 3
  store %struct.pci_dev* %36, %struct.pci_dev** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_enable_device(%struct.pci_dev* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %125

48:                                               ; preds = %27
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32, i32* @driver_name, align 4
  %51 = call i32 @pci_request_regions(%struct.pci_dev* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %118

58:                                               ; preds = %48
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_ioremap_bar(%struct.pci_dev* %59, i32 0)
  %61 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %62 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %64 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %115

73:                                               ; preds = %58
  %74 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %75 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.pch_thermal_device*, i32*)*, i32 (%struct.pch_thermal_device*, i32*)** %77, align 8
  %79 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %80 = call i32 %78(%struct.pch_thermal_device* %79, i32* %10)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %110

84:                                               ; preds = %73
  %85 = load %struct.board_info*, %struct.board_info** %7, align 8
  %86 = getelementptr inbounds %struct.board_info, %struct.board_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %90 = call i32 @thermal_zone_device_register(i32 %87, i32 %88, i32 0, %struct.pch_thermal_device* %89, i32* @tzd_ops, i32* null, i32 0, i32 0)
  %91 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %92 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %94 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %84
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.board_info*, %struct.board_info** %7, align 8
  %102 = getelementptr inbounds %struct.board_info, %struct.board_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %106 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %9, align 4
  br label %110

109:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %125

110:                                              ; preds = %98, %83
  %111 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %8, align 8
  %112 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @iounmap(i32 %113)
  br label %115

115:                                              ; preds = %110, %67
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = call i32 @pci_release_regions(%struct.pci_dev* %116)
  br label %118

118:                                              ; preds = %115, %54
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = call i32 @pci_disable_device(%struct.pci_dev* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %118, %109, %43, %24
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.pch_thermal_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pch_thermal_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @thermal_zone_device_register(i32, i32, i32, %struct.pch_thermal_device*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
