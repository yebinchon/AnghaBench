; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c_rtw_init_bcmc_stainfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_sta_mgt.c_rtw_init_bcmc_stainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.sta_priv }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tx_servq }
%struct.tx_servq = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@__const.rtw_init_bcmc_stainfo.bcast_addr = private unnamed_addr constant %struct.TYPE_5__ { i32 255, i32 255, i32 255, i32 255, i32 255, i32 255 }, align 4
@_FAIL = common dso_local global i32 0, align 4
@_module_rtl871x_sta_mgt_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rtw_alloc_stainfo fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_init_bcmc_stainfo(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.tx_servq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.sta_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load i32, i32* @_SUCCESS, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_5__* @__const.rtw_init_bcmc_stainfo.bcast_addr to i8*), i64 24, i1 false)
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.sta_priv* %11, %struct.sta_priv** %7, align 8
  %12 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %13 = call %struct.sta_info* @rtw_alloc_stainfo(%struct.sta_priv* %12, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %6)
  store %struct.sta_info* %13, %struct.sta_info** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = icmp ne %struct.sta_info* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @_FAIL, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @_module_rtl871x_sta_mgt_c_, align 4
  %19 = load i32, i32* @_drv_err_, align 4
  %20 = call i32 @RT_TRACE(i32 %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.tx_servq* %26, %struct.tx_servq** %4, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32, i32* @_SUCCESS, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sta_info* @rtw_alloc_stainfo(%struct.sta_priv*, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
