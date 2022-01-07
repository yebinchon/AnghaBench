; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_recv_dep_res_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_im_recv_dep_res_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.st21nfca_hci_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.st21nfca_dep_req_res = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Received a ACK/NACK PDU\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Received a SUPERVISOR PDU\0A\00", align 1
@ST21NFCA_NFCIP1_DEP_REQ = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @st21nfca_im_recv_dep_res_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st21nfca_im_recv_dep_res_cb(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st21nfca_hci_info*, align 8
  %8 = alloca %struct.st21nfca_dep_req_res*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.st21nfca_hci_info*
  store %struct.st21nfca_hci_info* %11, %struct.st21nfca_hci_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %129

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %129

19:                                               ; preds = %15
  %20 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %21 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %124 [
    i32 131, label %23
  ]

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.st21nfca_dep_req_res*
  store %struct.st21nfca_dep_req_res* %27, %struct.st21nfca_dep_req_res** %8, align 8
  store i32 3, i32* %9, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %126

34:                                               ; preds = %23
  %35 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %8, align 8
  %36 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ST21NFCA_NFC_DEP_DID_BIT_SET(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %8, align 8
  %45 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ST21NFCA_NFC_DEP_NAD_BIT_SET(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %126

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @skb_trim(%struct.sk_buff* %60, i32 %64)
  %66 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %8, align 8
  %67 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ST21NFCA_NFC_DEP_PFB_TYPE(i32 %68)
  switch i32 %69, label %123 [
    i32 130, label %70
    i32 129, label %72
    i32 128, label %93
  ]

70:                                               ; preds = %59
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %59, %70
  %73 = load %struct.st21nfca_dep_req_res*, %struct.st21nfca_dep_req_res** %8, align 8
  %74 = getelementptr inbounds %struct.st21nfca_dep_req_res, %struct.st21nfca_dep_req_res* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @ST21NFCA_NFC_DEP_PFB_PNI(i32 %76)
  %78 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %79 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @skb_pull(%struct.sk_buff* %83, i32 %84)
  %86 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %87 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @nfc_tm_data_received(i32 %90, %struct.sk_buff* %91)
  br label %123

93:                                               ; preds = %59
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @skb_pull(%struct.sk_buff* %95, i32 %96)
  %98 = load i32, i32* @ST21NFCA_NFCIP1_DEP_REQ, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i64 @skb_push(%struct.sk_buff* %99, i32 1)
  %101 = inttoptr i64 %100 to i32*
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @ST21NFCA_NFCIP1_REQ, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i64 @skb_push(%struct.sk_buff* %103, i32 1)
  %105 = inttoptr i64 %104 to i32*
  store i32 %102, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i64 @skb_push(%struct.sk_buff* %109, i32 1)
  %111 = inttoptr i64 %110 to i32*
  store i32 %108, i32* %111, align 4
  %112 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %113 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, 16
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i64 @skb_push(%struct.sk_buff* %117, i32 1)
  %119 = inttoptr i64 %118 to i32*
  store i32 %116, i32* %119, align 4
  %120 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %7, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i32 @st21nfca_im_send_pdu(%struct.st21nfca_hci_info* %120, %struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %59, %93, %72
  br label %129

124:                                              ; preds = %19
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %58, %33
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  br label %129

129:                                              ; preds = %126, %123, %18, %14
  ret void
}

declare dso_local i32 @ST21NFCA_NFC_DEP_DID_BIT_SET(i32) #1

declare dso_local i32 @ST21NFCA_NFC_DEP_NAD_BIT_SET(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @ST21NFCA_NFC_DEP_PFB_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ST21NFCA_NFC_DEP_PFB_PNI(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_tm_data_received(i32, %struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @st21nfca_im_send_pdu(%struct.st21nfca_hci_info*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
