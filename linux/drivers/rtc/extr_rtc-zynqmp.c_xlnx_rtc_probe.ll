; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-zynqmp.c_xlnx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-zynqmp.c_xlnx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.xlnx_rtc_dev = type { i64, i64, %struct.TYPE_13__*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xlnx_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@xlnx_rtc_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"request irq failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"calibration\00", align 1
@RTC_CALIB_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlnx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xlnx_rtc_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xlnx_rtc_dev* @devm_kzalloc(%struct.TYPE_14__* %8, i32 40, i32 %9)
  store %struct.xlnx_rtc_dev* %10, %struct.xlnx_rtc_dev** %4, align 8
  %11 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %12 = icmp ne %struct.xlnx_rtc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.xlnx_rtc_dev* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__* %21)
  %23 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %23, i32 0, i32 2
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %24, align 8
  %25 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %26 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = call i64 @IS_ERR(%struct.TYPE_13__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.TYPE_13__* %33)
  store i32 %34, i32* %2, align 4
  br label %158

35:                                               ; preds = %16
  %36 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i32* @xlnx_rtc_ops, i32** %39, align 8
  %40 = load i32, i32* @U32_MAX, align 4
  %41 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 0)
  store %struct.resource* %47, %struct.resource** %5, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = call %struct.TYPE_13__* @devm_ioremap_resource(%struct.TYPE_14__* %49, %struct.resource* %50)
  %52 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %53 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %52, i32 0, i32 4
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %53, align 8
  %54 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i64 @IS_ERR(%struct.TYPE_13__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %60, i32 0, i32 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.TYPE_13__* %62)
  store i32 %63, i32* %2, align 4
  br label %158

64:                                               ; preds = %35
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i8* @platform_get_irq_byname(%struct.platform_device* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %71 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %158

79:                                               ; preds = %64
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %83 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @xlnx_rtc_interrupt, align 4
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_name(%struct.TYPE_14__* %88)
  %90 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %91 = call i32 @devm_request_irq(%struct.TYPE_14__* %81, i32 %85, i32 %86, i32 0, i32 %89, %struct.xlnx_rtc_dev* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_14__* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %158

99:                                               ; preds = %79
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call i8* @platform_get_irq_byname(%struct.platform_device* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %104 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %106 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %111 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %158

114:                                              ; preds = %99
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %118 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @xlnx_rtc_interrupt, align 4
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_name(%struct.TYPE_14__* %123)
  %125 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %126 = call i32 @devm_request_irq(%struct.TYPE_14__* %116, i32 %120, i32 %121, i32 0, i32 %124, %struct.xlnx_rtc_dev* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %114
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.TYPE_14__* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %158

134:                                              ; preds = %114
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %140 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %139, i32 0, i32 3
  %141 = call i32 @of_property_read_u32(i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32, i32* @RTC_CALIB_DEF, align 4
  %146 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %147 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %134
  %149 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %150 = call i32 @xlnx_init_rtc(%struct.xlnx_rtc_dev* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @device_init_wakeup(%struct.TYPE_14__* %152, i32 1)
  %154 = load %struct.xlnx_rtc_dev*, %struct.xlnx_rtc_dev** %4, align 8
  %155 = getelementptr inbounds %struct.xlnx_rtc_dev, %struct.xlnx_rtc_dev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = call i32 @rtc_register_device(%struct.TYPE_13__* %156)
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %148, %129, %109, %94, %74, %59, %30, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.xlnx_rtc_dev* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xlnx_rtc_dev*) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.xlnx_rtc_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @xlnx_init_rtc(%struct.xlnx_rtc_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
