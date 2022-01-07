; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tdo24m.c_tdo24m_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tdo24m.c_tdo24m_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdo24m = type { i32 (%struct.tdo24m*, i32)*, i32 }

@lcd_panel_on = common dso_local global i32 0, align 4
@lcd_panel_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tdo24m*)* @tdo24m_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdo24m_power_on(%struct.tdo24m* %0) #0 {
  %2 = alloca %struct.tdo24m*, align 8
  %3 = alloca i32, align 4
  store %struct.tdo24m* %0, %struct.tdo24m** %2, align 8
  %4 = load %struct.tdo24m*, %struct.tdo24m** %2, align 8
  %5 = load i32, i32* @lcd_panel_on, align 4
  %6 = call i32 @tdo24m_writes(%struct.tdo24m* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.tdo24m*, %struct.tdo24m** %2, align 8
  %12 = load i32, i32* @lcd_panel_reset, align 4
  %13 = call i32 @tdo24m_writes(%struct.tdo24m* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %26

17:                                               ; preds = %10
  %18 = load %struct.tdo24m*, %struct.tdo24m** %2, align 8
  %19 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %18, i32 0, i32 0
  %20 = load i32 (%struct.tdo24m*, i32)*, i32 (%struct.tdo24m*, i32)** %19, align 8
  %21 = load %struct.tdo24m*, %struct.tdo24m** %2, align 8
  %22 = load %struct.tdo24m*, %struct.tdo24m** %2, align 8
  %23 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(%struct.tdo24m* %21, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %16, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @tdo24m_writes(%struct.tdo24m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
