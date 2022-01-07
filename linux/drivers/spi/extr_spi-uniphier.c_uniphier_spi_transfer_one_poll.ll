; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.uniphier_spi_priv = type { i64, i64, i64 }

@SSI_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@SSI_SR = common dso_local global i64 0, align 8
@SSI_SR_RNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @uniphier_spi_transfer_one_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_spi_transfer_one_poll(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.uniphier_spi_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.uniphier_spi_priv* %11, %struct.uniphier_spi_priv** %8, align 8
  %12 = load i32, i32* @SSI_POLL_TIMEOUT_US, align 4
  %13 = mul nsw i32 %12, 10
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %16 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %21 = call i32 @uniphier_spi_fill_tx_fifo(%struct.uniphier_spi_priv* %20)
  br label %22

22:                                               ; preds = %54, %19
  %23 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %24 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %27 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %48, %31
  %33 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %34 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSI_SR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = load i32, i32* @SSI_SR_RNE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = icmp ne i32 %43, 0
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i1 [ false, %32 ], [ %45, %42 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @ndelay(i32 100)
  br label %32

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %59

54:                                               ; preds = %50
  %55 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %56 = call i32 @uniphier_spi_recv(%struct.uniphier_spi_priv* %55)
  br label %22

57:                                               ; preds = %22
  br label %14

58:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %64

59:                                               ; preds = %53
  %60 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %61 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %62 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %63 = call i32 @uniphier_spi_transfer_one_irq(%struct.spi_master* %60, %struct.spi_device* %61, %struct.spi_transfer* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @uniphier_spi_fill_tx_fifo(%struct.uniphier_spi_priv*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @uniphier_spi_recv(%struct.uniphier_spi_priv*) #1

declare dso_local i32 @uniphier_spi_transfer_one_irq(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
