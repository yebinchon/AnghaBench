; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pwm_sifive_ddata = type { i32, %struct.TYPE_3__, i32, %struct.pwm_chip, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pwm_chip = type { i32, i32, i32, i32, i32*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pwm_sifive_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to find controller clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to enable clock for pwm: %d\0A\00", align 1
@pwm_sifive_clock_notifier = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to register clock notifier: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot register PWM: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"SiFive PWM chip registered %d PWMs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_sifive_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_sifive_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_sifive_ddata*, align 8
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pwm_sifive_ddata* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.pwm_sifive_ddata* %13, %struct.pwm_sifive_ddata** %5, align 8
  %14 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %15 = icmp ne %struct.pwm_sifive_ddata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %143

19:                                               ; preds = %1
  %20 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %21 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %24 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %23, i32 0, i32 3
  store %struct.pwm_chip* %24, %struct.pwm_chip** %6, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %27 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %29 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %28, i32 0, i32 4
  store i32* @pwm_sifive_ops, i32** %29, align 8
  %30 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %31 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %32 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %34 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %33, i32 0, i32 0
  store i32 3, i32* %34, align 8
  %35 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %36 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %38 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %37, i32 0, i32 2
  store i32 4, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i32 @devm_ioremap_resource(%struct.device* %42, %struct.resource* %43)
  %45 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %46 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %48 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %19
  %53 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %54 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %143

57:                                               ; preds = %19
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @devm_clk_get(%struct.device* %58, i32* null)
  %60 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %61 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %63 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %57
  %68 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %69 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  %72 = load i32, i32* @EPROBE_DEFER, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %80 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %143

83:                                               ; preds = %57
  %84 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %85 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @clk_prepare_enable(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %143

95:                                               ; preds = %83
  %96 = load i32, i32* @pwm_sifive_clock_notifier, align 4
  %97 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %98 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %101 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %104 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %103, i32 0, i32 1
  %105 = call i32 @clk_notifier_register(i32 %102, %struct.TYPE_3__* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %95
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %137

112:                                              ; preds = %95
  %113 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %114 = call i32 @pwmchip_add(%struct.pwm_chip* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %130

121:                                              ; preds = %112
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.pwm_sifive_ddata* %123)
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %127 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  store i32 0, i32* %2, align 4
  br label %143

130:                                              ; preds = %117
  %131 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %132 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %135 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %134, i32 0, i32 1
  %136 = call i32 @clk_notifier_unregister(i32 %133, %struct.TYPE_3__* %135)
  br label %137

137:                                              ; preds = %130, %108
  %138 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %5, align 8
  %139 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @clk_disable_unprepare(i32 %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %137, %121, %90, %78, %52, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.pwm_sifive_ddata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_notifier_register(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pwmchip_add(%struct.pwm_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_sifive_ddata*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_notifier_unregister(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
