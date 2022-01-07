; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_get_iso14443_3_atqa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_get_iso14443_3_atqa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }

@ST21NFCA_RF_READER_14443_3_A_GATE = common dso_local global i32 0, align 4
@ST21NFCA_RF_READER_14443_3_A_ATQA = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32*)* @st21nfca_get_iso14443_3_atqa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_get_iso14443_3_atqa(%struct.nfc_hci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %8 = load i32, i32* @ST21NFCA_RF_READER_14443_3_A_GATE, align 4
  %9 = load i32, i32* @ST21NFCA_RF_READER_14443_3_A_ATQA, align 4
  %10 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %7, i32 %8, i32 %9, %struct.sk_buff** %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %19, %13
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
