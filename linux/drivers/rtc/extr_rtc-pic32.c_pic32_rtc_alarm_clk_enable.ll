; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pic32.c_pic32_rtc_alarm_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pic32.c_pic32_rtc_alarm_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_rtc_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_rtc_dev*, i32)* @pic32_rtc_alarm_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_rtc_alarm_clk_enable(%struct.pic32_rtc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pic32_rtc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pic32_rtc_dev* %0, %struct.pic32_rtc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_enable(i32 %20)
  %22 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %12
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable(i32 %33)
  %35 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.pic32_rtc_dev*, %struct.pic32_rtc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.pic32_rtc_dev, %struct.pic32_rtc_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
