; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_do_sony_laptop_release_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_do_sony_laptop_release_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.sony_laptop_keypress = type { i32, i32 }

@sony_laptop_input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @do_sony_laptop_release_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sony_laptop_release_key(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sony_laptop_keypress, align 4
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0), i64 %5)
  %7 = bitcast %struct.sony_laptop_keypress* %3 to i8*
  %8 = call i32 @kfifo_out(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2), i8* %7, i32 8)
  %9 = sext i32 %8 to i64
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_report_key(i32 %13, i32 %15, i32 0)
  %17 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @input_sync(i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = call i64 @kfifo_len(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* @jiffies, align 8
  %25 = call i64 @msecs_to_jiffies(i32 10)
  %26 = add nsw i64 %24, %25
  %27 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1), i64 %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0), i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i64 @kfifo_len(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
