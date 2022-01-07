; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SDIO_CCCR_IENx = common dso_local global i32 0, align 4
@cw1200_gpio_hardirq = common dso_local global i32 0, align 4
@cw1200_gpio_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cw1200_wlan_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbus_priv*)* @cw1200_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_request_irq(%struct.hwbus_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwbus_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %3, align 8
  %6 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %10 = call i32 @sdio_f0_readb(%struct.TYPE_5__* %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = call i32 @BIT(i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %32 = call i32 @sdio_f0_writeb(%struct.TYPE_5__* %29, i32 %30, i32 %31, i32* %4)
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  br label %66

37:                                               ; preds = %15
  %38 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %39 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @enable_irq_wake(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %66

48:                                               ; preds = %37
  %49 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %50 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @cw1200_gpio_hardirq, align 4
  %55 = load i32, i32* @cw1200_gpio_irq, align 4
  %56 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %57 = load i32, i32* @IRQF_ONESHOT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %60 = call i32 @request_threaded_irq(i32 %53, i32 %54, i32 %55, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hwbus_priv* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %66

65:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %68

66:                                               ; preds = %64, %47, %36, %14
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sdio_f0_readb(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sdio_f0_writeb(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.hwbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
