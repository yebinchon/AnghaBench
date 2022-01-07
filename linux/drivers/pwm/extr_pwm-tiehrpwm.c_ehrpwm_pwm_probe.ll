; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiehrpwm.c_ehrpwm_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ehrpwm_pwm_chip = type { %struct.clk*, %struct.TYPE_8__, %struct.clk*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ti,am33xx-ecap\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Binding is obsolete.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ehrpwm_pwm_ops = common dso_local global i32 0, align 4
@of_pwm_xlate_with_flags = common dso_local global i32 0, align 4
@NUM_PWM_CHANNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"tbclk\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to get tbclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"clk_prepare() failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehrpwm_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehrpwm_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ehrpwm_pwm_chip*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ehrpwm_pwm_chip* @devm_kzalloc(%struct.TYPE_9__* %14, i32 56, i32 %15)
  store %struct.ehrpwm_pwm_chip* %16, %struct.ehrpwm_pwm_chip** %5, align 8
  %17 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %18 = icmp ne %struct.ehrpwm_pwm_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %169

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i8* @devm_clk_get(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.clk*
  store %struct.clk* %26, %struct.clk** %7, align 8
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = call i64 @IS_ERR(%struct.clk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call i64 @of_device_is_compatible(%struct.device_node* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = call i8* @devm_clk_get(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = bitcast i8* %42 to %struct.clk*
  store %struct.clk* %43, %struct.clk** %7, align 8
  br label %44

44:                                               ; preds = %34, %30
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.clk*, %struct.clk** %7, align 8
  %47 = call i64 @IS_ERR(%struct.clk* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.clk*, %struct.clk** %7, align 8
  %54 = call i32 @PTR_ERR(%struct.clk* %53)
  store i32 %54, i32* %2, align 4
  br label %169

55:                                               ; preds = %45
  %56 = load %struct.clk*, %struct.clk** %7, align 8
  %57 = call i32 @clk_get_rate(%struct.clk* %56)
  %58 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %59 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %61 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %169

70:                                               ; preds = %55
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %74 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %77 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  store i32* @ehrpwm_pwm_ops, i32** %78, align 8
  %79 = load i32, i32* @of_pwm_xlate_with_flags, align 4
  %80 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %81 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %84 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 3, i32* %85, align 8
  %86 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %87 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 -1, i32* %88, align 4
  %89 = load i32, i32* @NUM_PWM_CHANNEL, align 4
  %90 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %91 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = call %struct.resource* @platform_get_resource(%struct.platform_device* %93, i32 %94, i32 0)
  store %struct.resource* %95, %struct.resource** %6, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.resource*, %struct.resource** %6, align 8
  %99 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_9__* %97, %struct.resource* %98)
  %100 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %101 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %100, i32 0, i32 2
  store %struct.clk* %99, %struct.clk** %101, align 8
  %102 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %103 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %102, i32 0, i32 2
  %104 = load %struct.clk*, %struct.clk** %103, align 8
  %105 = call i64 @IS_ERR(%struct.clk* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %70
  %108 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %109 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %108, i32 0, i32 2
  %110 = load %struct.clk*, %struct.clk** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.clk* %110)
  store i32 %111, i32* %2, align 4
  br label %169

112:                                              ; preds = %70
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i8* @devm_clk_get(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %116 = bitcast i8* %115 to %struct.clk*
  %117 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %118 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %117, i32 0, i32 0
  store %struct.clk* %116, %struct.clk** %118, align 8
  %119 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %120 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %119, i32 0, i32 0
  %121 = load %struct.clk*, %struct.clk** %120, align 8
  %122 = call i64 @IS_ERR(%struct.clk* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %129 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %128, i32 0, i32 0
  %130 = load %struct.clk*, %struct.clk** %129, align 8
  %131 = call i32 @PTR_ERR(%struct.clk* %130)
  store i32 %131, i32* %2, align 4
  br label %169

132:                                              ; preds = %112
  %133 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %134 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %133, i32 0, i32 0
  %135 = load %struct.clk*, %struct.clk** %134, align 8
  %136 = call i32 @clk_prepare(%struct.clk* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %169

145:                                              ; preds = %132
  %146 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %147 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %146, i32 0, i32 1
  %148 = call i32 @pwmchip_add(%struct.TYPE_8__* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  br label %163

156:                                              ; preds = %145
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.ehrpwm_pwm_chip* %158)
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %161)
  store i32 0, i32* %2, align 4
  br label %169

163:                                              ; preds = %151
  %164 = load %struct.ehrpwm_pwm_chip*, %struct.ehrpwm_pwm_chip** %5, align 8
  %165 = getelementptr inbounds %struct.ehrpwm_pwm_chip, %struct.ehrpwm_pwm_chip* %164, i32 0, i32 0
  %166 = load %struct.clk*, %struct.clk** %165, align 8
  %167 = call i32 @clk_unprepare(%struct.clk* %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %163, %156, %139, %124, %107, %64, %49, %19
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.ehrpwm_pwm_chip* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @clk_prepare(%struct.clk*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ehrpwm_pwm_chip*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @clk_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
