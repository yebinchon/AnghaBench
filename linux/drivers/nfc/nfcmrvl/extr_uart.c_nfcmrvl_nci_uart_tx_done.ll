; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_nci_uart_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_nci_uart_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.nfcmrvl_private = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_uart*)* @nfcmrvl_nci_uart_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcmrvl_nci_uart_tx_done(%struct.nci_uart* %0) #0 {
  %2 = alloca %struct.nci_uart*, align 8
  %3 = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nci_uart* %0, %struct.nci_uart** %2, align 8
  %4 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.nfcmrvl_private*
  store %struct.nfcmrvl_private* %7, %struct.nfcmrvl_private** %3, align 8
  %8 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %9 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %19 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %25 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_10__*, i32)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %34 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %38, align 8
  %40 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %41 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 %39(%struct.TYPE_10__* %42, i32 -1)
  %44 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %45

45:                                               ; preds = %16, %32, %23, %17
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
