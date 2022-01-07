; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.uniphier_spi_priv = type { i32 }

@SSI_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @uniphier_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.uniphier_spi_priv*, align 8
  %9 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.uniphier_spi_priv* %11, %struct.uniphier_spi_priv** %8, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = call i32 @uniphier_spi_setup_transfer(%struct.spi_device* %18, %struct.spi_transfer* %19)
  %21 = load i32, i32* @SSI_POLL_TIMEOUT_US, align 4
  %22 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %8, align 8
  %23 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32, i32* @USEC_PER_SEC, align 4
  %27 = load i32, i32* @BITS_PER_BYTE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i64 @DIV_ROUND_UP(i32 %25, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %17
  %36 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %39 = call i32 @uniphier_spi_transfer_one_irq(%struct.spi_master* %36, %struct.spi_device* %37, %struct.spi_transfer* %38)
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %44 = call i32 @uniphier_spi_transfer_one_poll(%struct.spi_master* %41, %struct.spi_device* %42, %struct.spi_transfer* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %35, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @uniphier_spi_setup_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @uniphier_spi_transfer_one_irq(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @uniphier_spi_transfer_one_poll(%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
