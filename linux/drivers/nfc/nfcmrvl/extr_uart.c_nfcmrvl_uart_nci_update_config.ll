; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_uart_nci_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_uart_nci_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.nci_uart* }
%struct.nci_uart = type { i32 }
%struct.nfcmrvl_fw_uart_config = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfcmrvl_private*, i8*)* @nfcmrvl_uart_nci_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcmrvl_uart_nci_update_config(%struct.nfcmrvl_private* %0, i8* %1) #0 {
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nci_uart*, align 8
  %6 = alloca %struct.nfcmrvl_fw_uart_config*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %8 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %7, i32 0, i32 0
  %9 = load %struct.nci_uart*, %struct.nci_uart** %8, align 8
  store %struct.nci_uart* %9, %struct.nci_uart** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nfcmrvl_fw_uart_config*
  store %struct.nfcmrvl_fw_uart_config* %11, %struct.nfcmrvl_fw_uart_config** %6, align 8
  %12 = load %struct.nci_uart*, %struct.nci_uart** %5, align 8
  %13 = load %struct.nfcmrvl_fw_uart_config*, %struct.nfcmrvl_fw_uart_config** %6, align 8
  %14 = getelementptr inbounds %struct.nfcmrvl_fw_uart_config, %struct.nfcmrvl_fw_uart_config* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.nfcmrvl_fw_uart_config*, %struct.nfcmrvl_fw_uart_config** %6, align 8
  %18 = getelementptr inbounds %struct.nfcmrvl_fw_uart_config, %struct.nfcmrvl_fw_uart_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nci_uart_set_config(%struct.nci_uart* %12, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @nci_uart_set_config(%struct.nci_uart*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
