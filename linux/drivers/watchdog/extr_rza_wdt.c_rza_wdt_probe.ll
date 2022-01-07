; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rza_wdt = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid clock rate (%ld)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@rza_wdt_ident = common dso_local global i32 0, align 4
@rza_wdt_ops = common dso_local global i32 0, align 4
@CKS_4BIT = common dso_local global i64 0, align 8
@DIVIDER_4BIT = common dso_local global i64 0, align 8
@U8_MAX = common dso_local global i64 0, align 8
@CKS_3BIT = common dso_local global i64 0, align 8
@DIVIDER_3BIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"max hw timeout of %dms\0A\00", align 1
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot register watchdog device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rza_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rza_wdt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rza_wdt* @devm_kzalloc(%struct.device* %10, i32 64, i32 %11)
  store %struct.rza_wdt* %12, %struct.rza_wdt** %5, align 8
  %13 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %14 = icmp ne %struct.rza_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %22 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %24 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %30 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %142

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @devm_clk_get(%struct.device* %34, i32* null)
  %36 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %39 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %45 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %142

48:                                               ; preds = %33
  %49 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %50 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @clk_get_rate(i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %53, 16384
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %142

61:                                               ; preds = %48
  %62 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %63 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  store i32* @rza_wdt_ident, i32** %64, align 8
  %65 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %66 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  store i32* @rza_wdt_ops, i32** %67, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %70 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store %struct.device* %68, %struct.device** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i64 @of_device_get_match_data(%struct.device* %72)
  %74 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %75 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %77 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CKS_4BIT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %61
  %82 = load i64, i64* @DIVIDER_4BIT, align 8
  %83 = load i64, i64* @U8_MAX, align 8
  %84 = mul i64 %82, %83
  %85 = load i64, i64* %6, align 8
  %86 = udiv i64 %84, %85
  %87 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %88 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  br label %115

90:                                               ; preds = %61
  %91 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %92 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CKS_3BIT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load i64, i64* @DIVIDER_3BIT, align 8
  %98 = load i64, i64* %6, align 8
  %99 = udiv i64 %98, %97
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* @U8_MAX, align 8
  %101 = mul i64 1000, %100
  %102 = load i64, i64* %6, align 8
  %103 = udiv i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %106 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %110 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_dbg(%struct.device* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %96, %90
  br label %115

115:                                              ; preds = %114, %81
  %116 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %117 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %120 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %121 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 8
  %123 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %124 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %123, i32 0, i32 1
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @watchdog_init_timeout(%struct.TYPE_4__* %124, i32 0, %struct.device* %125)
  %127 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %128 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %127, i32 0, i32 1
  %129 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %130 = call i32 @watchdog_set_drvdata(%struct.TYPE_4__* %128, %struct.rza_wdt* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load %struct.rza_wdt*, %struct.rza_wdt** %5, align 8
  %133 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %132, i32 0, i32 1
  %134 = call i32 @devm_watchdog_register_device(%struct.device* %131, %struct.TYPE_4__* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %115
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %115
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %55, %43, %28, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.rza_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_4__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_4__*, %struct.rza_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
