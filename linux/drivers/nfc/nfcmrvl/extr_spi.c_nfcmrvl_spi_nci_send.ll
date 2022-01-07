; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_nci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_nci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_spi_drv_data* }
%struct.nfcmrvl_spi_drv_data = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@SPI_WAIT_HANDSHAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi_send failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)* @nfcmrvl_spi_nci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_spi_nci_send(%struct.nfcmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfcmrvl_spi_drv_data*, align 8
  %6 = alloca i32, align 4
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %8 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %7, i32 0, i32 1
  %9 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %8, align 8
  store %struct.nfcmrvl_spi_drv_data* %9, %struct.nfcmrvl_spi_drv_data** %5, align 8
  %10 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %5, align 8
  %11 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %10, i32 0, i32 0
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load i32, i32* @SPI_WAIT_HANDSHAKE, align 4
  %14 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %5, align 8
  %15 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %14, i32 0, i32 2
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_put(%struct.sk_buff* %17, i32 1)
  %19 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %5, align 8
  %20 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %5, align 8
  %23 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @nci_spi_send(i32 %21, i32* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %30 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nfc_err(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nci_spi_send(i32, i32*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
