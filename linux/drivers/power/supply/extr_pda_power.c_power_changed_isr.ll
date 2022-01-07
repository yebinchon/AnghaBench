; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pda_power.c_power_changed_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pda_power.c_power_changed_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pda_psy_ac = common dso_local global i8* null, align 8
@PDA_PSY_TO_CHANGE = common dso_local global i8* null, align 8
@ac_status = common dso_local global i8* null, align 8
@pda_psy_usb = common dso_local global i8* null, align 8
@usb_status = common dso_local global i8* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@charger_work = common dso_local global i32 0, align 4
@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @power_changed_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_changed_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** @pda_psy_ac, align 8
  %8 = icmp eq i8* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** @PDA_PSY_TO_CHANGE, align 8
  store i8* %10, i8** @ac_status, align 8
  br label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** @pda_psy_usb, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i8*, i8** @PDA_PSY_TO_CHANGE, align 8
  store i8* %16, i8** @usb_status, align 8
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %9
  %21 = call i32 @cancel_delayed_work(i32* @charger_work)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = call i32 @schedule_delayed_work(i32* @charger_work, i32 %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
