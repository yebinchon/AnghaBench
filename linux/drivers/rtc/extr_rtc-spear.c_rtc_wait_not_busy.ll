; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_rtc_wait_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_rtc_wait_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_rtc_config = type { i32, i64 }

@STATUS_REG = common dso_local global i64 0, align 8
@STATUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spear_rtc_config*)* @rtc_wait_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_wait_not_busy(%struct.spear_rtc_config* %0) #0 {
  %2 = alloca %struct.spear_rtc_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.spear_rtc_config* %0, %struct.spear_rtc_config** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 80
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %2, align 8
  %11 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %2, align 8
  %15 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATUS_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %2, align 8
  %21 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @STATUS_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  br label %34

29:                                               ; preds = %9
  %30 = call i32 @msleep(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %28, %6
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
