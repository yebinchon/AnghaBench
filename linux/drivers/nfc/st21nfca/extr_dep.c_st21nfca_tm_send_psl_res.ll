; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_psl_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_dep.c_st21nfca_tm_send_psl_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_psl_req = type { i32, i32 }
%struct.st21nfca_psl_res = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_RES = common dso_local global i32 0, align 4
@ST21NFCA_NFCIP1_PSL_RES = common dso_local global i32 0, align 4
@ST21NFCA_RF_CARD_F_GATE = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SEND_DATA = common dso_local global i32 0, align 4
@ST21NFCA_CARD_BITRATE_424 = common dso_local global i32 0, align 4
@ST21NFCA_EVT_CARD_F_BITRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.st21nfca_psl_req*)* @st21nfca_tm_send_psl_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_tm_send_psl_res(%struct.nfc_hci_dev* %0, %struct.st21nfca_psl_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca %struct.st21nfca_psl_req*, align 8
  %6 = alloca %struct.st21nfca_psl_res*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store %struct.st21nfca_psl_req* %1, %struct.st21nfca_psl_req** %5, align 8
  %10 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 16, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @skb_put(%struct.sk_buff* %19, i32 16)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.st21nfca_psl_res*
  store %struct.st21nfca_psl_res* %24, %struct.st21nfca_psl_res** %6, align 8
  %25 = load %struct.st21nfca_psl_res*, %struct.st21nfca_psl_res** %6, align 8
  %26 = getelementptr inbounds %struct.st21nfca_psl_res, %struct.st21nfca_psl_res* %25, i32 0, i32 0
  store i32 16, i32* %26, align 4
  %27 = load i32, i32* @ST21NFCA_NFCIP1_RES, align 4
  %28 = load %struct.st21nfca_psl_res*, %struct.st21nfca_psl_res** %6, align 8
  %29 = getelementptr inbounds %struct.st21nfca_psl_res, %struct.st21nfca_psl_res* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ST21NFCA_NFCIP1_PSL_RES, align 4
  %31 = load %struct.st21nfca_psl_res*, %struct.st21nfca_psl_res** %6, align 8
  %32 = getelementptr inbounds %struct.st21nfca_psl_res, %struct.st21nfca_psl_res* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %5, align 8
  %34 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.st21nfca_psl_res*, %struct.st21nfca_psl_res** %6, align 8
  %37 = getelementptr inbounds %struct.st21nfca_psl_res, %struct.st21nfca_psl_res* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %39 = load i32, i32* @ST21NFCA_RF_CARD_F_GATE, align 4
  %40 = load i32, i32* @ST21NFCA_EVT_SEND_DATA, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %38, i32 %39, i32 %40, i32* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %18
  br label %74

51:                                               ; preds = %18
  %52 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %5, align 8
  %53 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ST21NFCA_PSL_REQ_SEND_SPEED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.st21nfca_psl_req*, %struct.st21nfca_psl_req** %5, align 8
  %59 = getelementptr inbounds %struct.st21nfca_psl_req, %struct.st21nfca_psl_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ST21NFCA_PSL_REQ_RECV_SPEED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @ST21NFCA_CARD_BITRATE_424, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ST21NFCA_CARD_BITRATE_424, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %57, %51
  %69 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %70 = load i32, i32* @ST21NFCA_RF_CARD_F_GATE, align 4
  %71 = load i32, i32* @ST21NFCA_EVT_CARD_F_BITRATE, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %69, i32 %70, i32 %71, i32* %72, i32 2)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %50
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #2

declare dso_local i64 @ST21NFCA_PSL_REQ_SEND_SPEED(i32) #2

declare dso_local i64 @ST21NFCA_PSL_REQ_RECV_SPEED(i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
