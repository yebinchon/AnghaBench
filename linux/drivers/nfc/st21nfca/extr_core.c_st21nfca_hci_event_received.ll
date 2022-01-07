; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"hci event: %d gate: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* @st21nfca_hci_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_event_received(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %12 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64, i64* %10, align 8
  switch i64 %29, label %56 [
    i64 132, label %30
    i64 128, label %35
    i64 129, label %40
    i64 130, label %46
    i64 131, label %51
  ]

30:                                               ; preds = %4
  %31 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @st21nfca_admin_event_received(%struct.nfc_hci_dev* %31, i64 %32, %struct.sk_buff* %33)
  store i32 %34, i32* %5, align 4
  br label %57

35:                                               ; preds = %4
  %36 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call i32 @st21nfca_dep_event_received(%struct.nfc_hci_dev* %36, i64 %37, %struct.sk_buff* %38)
  store i32 %39, i32* %5, align 4
  br label %57

40:                                               ; preds = %4
  %41 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = call i32 @st21nfca_connectivity_event_received(%struct.nfc_hci_dev* %41, i64 %42, i64 %43, %struct.sk_buff* %44)
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %4
  %47 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @st21nfca_apdu_reader_event_received(%struct.nfc_hci_dev* %47, i64 %48, %struct.sk_buff* %49)
  store i32 %50, i32* %5, align 4
  br label %57

51:                                               ; preds = %4
  %52 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @st21nfca_hci_loopback_event_received(%struct.nfc_hci_dev* %52, i64 %53, %struct.sk_buff* %54)
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %51, %46, %40, %35, %30
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @st21nfca_admin_event_received(%struct.nfc_hci_dev*, i64, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_dep_event_received(%struct.nfc_hci_dev*, i64, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_connectivity_event_received(%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_apdu_reader_event_received(%struct.nfc_hci_dev*, i64, %struct.sk_buff*) #1

declare dso_local i32 @st21nfca_hci_loopback_event_received(%struct.nfc_hci_dev*, i64, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
