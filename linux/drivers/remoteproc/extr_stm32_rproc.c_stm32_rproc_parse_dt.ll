; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rproc = type { i32, %struct.device, %struct.stm32_rproc* }
%struct.stm32_rproc = type { i32, %struct.stm32_syscon, %struct.stm32_syscon, i32 }
%struct.stm32_syscon = type { i32, i32, i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@stm32_rproc_wdg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to request wdg irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"wdg irq registered\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get mcu reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"st,syscfg-tz\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get tz syscfg\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to read tzen\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"st,syscfg-holdboot\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get hold boot\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"st,syscfg-pdds\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"failed to get pdds\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"st,auto-boot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_rproc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_parse_dt(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.stm32_rproc*, align 8
  %8 = alloca %struct.stm32_syscon, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.rproc* @platform_get_drvdata(%struct.platform_device* %17)
  store %struct.rproc* %18, %struct.rproc** %6, align 8
  %19 = load %struct.rproc*, %struct.rproc** %6, align 8
  %20 = getelementptr inbounds %struct.rproc, %struct.rproc* %19, i32 0, i32 2
  %21 = load %struct.stm32_rproc*, %struct.stm32_rproc** %20, align 8
  store %struct.stm32_rproc* %21, %struct.stm32_rproc** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %124

31:                                               ; preds = %1
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @stm32_rproc_wdg, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_name(%struct.device* %38)
  %40 = load %struct.rproc*, %struct.rproc** %6, align 8
  %41 = call i32 @devm_request_irq(%struct.device* %35, i32 %36, i32 %37, i32 0, i32 %39, %struct.rproc* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_info(%struct.device* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %31
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @devm_reset_control_get_by_index(%struct.device* %52, i32 0)
  %54 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %55 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %57 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %65 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %124

68:                                               ; preds = %51
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = call i32 @stm32_rproc_get_syscon(%struct.device_node* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.stm32_syscon* %8)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %2, align 4
  br label %124

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %8, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_read(i32 %79, i32 %81, i32* %9)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.rproc*, %struct.rproc** %6, align 8
  %87 = getelementptr inbounds %struct.rproc, %struct.rproc* %86, i32 0, i32 1
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %2, align 4
  br label %124

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %91, %93
  %95 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %96 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %99 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %98, i32 0, i32 2
  %100 = call i32 @stm32_rproc_get_syscon(%struct.device_node* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.stm32_syscon* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %90
  %108 = load %struct.device_node*, %struct.device_node** %5, align 8
  %109 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  %110 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %109, i32 0, i32 1
  %111 = call i32 @stm32_rproc_get_syscon(%struct.device_node* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.stm32_syscon* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_warn(%struct.device* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.device_node*, %struct.device_node** %5, align 8
  %119 = call i32 @of_property_read_bool(%struct.device_node* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %120 = load %struct.rproc*, %struct.rproc** %6, align 8
  %121 = getelementptr inbounds %struct.rproc, %struct.rproc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.rproc*, %struct.rproc** %6, align 8
  %123 = call i32 @stm32_rproc_of_memory_translations(%struct.rproc* %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %117, %103, %85, %73, %61, %44, %28
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.rproc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rproc*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get_by_index(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @stm32_rproc_get_syscon(%struct.device_node*, i8*, %struct.stm32_syscon*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @stm32_rproc_of_memory_translations(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
