; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_se_get_atr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_se_get_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ST21NFCA_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST21NFCA_PARAM_ATR = common dso_local global i32 0, align 4
@ST21NFCA_ESE_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*)* @st21nfca_se_get_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_se_get_atr(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca %struct.nfc_hci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %2, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %7 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %6)
  store %struct.st21nfca_hci_info* %7, %struct.st21nfca_hci_info** %5, align 8
  %8 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %9 = load i32, i32* @ST21NFCA_APDU_READER_GATE, align 4
  %10 = load i32, i32* @ST21NFCA_PARAM_ATR, align 4
  %11 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %8, i32 %9, i32 %10, %struct.sk_buff** %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ST21NFCA_ESE_MAX_LENGTH, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %23 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i32 %25, i32 %28, i64 %31)
  %33 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %2, align 8
  %34 = call i32 @st21nfca_se_get_bwi(%struct.nfc_hci_dev* %33)
  %35 = call i32 @ST21NFCA_BWI_TO_TIMEOUT(i32 %34)
  %36 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %37 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %21, %15
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %39, %14
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ST21NFCA_BWI_TO_TIMEOUT(i32) #1

declare dso_local i32 @st21nfca_se_get_bwi(%struct.nfc_hci_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
