; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_lna_constrain_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_lna_constrain_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_coex_info_req = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@BT_MP_INFO_OP_LNA_CONSTRAINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32)* @rtw_coex_set_lna_constrain_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_coex_set_lna_constrain_level(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex_info_req, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.rtw_coex_info_req* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @BT_MP_INFO_OP_LNA_CONSTRAINT, align 4
  %10 = getelementptr inbounds %struct.rtw_coex_info_req, %struct.rtw_coex_info_req* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.rtw_coex_info_req, %struct.rtw_coex_info_req* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = call %struct.sk_buff* @rtw_coex_info_request(%struct.rtw_dev* %13, %struct.rtw_coex_info_req* %5)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %19)
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @rtw_coex_info_request(%struct.rtw_dev*, %struct.rtw_coex_info_req*) #2

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
