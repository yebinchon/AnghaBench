; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.security_priv = type { i64 }
%struct.cmd_obj = type { i8*, i32, i32, i64, i32*, i32 }
%struct.setauth_parm = type { i8 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SetAuth_CMD_ = common dso_local global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"after enqueue set_auth_cmd, auth_mode =%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_set_auth(%struct.adapter* %0, %struct.security_priv* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.security_priv*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca %struct.setauth_parm*, align 8
  %7 = alloca %struct.cmd_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.security_priv* %1, %struct.security_priv** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %7, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i8* @rtw_zmalloc(i32 40)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %5, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %15 = icmp eq %struct.cmd_obj* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @_FAIL, align 4
  store i32 %17, i32* %8, align 4
  br label %61

18:                                               ; preds = %2
  %19 = call i8* @rtw_zmalloc(i32 1)
  %20 = bitcast i8* %19 to %struct.setauth_parm*
  store %struct.setauth_parm* %20, %struct.setauth_parm** %6, align 8
  %21 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %22 = icmp eq %struct.setauth_parm* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %25 = bitcast %struct.cmd_obj* %24 to i8*
  %26 = call i32 @kfree(i8* %25)
  %27 = load i32, i32* @_FAIL, align 4
  store i32 %27, i32* %8, align 4
  br label %61

28:                                               ; preds = %18
  %29 = load %struct.security_priv*, %struct.security_priv** %4, align 8
  %30 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i8
  %33 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %34 = getelementptr inbounds %struct.setauth_parm, %struct.setauth_parm* %33, i32 0, i32 0
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* @_SetAuth_CMD_, align 4
  %36 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %37 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %39 = bitcast %struct.setauth_parm* %38 to i8*
  %40 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %41 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %43 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %45 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %47 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %49 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %52 = load i32, i32* @_drv_err_, align 4
  %53 = load %struct.security_priv*, %struct.security_priv** %4, align 8
  %54 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @RT_TRACE(i32 %51, i32 %52, i8* %56)
  %58 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %59 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %60 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %58, %struct.cmd_obj* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %28, %23, %16
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
