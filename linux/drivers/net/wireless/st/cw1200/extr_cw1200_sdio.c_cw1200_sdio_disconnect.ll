; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.hwbus_priv = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @cw1200_sdio_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_sdio_disconnect(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.hwbus_priv*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %5 = call %struct.hwbus_priv* @sdio_get_drvdata(%struct.sdio_func* %4)
  store %struct.hwbus_priv* %5, %struct.hwbus_priv** %3, align 8
  %6 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %7 = icmp ne %struct.hwbus_priv* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %10 = call i32 @cw1200_sdio_irq_unsubscribe(%struct.hwbus_priv* %9)
  %11 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @cw1200_core_release(i32* %18)
  %20 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %21 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %8
  %23 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %24 = call i32 @sdio_claim_host(%struct.sdio_func* %23)
  %25 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %26 = call i32 @sdio_disable_func(%struct.sdio_func* %25)
  %27 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %28 = call i32 @sdio_release_host(%struct.sdio_func* %27)
  %29 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %30 = call i32 @sdio_set_drvdata(%struct.sdio_func* %29, i32* null)
  %31 = load %struct.hwbus_priv*, %struct.hwbus_priv** %3, align 8
  %32 = call i32 @kfree(%struct.hwbus_priv* %31)
  br label %33

33:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.hwbus_priv* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @cw1200_sdio_irq_unsubscribe(%struct.hwbus_priv*) #1

declare dso_local i32 @cw1200_core_release(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, i32*) #1

declare dso_local i32 @kfree(%struct.hwbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
