; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_psl_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_send_psl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.st21nfca_psl_req = type { i32, i32, i32, i32, i32, i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_REQ = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_PSL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*, i32, i32, i32, i32)* @st21nfca_im_send_psl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_im_send_psl_req(%struct.nfc_hci_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.st21nfca_psl_req*, align 8
  %13 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %15 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %14)
  store %struct.st21nfca_hci_info* %15, %struct.st21nfca_hci_info** %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @alloc_skb(i32 25, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %63

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = call i32 @skb_reserve(%struct.sk_buff* %22, i32 1)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = call i32 @skb_put(%struct.sk_buff* %24, i32 24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.st21nfca_psl_req*
  store %struct.st21nfca_psl_req* %29, %struct.st21nfca_psl_req** %12, align 8
  %30 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %31 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %30, i32 0, i32 0
  store i32 24, i32* %31, align 4
  %32 = load i32, i32* @ST21NFCA_NFCIP1_REQ, align 4
  %33 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %34 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ST21NFCA_NFCIP1_PSL_REQ, align 4
  %36 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %37 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %40 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 4
  %43 = and i32 48, %42
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 3
  %46 = or i32 %43, %45
  %47 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %48 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %12, align 8
  %51 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %13, align 8
  %53 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 16
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = call i64 @skb_push(%struct.sk_buff* %57, i32 1)
  %59 = inttoptr i64 %58 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %13, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = call i32 @st21nfca_im_send_pdu(%struct.st21nfca_hci_info* %60, %struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @st21nfca_im_send_pdu(%struct.st21nfca_hci_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
