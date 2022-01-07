; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_rtw_ap_set_pairwise_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_rtw_ap_set_pairwise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.sta_info = type { i32, i32*, i64 }
%struct.cmd_obj = type { i32 }
%struct.set_stakey_parm = type { i32, i32, i64 }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@_SetStaKey_CMD_ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_ap_set_pairwise_key(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca %struct.set_stakey_parm*, align 8
  %7 = alloca %struct.cmd_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %7, align 8
  %11 = load i64, i64* @_SUCCESS, align 8
  store i64 %11, i64* %8, align 8
  %12 = call i8* @rtw_zmalloc(i32 4)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %5, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %15 = icmp eq %struct.cmd_obj* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @_FAIL, align 8
  store i64 %17, i64* %8, align 8
  br label %55

18:                                               ; preds = %2
  %19 = call i8* @rtw_zmalloc(i32 16)
  %20 = bitcast i8* %19 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %20, %struct.set_stakey_parm** %6, align 8
  %21 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %6, align 8
  %22 = icmp eq %struct.set_stakey_parm* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %25 = bitcast %struct.cmd_obj* %24 to i64*
  %26 = call i32 @kfree(i64* %25)
  %27 = load i64, i64* @_FAIL, align 8
  store i64 %27, i64* %8, align 8
  br label %55

28:                                               ; preds = %18
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %30 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %6, align 8
  %31 = load i32, i32* @_SetStaKey_CMD_, align 4
  %32 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %29, %struct.set_stakey_parm* %30, i32 %31)
  %33 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %6, align 8
  %37 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %6, align 8
  %39 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32 %40, i32* %43, i32 %44)
  %46 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %6, align 8
  %47 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = call i32 @memcpy(i32 %48, i32* %50, i32 16)
  %52 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %53 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %54 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %52, %struct.cmd_obj* %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %28, %23, %16
  %56 = load i64, i64* %8, align 8
  ret i64 %56
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.set_stakey_parm*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
