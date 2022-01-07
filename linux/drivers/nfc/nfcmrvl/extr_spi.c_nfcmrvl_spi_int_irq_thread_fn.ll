; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_int_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_int_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_spi_drv_data = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@SPI_WAIT_HANDSHAKE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to read spi packet\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"corrupted RX packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nfcmrvl_spi_int_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_spi_int_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfcmrvl_spi_drv_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.nfcmrvl_spi_drv_data*
  store %struct.nfcmrvl_spi_drv_data* %9, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %10 = load i32, i32* @SPI_WAIT_HANDSHAKE, align 4
  %11 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %12 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %11, i32 0, i32 4
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %17 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %16, i32 0, i32 3
  %18 = call i32 @complete(i32* %17)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sk_buff* @nci_spi_read(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %29 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @nfc_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %36 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i64 @nfcmrvl_nci_recv_frame(i32 %37, %struct.sk_buff* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %43 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @nfc_err(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %27, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local %struct.sk_buff* @nci_spi_read(i32) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i64 @nfcmrvl_nci_recv_frame(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
