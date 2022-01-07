; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_cnt_to_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_cnt_to_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.meson_pwm = type { %struct.meson_pwm_channel* }
%struct.meson_pwm_channel = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @meson_pwm_cnt_to_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_cnt_to_ns(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_pwm*, align 8
  %9 = alloca %struct.meson_pwm_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip* %12)
  store %struct.meson_pwm* %13, %struct.meson_pwm** %8, align 8
  %14 = load %struct.meson_pwm*, %struct.meson_pwm** %8, align 8
  %15 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %14, i32 0, i32 0
  %16 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %15, align 8
  %17 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %18 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %16, i64 %19
  store %struct.meson_pwm_channel* %20, %struct.meson_pwm_channel** %9, align 8
  %21 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %22 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @clk_get_rate(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load i32, i32* @NSEC_PER_SEC, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @div_u64(i32 %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %36 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %34, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
