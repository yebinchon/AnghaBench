; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }

@AL5_MCU_WAKEUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AL5_MCU_STA = common dso_local global i32 0, align 4
@AL5_MCU_STA_SLEEP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*)* @allegro_mcu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_start(%struct.allegro_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  %7 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %8 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AL5_MCU_WAKEUP, align 4
  %11 = call i32 @BIT(i32 0)
  %12 = call i32 @regmap_write(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i64 @msecs_to_jiffies(i32 100)
  %20 = add i64 %18, %19
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %42, %17
  %22 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %23 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AL5_MCU_STA, align 4
  %26 = call i64 @regmap_read(i32 %24, i32 %25, i32* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AL5_MCU_STA_SLEEP, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ false, %21 ], [ %31, %28 ]
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @time_after(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %34
  %43 = call i32 (...) @cpu_relax()
  br label %21

44:                                               ; preds = %32
  %45 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %46 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AL5_MCU_WAKEUP, align 4
  %49 = call i32 @regmap_write(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %39, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
