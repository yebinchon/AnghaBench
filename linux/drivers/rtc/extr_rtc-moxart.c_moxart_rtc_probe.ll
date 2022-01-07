; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-moxart.c_moxart_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-moxart.c_moxart_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.moxart_rtc = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gpio-rtc-data\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid gpio (data): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gpio-rtc-sclk\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid gpio (sclk): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gpio-rtc-reset\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid gpio (reset): %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rtc_data\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"can't get rtc_data gpio\0A\00", align 1
@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"rtc_sclk\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"can't get rtc_sclk gpio\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"rtc_reset\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"can't get rtc_reset gpio\0A\00", align 1
@moxart_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"devm_rtc_device_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @moxart_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.moxart_rtc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.moxart_rtc* @devm_kzalloc(%struct.TYPE_6__* %7, i32 20, i32 %8)
  store %struct.moxart_rtc* %9, %struct.moxart_rtc** %4, align 8
  %10 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %11 = icmp ne %struct.moxart_rtc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %161

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @of_get_named_gpio(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %23 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %25 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_is_valid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %15
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %37 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  br label %161

39:                                               ; preds = %15
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @of_get_named_gpio(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %47 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %49 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpio_is_valid(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %39
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %57 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %61 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %161

63:                                               ; preds = %39
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @of_get_named_gpio(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %71 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_is_valid(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %63
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %81 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %85 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %2, align 4
  br label %161

87:                                               ; preds = %63
  %88 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %89 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %88, i32 0, i32 4
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.moxart_rtc* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %97 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @devm_gpio_request(%struct.TYPE_6__* %95, i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %161

107:                                              ; preds = %87
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %111 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %114 = call i32 @devm_gpio_request_one(%struct.TYPE_6__* %109, i32 %112, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %161

122:                                              ; preds = %107
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %126 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %129 = call i32 @devm_gpio_request_one(%struct.TYPE_6__* %124, i32 %127, i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %161

137:                                              ; preds = %122
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @THIS_MODULE, align 4
  %144 = call i32 @devm_rtc_device_register(%struct.TYPE_6__* %139, i32 %142, i32* @moxart_rtc_ops, i32 %143)
  %145 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %146 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %148 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @IS_ERR(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %137
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %156 = load %struct.moxart_rtc*, %struct.moxart_rtc** %4, align 8
  %157 = getelementptr inbounds %struct.moxart_rtc, %struct.moxart_rtc* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @PTR_ERR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %152, %132, %117, %102, %77, %53, %29, %12
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.moxart_rtc* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.moxart_rtc*) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
