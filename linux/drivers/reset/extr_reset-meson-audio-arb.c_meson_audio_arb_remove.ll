; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-meson-audio-arb.c_meson_audio_arb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-meson-audio-arb.c_meson_audio_arb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_audio_arb_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_audio_arb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_audio_arb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.meson_audio_arb_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.meson_audio_arb_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.meson_audio_arb_data* %5, %struct.meson_audio_arb_data** %3, align 8
  %6 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %3, align 8
  %7 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %3, align 8
  %10 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @writel(i32 0, i32 %11)
  %13 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %3, align 8
  %14 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.meson_audio_arb_data*, %struct.meson_audio_arb_data** %3, align 8
  %17 = getelementptr inbounds %struct.meson_audio_arb_data, %struct.meson_audio_arb_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  ret i32 0
}

declare dso_local %struct.meson_audio_arb_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
