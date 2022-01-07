; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_setstakey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_setstakey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv, %struct.mlme_priv, %struct.cmd_priv }
%struct.security_priv = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32, i8, i32, i32, i64* }
%struct.set_stakey_parm = type { i32, i8, i32, i32, i64* }
%struct.set_stakey_rsp = type { i32, i8, i32, i32, i64* }
%struct.sta_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@_SetStaKey_CMD_ = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_setstakey_cmd(%struct.adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmd_obj*, align 8
  %9 = alloca %struct.set_stakey_parm*, align 8
  %10 = alloca %struct.cmd_priv*, align 8
  %11 = alloca %struct.set_stakey_rsp*, align 8
  %12 = alloca %struct.mlme_priv*, align 8
  %13 = alloca %struct.security_priv*, align 8
  %14 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 2
  store %struct.cmd_priv* %16, %struct.cmd_priv** %10, align 8
  store %struct.set_stakey_rsp* null, %struct.set_stakey_rsp** %11, align 8
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  store %struct.mlme_priv* %18, %struct.mlme_priv** %12, align 8
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.security_priv* %20, %struct.security_priv** %13, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = bitcast i64* %21 to %struct.sta_info*
  store %struct.sta_info* %22, %struct.sta_info** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.set_stakey_rsp* @kzalloc(i32 24, i32 %23)
  %25 = bitcast %struct.set_stakey_rsp* %24 to %struct.cmd_obj*
  store %struct.cmd_obj* %25, %struct.cmd_obj** %8, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.set_stakey_rsp* @kzalloc(i32 24, i32 %26)
  %28 = bitcast %struct.set_stakey_rsp* %27 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %28, %struct.set_stakey_parm** %9, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.set_stakey_rsp* @kzalloc(i32 24, i32 %29)
  store %struct.set_stakey_rsp* %30, %struct.set_stakey_rsp** %11, align 8
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %32 = icmp ne %struct.cmd_obj* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %35 = icmp ne %struct.set_stakey_parm* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %11, align 8
  %38 = icmp ne %struct.set_stakey_rsp* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36, %33, %3
  %40 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %41 = bitcast %struct.cmd_obj* %40 to %struct.set_stakey_rsp*
  %42 = call i32 @kfree(%struct.set_stakey_rsp* %41)
  %43 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %44 = bitcast %struct.set_stakey_parm* %43 to %struct.set_stakey_rsp*
  %45 = call i32 @kfree(%struct.set_stakey_rsp* %44)
  %46 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %11, align 8
  %47 = call i32 @kfree(%struct.set_stakey_rsp* %46)
  %48 = load i64, i64* @_FAIL, align 8
  store i64 %48, i64* %4, align 8
  br label %116

49:                                               ; preds = %36
  %50 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %51 = bitcast %struct.cmd_obj* %50 to %struct.set_stakey_rsp*
  %52 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %53 = bitcast %struct.set_stakey_parm* %52 to %struct.set_stakey_rsp*
  %54 = load i32, i32* @_SetStaKey_CMD_, align 4
  %55 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_rsp* %51, %struct.set_stakey_rsp* %53, i32 %54)
  %56 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %11, align 8
  %57 = bitcast %struct.set_stakey_rsp* %56 to i64*
  %58 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %59 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %58, i32 0, i32 4
  store i64* %57, i64** %59, align 8
  %60 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %61 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %60, i32 0, i32 0
  store i32 24, i32* %61, align 8
  %62 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %63 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ether_addr_copy(i32 %64, i32 %67)
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %70 = load i32, i32* @WIFI_STATION_STATE, align 4
  %71 = call i64 @check_fwstate(%struct.mlme_priv* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %49
  %74 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %75 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i8
  %78 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %79 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %78, i32 0, i32 1
  store i8 %77, i8* %79, align 4
  br label %87

80:                                               ; preds = %49
  %81 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %83 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %84 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 4
  %86 = call i32 @GET_ENCRY_ALGO(%struct.security_priv* %81, %struct.sta_info* %82, i8 zeroext %85, i32 0)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %92 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %91, i32 0, i32 2
  %93 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  %95 = call i32 @memcpy(i32* %92, i32* %94, i32 16)
  br label %108

96:                                               ; preds = %87
  %97 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %9, align 8
  %98 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %97, i32 0, i32 2
  %99 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %100 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %103 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @memcpy(i32* %98, i32* %106, i32 16)
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.adapter*, %struct.adapter** %5, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  %112 = load %struct.cmd_priv*, %struct.cmd_priv** %10, align 8
  %113 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %114 = bitcast %struct.cmd_obj* %113 to %struct.set_stakey_rsp*
  %115 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %112, %struct.set_stakey_rsp* %114)
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %108, %39
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

declare dso_local %struct.set_stakey_rsp* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.set_stakey_rsp*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_rsp*, %struct.set_stakey_rsp*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @GET_ENCRY_ALGO(%struct.security_priv*, %struct.sta_info*, i8 zeroext, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.set_stakey_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
