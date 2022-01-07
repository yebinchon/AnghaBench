; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp5c01_priv = type { i32 }

@RP5C01_MODE_TIMER_EN = common dso_local global i32 0, align 4
@RP5C01_MODE_RAM_BLOCK10 = common dso_local global i32 0, align 4
@RP5C01_MODE = common dso_local global i32 0, align 4
@RP5C01_MODE_RAM_BLOCK11 = common dso_local global i32 0, align 4
@RP5C01_MODE_MODE01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @rp5c01_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp5c01_nvram_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rp5c01_priv*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.rp5c01_priv*
  store %struct.rp5c01_priv* %13, %struct.rp5c01_priv** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %17 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  br label %19

19:                                               ; preds = %54, %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %24 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %25 = load i32, i32* @RP5C01_MODE_RAM_BLOCK10, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RP5C01_MODE, align 4
  %28 = call i32 @rp5c01_write(%struct.rp5c01_priv* %23, i32 %26, i32 %27)
  %29 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rp5c01_read(%struct.rp5c01_priv* %29, i32 %30)
  %32 = shl i32 %31, 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %34 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %35 = load i32, i32* @RP5C01_MODE_RAM_BLOCK11, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RP5C01_MODE, align 4
  %38 = call i32 @rp5c01_write(%struct.rp5c01_priv* %33, i32 %36, i32 %37)
  %39 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = call i32 @rp5c01_read(%struct.rp5c01_priv* %39, i32 %40)
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %46 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %47 = load i32, i32* @RP5C01_MODE_MODE01, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RP5C01_MODE, align 4
  %50 = call i32 @rp5c01_write(%struct.rp5c01_priv* %45, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %22
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %8, align 8
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %59 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rp5c01_write(%struct.rp5c01_priv*, i32, i32) #1

declare dso_local i32 @rp5c01_read(%struct.rp5c01_priv*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
