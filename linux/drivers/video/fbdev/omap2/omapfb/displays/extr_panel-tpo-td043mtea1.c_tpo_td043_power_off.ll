; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i64, i32, i32, i32 }

@TPO_R03_VAL_STANDBY = common dso_local global i32 0, align 4
@TPO_R03_EN_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_drv_data*)* @tpo_td043_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpo_td043_power_off(%struct.panel_drv_data* %0) #0 {
  %2 = alloca %struct.panel_drv_data*, align 8
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %2, align 8
  %3 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %4 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TPO_R03_VAL_STANDBY, align 4
  %13 = load i32, i32* @TPO_R03_EN_PWM, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @tpo_td043_write(i32 %11, i32 3, i32 %14)
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %17 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %23 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpio_set_value(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %8
  %27 = call i32 @msleep(i32 50)
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %29 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TPO_R03_VAL_STANDBY, align 4
  %32 = call i32 @tpo_td043_write(i32 %30, i32 3, i32 %31)
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %34 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regulator_disable(i32 %35)
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @tpo_td043_write(i32, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
