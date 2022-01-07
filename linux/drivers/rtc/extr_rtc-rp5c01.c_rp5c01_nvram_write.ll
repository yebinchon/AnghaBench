; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rp5c01.c_rp5c01_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp5c01_priv = type { i32 }

@RP5C01_MODE_TIMER_EN = common dso_local global i32 0, align 4
@RP5C01_MODE_RAM_BLOCK10 = common dso_local global i32 0, align 4
@RP5C01_MODE = common dso_local global i32 0, align 4
@RP5C01_MODE_RAM_BLOCK11 = common dso_local global i32 0, align 4
@RP5C01_MODE_MODE01 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @rp5c01_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp5c01_nvram_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
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

19:                                               ; preds = %55, %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %27 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %28 = load i32, i32* @RP5C01_MODE_RAM_BLOCK10, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RP5C01_MODE, align 4
  %31 = call i32 @rp5c01_write(%struct.rp5c01_priv* %26, i32 %29, i32 %30)
  %32 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @rp5c01_write(%struct.rp5c01_priv* %32, i32 %34, i32 %35)
  %37 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %38 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %39 = load i32, i32* @RP5C01_MODE_RAM_BLOCK11, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RP5C01_MODE, align 4
  %42 = call i32 @rp5c01_write(%struct.rp5c01_priv* %37, i32 %40, i32 %41)
  %43 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 15
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = call i32 @rp5c01_write(%struct.rp5c01_priv* %43, i32 %45, i32 %46)
  %49 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %50 = load i32, i32* @RP5C01_MODE_TIMER_EN, align 4
  %51 = load i32, i32* @RP5C01_MODE_MODE01, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RP5C01_MODE, align 4
  %54 = call i32 @rp5c01_write(%struct.rp5c01_priv* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %22
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %8, align 8
  br label %19

58:                                               ; preds = %19
  %59 = load %struct.rp5c01_priv*, %struct.rp5c01_priv** %9, align 8
  %60 = getelementptr inbounds %struct.rp5c01_priv, %struct.rp5c01_priv* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rp5c01_write(%struct.rp5c01_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
