; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1343_priv = type { i32, i32, i32 }

@DS1343_STATUS_REG = common dso_local global i32 0, align 4
@DS1343_IRQF0 = common dso_local global i32 0, align 4
@DS1343_CONTROL_REG = common dso_local global i32 0, align 4
@DS1343_A0IE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1343_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds1343_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ds1343_priv*
  store %struct.ds1343_priv* %10, %struct.ds1343_priv** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DS1343_STATUS_REG, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DS1343_IRQF0, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load i32, i32* @DS1343_IRQF0, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DS1343_STATUS_REG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %65

46:                                               ; preds = %27
  %47 = load i32, i32* @DS1343_A0IE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @regmap_write(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %58 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RTC_AF, align 4
  %61 = load i32, i32* @RTC_IRQF, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @rtc_update_irq(i32 %59, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %46, %22
  br label %65

65:                                               ; preds = %64, %45, %21
  %66 = load %struct.ds1343_priv*, %struct.ds1343_priv** %5, align 8
  %67 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
