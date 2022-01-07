; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2952_poweroff = type { i32, i32, i32, i32, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltc2952_poweroff_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2952_poweroff_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ltc2952_poweroff*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.ltc2952_poweroff*
  store %struct.ltc2952_poweroff* %8, %struct.ltc2952_poweroff** %6, align 8
  %9 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %10 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %15 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %14, i32 0, i32 3
  %16 = call i64 @hrtimer_active(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %22 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @gpiod_get_value(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %28 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %27, i32 0, i32 0
  %29 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %30 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %33 = call i32 @hrtimer_start(i32* %28, i32 %31, i32 %32)
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %6, align 8
  %36 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %35, i32 0, i32 0
  %37 = call i32 @hrtimer_cancel(i32* %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @hrtimer_active(i32*) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
