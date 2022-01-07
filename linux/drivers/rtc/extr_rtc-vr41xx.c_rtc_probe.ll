; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vr41xx.c_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vr41xx.c_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.rtc_device = type { i64, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rtc1_base = common dso_local global i32* null, align 8
@rtc2_base = common dso_local global i32* null, align 8
@vr41xx_rtc_ops = common dso_local global i32 0, align 4
@MAX_PERIODIC_RATE = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@ECMPLREG = common dso_local global i32 0, align 4
@ECMPMREG = common dso_local global i32 0, align 4
@ECMPHREG = common dso_local global i32 0, align 4
@RTCL1LREG = common dso_local global i32 0, align 4
@RTCL1HREG = common dso_local global i32 0, align 4
@aie_irq = common dso_local global i64 0, align 8
@elapsedtime_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"elapsed_time\00", align 1
@pie_irq = common dso_local global i64 0, align 8
@rtclong1_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rtclong1\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Real Time Clock of NEC VR4100 series\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %147

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %4, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %147

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = call i8* @devm_ioremap(i32* %25, i32 %28, i32 %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @rtc1_base, align 8
  %33 = load i32*, i32** @rtc1_base, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %147

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  store %struct.resource* %41, %struct.resource** %4, align 8
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %145

47:                                               ; preds = %38
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = load %struct.resource*, %struct.resource** %4, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %4, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i8* @devm_ioremap(i32* %49, i32 %52, i32 %54)
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** @rtc2_base, align 8
  %57 = load i32*, i32** @rtc2_base, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %145

62:                                               ; preds = %47
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = call %struct.rtc_device* @devm_rtc_allocate_device(i32* %64)
  store %struct.rtc_device* %65, %struct.rtc_device** %5, align 8
  %66 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %67 = call i64 @IS_ERR(%struct.rtc_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %71 = call i32 @PTR_ERR(%struct.rtc_device* %70)
  store i32 %71, i32* %6, align 4
  br label %144

72:                                               ; preds = %62
  %73 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %73, i32 0, i32 2
  store i32* @vr41xx_rtc_ops, i32** %74, align 8
  %75 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %75, i32 0, i32 0
  store i64 8589934591, i64* %76, align 8
  %77 = load i32, i32* @MAX_PERIODIC_RATE, align 4
  %78 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %81 = load i32, i32* @ECMPLREG, align 4
  %82 = call i32 @rtc1_write(i32 %81, i32 0)
  %83 = load i32, i32* @ECMPMREG, align 4
  %84 = call i32 @rtc1_write(i32 %83, i32 0)
  %85 = load i32, i32* @ECMPHREG, align 4
  %86 = call i32 @rtc1_write(i32 %85, i32 0)
  %87 = load i32, i32* @RTCL1LREG, align 4
  %88 = call i32 @rtc1_write(i32 %87, i32 0)
  %89 = load i32, i32* @RTCL1HREG, align 4
  %90 = call i32 @rtc1_write(i32 %89, i32 0)
  %91 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i64 @platform_get_irq(%struct.platform_device* %92, i32 0)
  store i64 %93, i64* @aie_irq, align 8
  %94 = load i64, i64* @aie_irq, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %72
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %144

99:                                               ; preds = %72
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 1
  %102 = load i64, i64* @aie_irq, align 8
  %103 = load i32, i32* @elapsedtime_interrupt, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = call i32 @devm_request_irq(i32* %101, i64 %102, i32 %103, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.platform_device* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %144

109:                                              ; preds = %99
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = call i64 @platform_get_irq(%struct.platform_device* %110, i32 1)
  store i64 %111, i64* @pie_irq, align 8
  %112 = load i64, i64* @pie_irq, align 8
  %113 = icmp sle i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EBUSY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %144

117:                                              ; preds = %109
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 1
  %120 = load i64, i64* @pie_irq, align 8
  %121 = load i32, i32* @rtclong1_interrupt, align 4
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = call i32 @devm_request_irq(i32* %119, i64 %120, i32 %121, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.platform_device* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %144

127:                                              ; preds = %117
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.rtc_device* %129)
  %131 = load i64, i64* @aie_irq, align 8
  %132 = call i32 @disable_irq(i64 %131)
  %133 = load i64, i64* @pie_irq, align 8
  %134 = call i32 @disable_irq(i64 %133)
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 1
  %137 = call i32 @dev_info(i32* %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %139 = call i32 @rtc_register_device(%struct.rtc_device* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %144

143:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %147

144:                                              ; preds = %142, %126, %114, %108, %96, %69
  store i32* null, i32** @rtc2_base, align 8
  br label %145

145:                                              ; preds = %144, %59, %44
  store i32* null, i32** @rtc1_base, align 8
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %143, %35, %20, %11
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc1_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i8*, %struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
