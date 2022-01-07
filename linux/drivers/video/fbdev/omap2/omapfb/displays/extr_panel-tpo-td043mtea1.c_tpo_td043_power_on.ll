; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TPO_R02_NCLK_RISING = common dso_local global i32 0, align 4
@TPO_R03_VAL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @tpo_td043_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpo_td043_power_on(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %5 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %6 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %10
  %20 = call i32 @msleep(i32 160)
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gpio_is_valid(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_set_value(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TPO_R02_MODE(i32 %37)
  %39 = load i32, i32* @TPO_R02_NCLK_RISING, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @tpo_td043_write(i32 %34, i32 2, i32 %40)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TPO_R03_VAL_NORMAL, align 4
  %46 = call i32 @tpo_td043_write(i32 %44, i32 3, i32 %45)
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tpo_td043_write(i32 %49, i32 32, i32 240)
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %52 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tpo_td043_write(i32 %53, i32 33, i32 240)
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %56 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %59 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tpo_td043_write_mirror(i32 %57, i32 %60, i32 %63)
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %66 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tpo_td043_write_gamma(i32 %67, i32 %70)
  %72 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %73 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %31, %17, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @tpo_td043_write(i32, i32, i32) #1

declare dso_local i32 @TPO_R02_MODE(i32) #1

declare dso_local i32 @tpo_td043_write_mirror(i32, i32, i32) #1

declare dso_local i32 @tpo_td043_write_gamma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
