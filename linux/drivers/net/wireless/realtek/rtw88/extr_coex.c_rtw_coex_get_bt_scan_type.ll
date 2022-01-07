; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_get_bt_scan_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_get_bt_scan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_coex_info_req = type { i32, i32 }
%struct.sk_buff = type { i32 }

@BT_MP_INFO_OP_SCAN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*)* @rtw_coex_get_bt_scan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_coex_get_bt_scan_type(%struct.rtw_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtw_coex_info_req, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = bitcast %struct.rtw_coex_info_req* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @BT_MP_INFO_OP_SCAN_TYPE, align 4
  %11 = getelementptr inbounds %struct.rtw_coex_info_req, %struct.rtw_coex_info_req* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = call %struct.sk_buff* @rtw_coex_info_request(%struct.rtw_dev* %12, %struct.rtw_coex_info_req* %5)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32* @get_payload_from_coex_resp(%struct.sk_buff* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @GET_COEX_RESP_BT_SCAN_TYPE(i32* %20)
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %23)
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @rtw_coex_info_request(%struct.rtw_dev*, %struct.rtw_coex_info_req*) #2

declare dso_local i32* @get_payload_from_coex_resp(%struct.sk_buff*) #2

declare dso_local i32 @GET_COEX_RESP_BT_SCAN_TYPE(i32*) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
