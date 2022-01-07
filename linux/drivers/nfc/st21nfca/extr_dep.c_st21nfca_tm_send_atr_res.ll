; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_atr_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_atr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_atr_req = type { i32, i32, i32 }
%struct.st21nfca_atr_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_RES = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_ATR_RES = common dso_local global i32 0, align 4
@ST21NFCA_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B = common dso_local global i32 0, align 4
@ST21NFCA_GB_BIT = common dso_local global i32 0, align 4
@ST21NFCA_RF_CARD_F_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SEND_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.st21nfca_atr_req*)* @st21nfca_tm_send_atr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_tm_send_atr_res(%struct.nfc_hci_dev* %0, %struct.st21nfca_atr_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca %struct.st21nfca_atr_req*, align 8
  %6 = alloca %struct.st21nfca_atr_res*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store %struct.st21nfca_atr_req* %1, %struct.st21nfca_atr_req** %5, align 8
  %11 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %12 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %11)
  store %struct.st21nfca_hci_info* %12, %struct.st21nfca_hci_info** %10, align 8
  %13 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %14 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 12
  store i64 %17, i64* %8, align 8
  %18 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %19 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sk_buff* @alloc_skb(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %116

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @skb_put(%struct.sk_buff* %30, i64 36)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.st21nfca_atr_res*
  store %struct.st21nfca_atr_res* %35, %struct.st21nfca_atr_res** %6, align 8
  %36 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %37 = call i32 @memset(%struct.st21nfca_atr_res* %36, i32 0, i32 36)
  %38 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %39 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %43 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ST21NFCA_NFCIP1_RES, align 4
  %45 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %46 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ST21NFCA_NFCIP1_ATR_RES, align 4
  %48 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %49 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %51 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %54 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %52, i32 %55, i64 6)
  %57 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %58 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %60 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %59, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* @ST21NFCA_DEFAULT_TIMEOUT, align 4
  %62 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %63 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B, align 4
  %65 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %66 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %29
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @skb_put(%struct.sk_buff* %70, i64 %71)
  %73 = load i32, i32* @ST21NFCA_GB_BIT, align 4
  %74 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %75 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %79 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %82 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @memcpy(i32 %80, i32 %83, i64 %84)
  %86 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.st21nfca_atr_res*, %struct.st21nfca_atr_res** %6, align 8
  %90 = getelementptr inbounds %struct.st21nfca_atr_res, %struct.st21nfca_atr_res* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @nfc_set_remote_general_bytes(i32 %88, i32 %91, i64 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %69
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %116

98:                                               ; preds = %69
  br label %99

99:                                               ; preds = %98, %29
  %100 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %10, align 8
  %101 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %104 = load i32, i32* @ST21NFCA_RF_CARD_F_GATE, align 4
  %105 = load i32, i32* @ST21NFCA_EVT_SEND_DATA, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %103, i32 %104, i32 %105, i64 %108, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = call i32 @kfree_skb(%struct.sk_buff* %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %99, %96, %26
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(%struct.st21nfca_atr_res*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @nfc_set_remote_general_bytes(i32, i32, i64) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
