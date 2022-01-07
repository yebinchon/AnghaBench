; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_mute_led_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_led_table = type { i64 }

@TPACPI_LED_MAX = common dso_local global i32 0, align 4
@led_tables = common dso_local global %struct.tp_led_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mute_led_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mute_led_resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tp_led_table*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @TPACPI_LED_MAX, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load %struct.tp_led_table*, %struct.tp_led_table** @led_tables, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %8, i64 %10
  store %struct.tp_led_table* %11, %struct.tp_led_table** %2, align 8
  %12 = load %struct.tp_led_table*, %struct.tp_led_table** %2, align 8
  %13 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load %struct.tp_led_table*, %struct.tp_led_table** %2, align 8
  %18 = load %struct.tp_led_table*, %struct.tp_led_table** %2, align 8
  %19 = getelementptr inbounds %struct.tp_led_table, %struct.tp_led_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mute_led_on_off(%struct.tp_led_table* %17, i64 %20)
  br label %22

22:                                               ; preds = %16, %7
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %3

26:                                               ; preds = %3
  ret void
}

declare dso_local i32 @mute_led_on_off(%struct.tp_led_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
