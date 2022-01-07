; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl4030_pwmled_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-twl-led.c_twl4030_pwmled_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, i32 }

@TWL4030_LED_MAX = common dso_local global i32 0, align 4
@__const.twl4030_pwmled_config.pwm_config = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@TWL4030_PWMA_REG = common dso_local global i32 0, align 4
@TWL4030_MODULE_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Failed to configure PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @twl4030_pwmled_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_pwmled_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @TWL4030_LED_MAX, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %15, i32 %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.twl4030_pwmled_config.pwm_config to i8*), i64 8, i1 false)
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 2, i32* %9, align 4
  br label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @TWL4030_LED_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* @TWL4030_PWMA_REG, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @twl_i2c_write(i32 %38, i32* %39, i32 %40, i32 2)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %46 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %49 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %44, %29
  %53 = load i32, i32* %12, align 4
  ret i32 %53
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @twl_i2c_write(i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
