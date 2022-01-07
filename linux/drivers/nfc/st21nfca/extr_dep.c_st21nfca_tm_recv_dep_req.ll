; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_recv_dep_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_recv_dep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_dep_req_res = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Received a ACK/NACK PDU\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Received a SUPERVISOR PDU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.sk_buff*)* @st21nfca_tm_recv_dep_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_tm_recv_dep_req(%struct.nfc_hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.st21nfca_dep_req_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st21nfca_hci_info*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %11 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %10)
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @skb_trim(%struct.sk_buff* %12, i32 %16)
  store i32 4, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.st21nfca_dep_req_res*
  store %struct.st21nfca_dep_req_res* %21, %struct.st21nfca_dep_req_res** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %83

30:                                               ; preds = %2
  %31 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %6, align 8
  %32 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ST21NFCA_NFC_DEP_DID_BIT_SET(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %6, align 8
  %41 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ST21NFCA_NFC_DEP_NAD_BIT_SET(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %83

57:                                               ; preds = %48
  %58 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %6, align 8
  %59 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ST21NFCA_NFC_DEP_PFB_TYPE(i32 %60)
  switch i32 %61, label %74 [
    i32 129, label %62
    i32 130, label %70
    i32 128, label %72
  ]

62:                                               ; preds = %57
  %63 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %6, align 8
  %64 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ST21NFCA_NFC_DEP_PFB_PNI(i32 %65)
  %67 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %9, align 8
  %68 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %74

70:                                               ; preds = %57
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %74

72:                                               ; preds = %57
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %57, %72, %70, %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @skb_pull(%struct.sk_buff* %75, i32 %76)
  %78 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @nfc_tm_data_received(i32 %80, %struct.sk_buff* %81)
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %54, %27
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %74
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @ST21NFCA_NFC_DEP_DID_BIT_SET(i32) #1

declare dso_local i64 @ST21NFCA_NFC_DEP_NAD_BIT_SET(i32) #1

declare dso_local i32 @ST21NFCA_NFC_DEP_PFB_TYPE(i32) #1

declare dso_local i32 @ST21NFCA_NFC_DEP_PFB_PNI(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_tm_data_received(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
