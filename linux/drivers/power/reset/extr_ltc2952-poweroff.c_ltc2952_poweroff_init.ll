; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ltc2952_poweroff = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to claim gpio \22watchdog\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to claim gpio \22kill\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to claim gpio \22trigger\22\0A\00", align 1
@ltc2952_poweroff_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ltc2952-poweroff\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"unable to configure the trigger interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"power down trigger input will not be used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltc2952_poweroff_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2952_poweroff_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc2952_poweroff*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.ltc2952_poweroff* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.ltc2952_poweroff* %7, %struct.ltc2952_poweroff** %5, align 8
  %8 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %9 = call i32 @ltc2952_poweroff_default(%struct.ltc2952_poweroff* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %13 = call i8* @devm_gpiod_get(i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %16 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %18 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @IS_ERR(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %24 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %109

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %35 = call i8* @devm_gpiod_get(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %38 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %40 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %46 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %109

53:                                               ; preds = %31
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @GPIOD_IN, align 4
  %57 = call i32* @devm_gpiod_get_optional(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %59 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %61 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %70 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %75 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @gpiod_to_irq(i32* %76)
  %78 = load i32, i32* @ltc2952_poweroff_handler, align 4
  %79 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %80 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %83 = call i64 @devm_request_irq(i32* %73, i32 %77, i32 %78, i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.ltc2952_poweroff* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %71
  %86 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %87 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %97 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @devm_gpiod_put(i32* %95, i32* %98)
  %100 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %101 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %90, %85
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_info(i32* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %106 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %5, align 8
  %107 = call i32 @ltc2952_poweroff_start_wde(%struct.ltc2952_poweroff* %106)
  br label %108

108:                                              ; preds = %102, %71
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %44, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.ltc2952_poweroff* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ltc2952_poweroff_default(%struct.ltc2952_poweroff*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.ltc2952_poweroff*) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_gpiod_put(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ltc2952_poweroff_start_wde(%struct.ltc2952_poweroff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
