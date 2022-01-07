; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_dep_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_dep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.st21nfca_hci_info = type { i32, %struct.TYPE_2__, %struct.st21nfca_hci_info*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ST21NFCA_CB_TYPE_READER_F = common dso_local global i32 0, align 4
@st21nfca_im_recv_dep_res_cb = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_DEP_REQ = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_REQ = common dso_local global i32 0, align 4
@ST21NFCA_RF_READER_F_GATE = common dso_local global i32 0, align 4
@ST21NFCA_WR_XCHG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st21nfca_im_send_dep_req(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %7 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %6)
  store %struct.st21nfca_hci_info* %7, %struct.st21nfca_hci_info** %5, align 8
  %8 = load i32, i32* @ST21NFCA_CB_TYPE_READER_F, align 4
  %9 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %10 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %12 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %13 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %12, i32 0, i32 2
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %13, align 8
  %14 = load i32, i32* @st21nfca_im_recv_dep_res_cb, align 4
  %15 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %16 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %18 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_push(%struct.sk_buff* %21, i32 1)
  %23 = inttoptr i64 %22 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @ST21NFCA_NFCIP1_DEP_REQ, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @skb_push(%struct.sk_buff* %25, i32 1)
  %27 = inttoptr i64 %26 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @ST21NFCA_NFCIP1_REQ, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @skb_push(%struct.sk_buff* %29, i32 1)
  %31 = inttoptr i64 %30 to i32*
  store i32 %28, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @skb_push(%struct.sk_buff* %35, i32 1)
  %37 = inttoptr i64 %36 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %39 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 16
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @skb_push(%struct.sk_buff* %43, i32 1)
  %45 = inttoptr i64 %44 to i32*
  store i32 %42, i32* %45, align 4
  %46 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %47 = load i32, i32* @ST21NFCA_RF_READER_F_GATE, align 4
  %48 = load i32, i32* @ST21NFCA_WR_XCHG_DATA, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %56 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %5, align 8
  %59 = call i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev* %46, i32 %47, i32 %48, i32 %51, i32 %54, i32 %57, %struct.st21nfca_hci_info* %58)
  ret i32 %59
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev*, i32, i32, i32, i32, i32, %struct.st21nfca_hci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
