; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.uniphier_spi_priv = type { i32, i32 }

@SSI_IE_RCIE = common dso_local global i32 0, align 4
@SSI_IE_RORIE = common dso_local global i32 0, align 4
@SSI_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"transfer timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @uniphier_spi_transfer_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_spi_transfer_one_irq(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.uniphier_spi_priv*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.uniphier_spi_priv* %12, %struct.uniphier_spi_priv** %8, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %14 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %18 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %17, i32 0, i32 1
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %21 = call i32 @uniphier_spi_fill_tx_fifo(%struct.uniphier_spi_priv* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %23 = load i32, i32* @SSI_IE_RCIE, align 4
  %24 = load i32, i32* @SSI_IE_RORIE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @uniphier_spi_irq_enable(%struct.spi_device* %22, i32 %25)
  %27 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %28 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %27, i32 0, i32 1
  %29 = load i32, i32* @SSI_TIMEOUT_MS, align 4
  %30 = call i32 @msecs_to_jiffies(i32 %29)
  %31 = call i64 @wait_for_completion_timeout(i32* %28, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %33 = load i32, i32* @SSI_IE_RCIE, align 4
  %34 = load i32, i32* @SSI_IE_RORIE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @uniphier_spi_irq_disable(%struct.spi_device* %32, i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %3
  %45 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %46 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @uniphier_spi_fill_tx_fifo(%struct.uniphier_spi_priv*) #1

declare dso_local i32 @uniphier_spi_irq_enable(%struct.spi_device*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @uniphier_spi_irq_disable(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
