; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_dep_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_dep_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ST21NFCA_NFCIP1_DEP_RES = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_RES = common dso_local global i32 0, align 4
@ST21NFCA_RF_CARD_F_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SEND_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_tm_send_dep_res(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %8 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %7)
  store %struct.st21nfca_hci_info* %8, %struct.st21nfca_hci_info** %6, align 8
  %9 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %6, align 8
  %10 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @skb_push(%struct.sk_buff* %13, i32 1)
  %15 = inttoptr i64 %14 to i32*
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @ST21NFCA_NFCIP1_DEP_RES, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @skb_push(%struct.sk_buff* %17, i32 1)
  %19 = inttoptr i64 %18 to i32*
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ST21NFCA_NFCIP1_RES, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_push(%struct.sk_buff* %21, i32 1)
  %23 = inttoptr i64 %22 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @skb_push(%struct.sk_buff* %27, i32 1)
  %29 = inttoptr i64 %28 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %31 = load i32, i32* @ST21NFCA_RF_CARD_F_GATE, align 4
  %32 = load i32, i32* @ST21NFCA_EVT_SEND_DATA, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %30, i32 %31, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
