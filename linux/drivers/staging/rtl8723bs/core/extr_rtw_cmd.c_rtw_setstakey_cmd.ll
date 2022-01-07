; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setstakey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setstakey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv, %struct.mlme_priv, %struct.cmd_priv }
%struct.security_priv = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.sta_info = type { i32, i32* }
%struct.cmd_obj = type { i8, i32*, i32, i32, i32* }
%struct.set_stakey_parm = type { i8, i32*, i32, i32, i32* }
%struct.set_stakey_rsp = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@_SetStaKey_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_setstakey_cmd(%struct.adapter* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_obj*, align 8
  %10 = alloca %struct.set_stakey_parm*, align 8
  %11 = alloca %struct.cmd_priv*, align 8
  %12 = alloca %struct.set_stakey_rsp*, align 8
  %13 = alloca %struct.mlme_priv*, align 8
  %14 = alloca %struct.security_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 2
  store %struct.cmd_priv* %17, %struct.cmd_priv** %11, align 8
  store %struct.set_stakey_rsp* null, %struct.set_stakey_rsp** %12, align 8
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  store %struct.mlme_priv* %19, %struct.mlme_priv** %13, align 8
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  store %struct.security_priv* %21, %struct.security_priv** %14, align 8
  %22 = load i32, i32* @_SUCCESS, align 4
  store i32 %22, i32* %15, align 4
  %23 = call i8* @rtw_zmalloc(i32 32)
  %24 = bitcast i8* %23 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %24, %struct.set_stakey_parm** %10, align 8
  %25 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %26 = icmp eq %struct.set_stakey_parm* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @_FAIL, align 4
  store i32 %28, i32* %15, align 4
  br label %128

29:                                               ; preds = %4
  %30 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %31 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32* %32, i32* %35, i32 %36)
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %39 = load i32, i32* @WIFI_STATION_STATE, align 4
  %40 = call i64 @check_fwstate(%struct.mlme_priv* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %44 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i8
  %47 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %48 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %47, i32 0, i32 0
  store i8 %46, i8* %48, align 8
  br label %56

49:                                               ; preds = %29
  %50 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %51 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %52 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %53 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = call i32 @GET_ENCRY_ALGO(%struct.security_priv* %50, %struct.sta_info* %51, i8 zeroext %54, i32 0)
  br label %56

56:                                               ; preds = %49, %42
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %61 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %60, i32 0, i32 3
  %62 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  %64 = call i32 @memcpy(i32* %61, i32* %63, i32 16)
  br label %77

65:                                               ; preds = %56
  %66 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %67 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %66, i32 0, i32 3
  %68 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %69 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %72 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @memcpy(i32* %67, i32* %75, i32 16)
  br label %77

77:                                               ; preds = %65, %59
  %78 = load %struct.adapter*, %struct.adapter** %5, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %77
  %84 = call i8* @rtw_zmalloc(i32 32)
  %85 = bitcast i8* %84 to %struct.cmd_obj*
  store %struct.cmd_obj* %85, %struct.cmd_obj** %9, align 8
  %86 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %87 = icmp eq %struct.cmd_obj* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %90 = call i32 @kfree(%struct.set_stakey_parm* %89)
  %91 = load i32, i32* @_FAIL, align 4
  store i32 %91, i32* %15, align 4
  br label %128

92:                                               ; preds = %83
  %93 = call i8* @rtw_zmalloc(i32 4)
  %94 = bitcast i8* %93 to %struct.set_stakey_rsp*
  store %struct.set_stakey_rsp* %94, %struct.set_stakey_rsp** %12, align 8
  %95 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %12, align 8
  %96 = icmp eq %struct.set_stakey_rsp* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %99 = bitcast %struct.cmd_obj* %98 to %struct.set_stakey_parm*
  %100 = call i32 @kfree(%struct.set_stakey_parm* %99)
  %101 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %102 = call i32 @kfree(%struct.set_stakey_parm* %101)
  %103 = load i32, i32* @_FAIL, align 4
  store i32 %103, i32* %15, align 4
  br label %128

104:                                              ; preds = %92
  %105 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %106 = bitcast %struct.cmd_obj* %105 to %struct.set_stakey_parm*
  %107 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %108 = load i32, i32* @_SetStaKey_CMD_, align 4
  %109 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm* %106, %struct.set_stakey_parm* %107, i32 %108)
  %110 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %12, align 8
  %111 = bitcast %struct.set_stakey_rsp* %110 to i32*
  %112 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %113 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %115 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %114, i32 0, i32 2
  store i32 4, i32* %115, align 8
  %116 = load %struct.cmd_priv*, %struct.cmd_priv** %11, align 8
  %117 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %118 = bitcast %struct.cmd_obj* %117 to %struct.set_stakey_parm*
  %119 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %116, %struct.set_stakey_parm* %118)
  store i32 %119, i32* %15, align 4
  br label %127

120:                                              ; preds = %77
  %121 = load %struct.adapter*, %struct.adapter** %5, align 8
  %122 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %123 = bitcast %struct.set_stakey_parm* %122 to i32*
  %124 = call i32 @set_stakey_hdl(%struct.adapter* %121, i32* %123)
  %125 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %126 = call i32 @kfree(%struct.set_stakey_parm* %125)
  br label %127

127:                                              ; preds = %120, %104
  br label %128

128:                                              ; preds = %127, %97, %88, %27
  %129 = load i32, i32* %15, align 4
  ret i32 %129
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @GET_ENCRY_ALGO(%struct.security_priv*, %struct.sta_info*, i8 zeroext, i32) #1

declare dso_local i32 @kfree(%struct.set_stakey_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm*, %struct.set_stakey_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.set_stakey_parm*) #1

declare dso_local i32 @set_stakey_hdl(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
