; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm80x.c_pm80x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.pm80x_chip = type { i32, i32 }
%struct.pm80x_rtc_pdata = type { i32 }
%struct.pm80x_rtc_info = type { i64, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, %struct.pm80x_chip* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32* }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [45 x i8] c"pm80x-rtc requires platform data or of_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"no regmap!\0A\00", align 1
@rtc_update_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@pm80x_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@PM800_RTC_CONTROL = common dso_local global i32 0, align 4
@PM800_RTC1_USE_XO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm80x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_rtc_pdata*, align 8
  %6 = alloca %struct.pm80x_rtc_info*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pm80x_chip* @dev_get_drvdata(i32 %12)
  store %struct.pm80x_chip* %13, %struct.pm80x_chip** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.pm80x_rtc_pdata* @dev_get_platdata(%struct.TYPE_14__* %15)
  store %struct.pm80x_rtc_pdata* %16, %struct.pm80x_rtc_pdata** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %7, align 8
  %21 = load %struct.pm80x_rtc_pdata*, %struct.pm80x_rtc_pdata** %5, align 8
  %22 = icmp ne %struct.pm80x_rtc_pdata* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %182

32:                                               ; preds = %23, %1
  %33 = load %struct.pm80x_rtc_pdata*, %struct.pm80x_rtc_pdata** %5, align 8
  %34 = icmp ne %struct.pm80x_rtc_pdata* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.TYPE_14__* %37, i32 4, i32 %38)
  %40 = bitcast i8* %39 to %struct.pm80x_rtc_pdata*
  store %struct.pm80x_rtc_pdata* %40, %struct.pm80x_rtc_pdata** %5, align 8
  %41 = load %struct.pm80x_rtc_pdata*, %struct.pm80x_rtc_pdata** %5, align 8
  %42 = icmp ne %struct.pm80x_rtc_pdata* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %182

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @devm_kzalloc(%struct.TYPE_14__* %52, i32 40, i32 %53)
  %55 = bitcast i8* %54 to %struct.pm80x_rtc_info*
  store %struct.pm80x_rtc_info* %55, %struct.pm80x_rtc_info** %6, align 8
  %56 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %57 = icmp ne %struct.pm80x_rtc_info* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %182

61:                                               ; preds = %50
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i64 @platform_get_irq(%struct.platform_device* %62, i32 0)
  %64 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %65 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %67 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %180

73:                                               ; preds = %61
  %74 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %75 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %76 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %75, i32 0, i32 4
  store %struct.pm80x_chip* %74, %struct.pm80x_chip** %76, align 8
  %77 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %78 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %81 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %83 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %180

92:                                               ; preds = %73
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %96 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %95, i32 0, i32 3
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %100 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %98, %struct.pm80x_rtc_info* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__* %102)
  %104 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %105 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %104, i32 0, i32 1
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %105, align 8
  %106 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %107 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = call i64 @IS_ERR(%struct.TYPE_13__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %92
  %112 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %113 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.TYPE_13__* %114)
  store i32 %115, i32* %2, align 4
  br label %182

116:                                              ; preds = %92
  %117 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %118 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %119 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @rtc_update_handler, align 4
  %122 = load i32, i32* @IRQF_ONESHOT, align 4
  %123 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %124 = call i32 @pm80x_request_irq(%struct.pm80x_chip* %117, i64 %120, i32 %121, i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.pm80x_rtc_info* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %129 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_14__*
  %133 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %134 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %135, i32 %136)
  br label %180

138:                                              ; preds = %116
  %139 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %140 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  store i32* @pm80x_rtc_ops, i32** %142, align 8
  %143 = load i32, i32* @U32_MAX, align 4
  %144 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %145 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 8
  %148 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %149 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = call i32 @rtc_register_device(%struct.TYPE_13__* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %138
  br label %173

155:                                              ; preds = %138
  %156 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %157 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PM800_RTC_CONTROL, align 4
  %160 = load i32, i32* @PM800_RTC1_USE_XO, align 4
  %161 = load i32, i32* @PM800_RTC1_USE_XO, align 4
  %162 = call i32 @regmap_update_bits(i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.pm80x_rtc_pdata*, %struct.pm80x_rtc_pdata** %5, align 8
  %164 = getelementptr inbounds %struct.pm80x_rtc_pdata, %struct.pm80x_rtc_pdata* %163, i32 0, i32 0
  %165 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %166 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %165, i32 0, i32 1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32* %164, i32** %169, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @device_init_wakeup(%struct.TYPE_14__* %171, i32 1)
  store i32 0, i32* %2, align 4
  br label %182

173:                                              ; preds = %154
  %174 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %175 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %176 = getelementptr inbounds %struct.pm80x_rtc_info, %struct.pm80x_rtc_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.pm80x_rtc_info*, %struct.pm80x_rtc_info** %6, align 8
  %179 = call i32 @pm80x_free_irq(%struct.pm80x_chip* %174, i64 %177, %struct.pm80x_rtc_info* %178)
  br label %180

180:                                              ; preds = %173, %127, %86, %70
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %155, %111, %58, %43, %26
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.pm80x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm80x_rtc_pdata* @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.pm80x_rtc_info*) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @pm80x_request_irq(%struct.pm80x_chip*, i64, i32, i32, i8*, %struct.pm80x_rtc_info*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pm80x_free_irq(%struct.pm80x_chip*, i64, %struct.pm80x_rtc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
