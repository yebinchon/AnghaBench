; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_irq_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_irq_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"SW IRQ unsubscribe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbus_priv*)* @cw1200_sdio_irq_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_sdio_irq_unsubscribe(%struct.hwbus_priv* %0) #0 {
  %2 = alloca %struct.hwbus_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %13 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @disable_irq_wake(i64 %16)
  %18 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %19 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %24 = call i32 @free_irq(i64 %22, %struct.hwbus_priv* %23)
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %27 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sdio_claim_host(i32 %28)
  %30 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %31 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sdio_release_irq(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %35 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sdio_release_host(i32 %36)
  br label %38

38:                                               ; preds = %25, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @disable_irq_wake(i64) #1

declare dso_local i32 @free_irq(i64, %struct.hwbus_priv*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
