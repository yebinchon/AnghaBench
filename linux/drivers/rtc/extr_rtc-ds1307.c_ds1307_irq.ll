; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1307 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@DS1337_REG_STATUS = common dso_local global i32 0, align 4
@DS1337_BIT_A1I = common dso_local global i32 0, align 4
@DS1337_REG_CONTROL = common dso_local global i32 0, align 4
@DS1337_BIT_A1IE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1307_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds1307*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ds1307*
  store %struct.ds1307* %10, %struct.ds1307** %5, align 8
  %11 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %12 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mutex* %14, %struct.mutex** %6, align 8
  %15 = load %struct.mutex*, %struct.mutex** %6, align 8
  %16 = call i32 @mutex_lock(%struct.mutex* %15)
  %17 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %18 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DS1337_REG_STATUS, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %59

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DS1337_BIT_A1I, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load i32, i32* @DS1337_BIT_A1I, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %36 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DS1337_REG_STATUS, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %42 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %45 = load i32, i32* @DS1337_BIT_A1IE, align 4
  %46 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %59

50:                                               ; preds = %30
  %51 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %52 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* @RTC_AF, align 4
  %55 = load i32, i32* @RTC_IRQF, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @rtc_update_irq(%struct.TYPE_2__* %53, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %50, %25
  br label %59

59:                                               ; preds = %58, %49, %24
  %60 = load %struct.mutex*, %struct.mutex** %6, align 8
  %61 = call i32 @mutex_unlock(%struct.mutex* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
