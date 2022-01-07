; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_irq_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_irq_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SW IRQ subscribe\0A\00", align 1
@cw1200_spi_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cw1200_wlan_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbus_priv*)* @cw1200_spi_irq_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_spi_irq_subscribe(%struct.hwbus_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwbus_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %3, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @cw1200_spi_irq_handler, align 4
  %12 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %13 = load i32, i32* @IRQF_ONESHOT, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %16 = call i32 @request_threaded_irq(i32 %10, i32* null, i32 %11, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.hwbus_priv* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %25 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @enable_irq_wake(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %45

35:                                               ; preds = %33
  %36 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %37 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.hwbus_priv* %41)
  br label %43

43:                                               ; preds = %35, %22
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.hwbus_priv*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.hwbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
