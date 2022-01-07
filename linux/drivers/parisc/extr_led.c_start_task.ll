; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_led.c_start_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_led.c_start_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_type = common dso_local global i64 0, align 8
@LED_HASLCD = common dso_local global i64 0, align 8
@lcd_text_default = common dso_local global i32 0, align 4
@lcd_no_led_support = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"led_wq\00", align 1
@led_wq = common dso_local global i32 0, align 4
@led_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_task() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @led_type, align 8
  %3 = load i64, i64* @LED_HASLCD, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @lcd_text_default, align 4
  %7 = call i32 @lcd_print(i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @lcd_no_led_support, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

12:                                               ; preds = %8
  %13 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* @led_wq, align 4
  %14 = load i32, i32* @led_wq, align 4
  %15 = call i32 @queue_delayed_work(i32 %14, i32* @led_task, i32 0)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @lcd_print(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
