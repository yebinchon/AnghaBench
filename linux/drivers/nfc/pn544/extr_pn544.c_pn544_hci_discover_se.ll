; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_discover_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_discover_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i32* }

@PN544_SYS_MGMT_GATE = common dso_local global i32 0, align 4
@PN544_TEST_SWP = common dso_local global i32 0, align 4
@NFC_SE_UICC = common dso_local global i32 0, align 4
@PN544_NFC_WI_MGMT_GATE = common dso_local global i32 0, align 4
@PN544_HCI_EVT_SWITCH_MODE = common dso_local global i32 0, align 4
@NFC_SE_EMBEDDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @pn544_hci_discover_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_discover_se(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 1, i32* %4, align 4
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %8 = load i32, i32* @PN544_SYS_MGMT_GATE, align 4
  %9 = load i32, i32* @PN544_TEST_SWP, align 4
  %10 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %7, i32 %8, i32 %9, i32* null, i32 0, %struct.sk_buff** %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %3, align 8
  %31 = trunc i64 %29 to i32
  %32 = load i32, i32* @NFC_SE_UICC, align 4
  %33 = call i32 @nfc_add_se(i32 %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %18, %13
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %39 = load i32, i32* @PN544_NFC_WI_MGMT_GATE, align 4
  %40 = load i32, i32* @PN544_HCI_EVT_SWITCH_MODE, align 4
  %41 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %38, i32 %39, i32 %40, i32* %4, i32 1)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %46 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  %50 = trunc i64 %48 to i32
  %51 = load i32, i32* @NFC_SE_EMBEDDED, align 4
  %52 = call i32 @nfc_add_se(i32 %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i32*, i32, %struct.sk_buff**) #1

declare dso_local i32 @nfc_add_se(i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
