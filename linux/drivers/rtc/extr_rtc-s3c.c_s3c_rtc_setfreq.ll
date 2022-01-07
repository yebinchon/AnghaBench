; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_rtc*, i32)* @s3c_rtc_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_setfreq(%struct.s3c_rtc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_rtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_rtc* %0, %struct.s3c_rtc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @is_power_of_2(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %15 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %22 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %25 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.s3c_rtc*, i32)**
  %29 = load i32 (%struct.s3c_rtc*, i32)*, i32 (%struct.s3c_rtc*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.s3c_rtc*, i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.s3c_rtc*, i32)**
  %37 = load i32 (%struct.s3c_rtc*, i32)*, i32 (%struct.s3c_rtc*, i32)** %36, align 8
  %38 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %37(%struct.s3c_rtc* %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %20
  %42 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %43 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.s3c_rtc*, %struct.s3c_rtc** %4, align 8
  %46 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %18, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
