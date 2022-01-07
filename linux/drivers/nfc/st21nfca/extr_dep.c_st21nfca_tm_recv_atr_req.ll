; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_recv_atr_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_recv_atr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_atr_req = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ST21NFCA_ATR_REQ_MIN_SIZE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.sk_buff*)* @st21nfca_tm_recv_atr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_tm_recv_atr_req(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.st21nfca_atr_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @skb_trim(%struct.sk_buff* %8, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ST21NFCA_ATR_REQ_MIN_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.st21nfca_atr_req*
  store %struct.st21nfca_atr_req* %34, %struct.st21nfca_atr_req** %5, align 8
  %35 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %36 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EPROTO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %70

43:                                               ; preds = %30
  %44 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %45 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %46 = call i32 @st21nfca_tm_send_atr_res(%struct.nfc_hci_dev* %44, %struct.st21nfca_atr_req* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %70

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %60 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %61 = load %struct.st21nfca_atr_req*, %struct.st21nfca_atr_req** %5, align 8
  %62 = getelementptr inbounds %struct.st21nfca_atr_req, %struct.st21nfca_atr_req* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @nfc_tm_activated(i32 %58, i32 %59, i32 %60, i32 %63, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %70

69:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %68, %49, %40, %27, %18
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @st21nfca_tm_send_atr_res(%struct.nfc_hci_dev*, %struct.st21nfca_atr_req*) #1

declare dso_local i32 @nfc_tm_activated(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
