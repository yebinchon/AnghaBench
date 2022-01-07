; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_set_up_therm_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_set_up_therm_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIN_SENSOR0_CODE = common dso_local global i32 0, align 4
@SKIN_SENSOR1_CODE = common dso_local global i32 0, align 4
@SYS_SENSOR_CODE = common dso_local global i32 0, align 4
@MSIC_DIE_SENSOR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @set_up_therm_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_therm_channel(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @SKIN_SENSOR0_CODE, align 4
  %7 = call i32 @intel_msic_reg_write(i64 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i32, i32* @SKIN_SENSOR1_CODE, align 4
  %16 = call i32 @intel_msic_reg_write(i64 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* @SYS_SENSOR_CODE, align 4
  %25 = call i32 @intel_msic_reg_write(i64 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 3
  %33 = load i32, i32* @MSIC_DIE_SENSOR_CODE, align 4
  %34 = or i32 %33, 16
  %35 = call i32 @intel_msic_reg_write(i64 %32, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %30
  %41 = call i32 @configure_adc(i32 1)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %28, %19, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @intel_msic_reg_write(i64, i32) #1

declare dso_local i32 @configure_adc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
