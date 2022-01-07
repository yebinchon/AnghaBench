; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setstakey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setstakey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv, %struct.mlme_priv, %struct.cmd_priv }
%struct.security_priv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32, i8, i32, i32, i64* }
%struct.set_stakey_parm = type { i32, i8, i32, i32, i64* }
%struct.set_stakey_rsp = type { i32 }
%struct.sta_info = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_SetStaKey_CMD_ = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_setstakey_cmd(%struct._adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.set_stakey_parm*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  %10 = alloca %struct.set_stakey_rsp*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca %struct.security_priv*, align 8
  %13 = alloca %struct.sta_info*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct._adapter*, %struct._adapter** %4, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 2
  store %struct.cmd_priv* %15, %struct.cmd_priv** %9, align 8
  store %struct.set_stakey_rsp* null, %struct.set_stakey_rsp** %10, align 8
  %16 = load %struct._adapter*, %struct._adapter** %4, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 1
  store %struct.mlme_priv* %17, %struct.mlme_priv** %11, align 8
  %18 = load %struct._adapter*, %struct._adapter** %4, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 0
  store %struct.security_priv* %19, %struct.security_priv** %12, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = bitcast i64* %20 to %struct.sta_info*
  store %struct.sta_info* %21, %struct.sta_info** %13, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kmalloc(i32 24, i32 %22)
  %24 = bitcast i8* %23 to %struct.cmd_obj*
  store %struct.cmd_obj* %24, %struct.cmd_obj** %7, align 8
  %25 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %26 = icmp ne %struct.cmd_obj* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %115

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i8* @kmalloc(i32 24, i32 %29)
  %31 = bitcast i8* %30 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %31, %struct.set_stakey_parm** %8, align 8
  %32 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %33 = icmp ne %struct.set_stakey_parm* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %36 = bitcast %struct.cmd_obj* %35 to %struct.set_stakey_parm*
  %37 = call i32 @kfree(%struct.set_stakey_parm* %36)
  br label %115

38:                                               ; preds = %28
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i8* @kmalloc(i32 4, i32 %39)
  %41 = bitcast i8* %40 to %struct.set_stakey_rsp*
  store %struct.set_stakey_rsp* %41, %struct.set_stakey_rsp** %10, align 8
  %42 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %10, align 8
  %43 = icmp ne %struct.set_stakey_rsp* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %46 = bitcast %struct.cmd_obj* %45 to %struct.set_stakey_parm*
  %47 = call i32 @kfree(%struct.set_stakey_parm* %46)
  %48 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %49 = call i32 @kfree(%struct.set_stakey_parm* %48)
  br label %115

50:                                               ; preds = %38
  %51 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %52 = bitcast %struct.cmd_obj* %51 to %struct.set_stakey_parm*
  %53 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %54 = load i32, i32* @_SetStaKey_CMD_, align 4
  %55 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm* %52, %struct.set_stakey_parm* %53, i32 %54)
  %56 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %10, align 8
  %57 = bitcast %struct.set_stakey_rsp* %56 to i64*
  %58 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %59 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %58, i32 0, i32 4
  store i64* %57, i64** %59, align 8
  %60 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %61 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  %62 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %63 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ether_addr_copy(i32 %64, i32 %67)
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %70 = load i32, i32* @WIFI_STATION_STATE, align 4
  %71 = call i64 @check_fwstate(%struct.mlme_priv* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %50
  %74 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %75 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i8
  %78 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %79 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %78, i32 0, i32 1
  store i8 %77, i8* %79, align 4
  br label %87

80:                                               ; preds = %50
  %81 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %83 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %84 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 4
  %86 = call i32 @GET_ENCRY_ALGO(%struct.security_priv* %81, %struct.sta_info* %82, i8 zeroext %85, i32 0)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %92 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %91, i32 0, i32 2
  %93 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  %95 = call i32 @memcpy(i32* %92, i32* %94, i32 16)
  br label %110

96:                                               ; preds = %87
  %97 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %8, align 8
  %98 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %97, i32 0, i32 2
  %99 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %100 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %103 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @memcpy(i32* %98, i32* %108, i32 16)
  br label %110

110:                                              ; preds = %96, %90
  %111 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %112 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %113 = bitcast %struct.cmd_obj* %112 to %struct.set_stakey_parm*
  %114 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %111, %struct.set_stakey_parm* %113)
  br label %115

115:                                              ; preds = %110, %44, %34, %27
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.set_stakey_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm*, %struct.set_stakey_parm*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @GET_ENCRY_ALGO(%struct.security_priv*, %struct.sta_info*, i8 zeroext, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.set_stakey_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
