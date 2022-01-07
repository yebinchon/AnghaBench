; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pwm_channel_data = type { i32, i32, i32, i64 }
%struct.meson_pwm = type { i32, i64 }
%struct.pwm_device = type { i64 }
%struct.meson_pwm_channel = type { i32, i32, i32 }

@meson_pwm_per_channel_data = common dso_local global %struct.meson_pwm_channel_data* null, align 8
@REG_MISC_AB = common dso_local global i64 0, align 8
@MISC_CLK_DIV_MASK = common dso_local global i32 0, align 4
@PWM_HIGH_MASK = common dso_local global i32 0, align 4
@PWM_LOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_pwm*, %struct.pwm_device*)* @meson_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_pwm_enable(%struct.meson_pwm* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.meson_pwm*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.meson_pwm_channel*, align 8
  %6 = alloca %struct.meson_pwm_channel_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.meson_pwm* %0, %struct.meson_pwm** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %10 = call %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device* %9)
  store %struct.meson_pwm_channel* %10, %struct.meson_pwm_channel** %5, align 8
  %11 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** @meson_pwm_per_channel_data, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %11, i64 %14
  store %struct.meson_pwm_channel_data* %15, %struct.meson_pwm_channel_data** %6, align 8
  %16 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %17 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %21 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_MISC_AB, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @MISC_CLK_DIV_MASK, align 4
  %27 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %6, align 8
  %28 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %26, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %5, align 8
  %35 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %6, align 8
  %38 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %6, align 8
  %44 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %50 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_MISC_AB, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* @PWM_HIGH_MASK, align 4
  %56 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %5, align 8
  %57 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FIELD_PREP(i32 %55, i32 %58)
  %60 = load i32, i32* @PWM_LOW_MASK, align 4
  %61 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %5, align 8
  %62 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FIELD_PREP(i32 %60, i32 %63)
  %65 = or i32 %59, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %68 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %6, align 8
  %71 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @writel(i32 %66, i64 %73)
  %75 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %76 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_MISC_AB, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %6, align 8
  %82 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %88 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REG_MISC_AB, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %94 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %93, i32 0, i32 0
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  ret void
}

declare dso_local %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
