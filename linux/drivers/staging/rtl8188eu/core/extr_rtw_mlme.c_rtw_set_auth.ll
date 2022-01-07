; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.security_priv = type { i64 }
%struct.cmd_obj = type { i8*, i32, i32, i64, i32*, i32 }
%struct.setauth_parm = type { i8 }

@_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SetAuth_CMD_ = common dso_local global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"after enqueue set_auth_cmd, auth_mode=%x\0A\00", align 1

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
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 40, i32 %12)
  %14 = bitcast i8* %13 to %struct.cmd_obj*
  store %struct.cmd_obj* %14, %struct.cmd_obj** %5, align 8
  %15 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %16 = icmp ne %struct.cmd_obj* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @_FAIL, align 4
  store i32 %18, i32* %8, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 1, i32 %20)
  %22 = bitcast i8* %21 to %struct.setauth_parm*
  store %struct.setauth_parm* %22, %struct.setauth_parm** %6, align 8
  %23 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %24 = icmp ne %struct.setauth_parm* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %27 = call i32 @kfree(%struct.cmd_obj* %26)
  %28 = load i32, i32* @_FAIL, align 4
  store i32 %28, i32* %8, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load %struct.security_priv*, %struct.security_priv** %4, align 8
  %31 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i8
  %34 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %35 = getelementptr inbounds %struct.setauth_parm, %struct.setauth_parm* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* @_SetAuth_CMD_, align 4
  %37 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.setauth_parm*, %struct.setauth_parm** %6, align 8
  %40 = bitcast %struct.setauth_parm* %39 to i8*
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %42 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %44 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %46 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %50 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %49, i32 0, i32 2
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %53 = load i32, i32* @_drv_err_, align 4
  %54 = load %struct.security_priv*, %struct.security_priv** %4, align 8
  %55 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @RT_TRACE(i32 %52, i32 %53, i8* %57)
  %59 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %60 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %61 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %59, %struct.cmd_obj* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %29, %25, %17
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
