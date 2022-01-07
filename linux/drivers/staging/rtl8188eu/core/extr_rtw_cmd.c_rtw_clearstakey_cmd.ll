; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_clearstakey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_clearstakey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32, i32, i32, i32, i32* }
%struct.set_stakey_parm = type { i32, i32, i32, i32, i32* }
%struct.set_stakey_rsp = type { i32 }
%struct.sta_info = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SetStaKey_CMD_ = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_clearstakey_cmd(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_obj*, align 8
  %10 = alloca %struct.set_stakey_parm*, align 8
  %11 = alloca %struct.cmd_priv*, align 8
  %12 = alloca %struct.set_stakey_rsp*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.cmd_priv* %16, %struct.cmd_priv** %11, align 8
  store %struct.set_stakey_rsp* null, %struct.set_stakey_rsp** %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.sta_info*
  store %struct.sta_info* %18, %struct.sta_info** %13, align 8
  %19 = load i32, i32* @_SUCCESS, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.adapter*, %struct.adapter** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @clear_cam_entry(%struct.adapter* %23, i32 %24)
  br label %87

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i8* @kzalloc(i32 24, i32 %27)
  %29 = bitcast i8* %28 to %struct.cmd_obj*
  store %struct.cmd_obj* %29, %struct.cmd_obj** %9, align 8
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %31 = icmp ne %struct.cmd_obj* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @_FAIL, align 4
  store i32 %33, i32* %14, align 4
  br label %88

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i8* @kzalloc(i32 24, i32 %35)
  %37 = bitcast i8* %36 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %37, %struct.set_stakey_parm** %10, align 8
  %38 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %39 = icmp ne %struct.set_stakey_parm* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %42 = bitcast %struct.cmd_obj* %41 to %struct.set_stakey_parm*
  %43 = call i32 @kfree(%struct.set_stakey_parm* %42)
  %44 = load i32, i32* @_FAIL, align 4
  store i32 %44, i32* %14, align 4
  br label %88

45:                                               ; preds = %34
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i8* @kzalloc(i32 4, i32 %46)
  %48 = bitcast i8* %47 to %struct.set_stakey_rsp*
  store %struct.set_stakey_rsp* %48, %struct.set_stakey_rsp** %12, align 8
  %49 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %12, align 8
  %50 = icmp ne %struct.set_stakey_rsp* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %53 = bitcast %struct.cmd_obj* %52 to %struct.set_stakey_parm*
  %54 = call i32 @kfree(%struct.set_stakey_parm* %53)
  %55 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %56 = call i32 @kfree(%struct.set_stakey_parm* %55)
  %57 = load i32, i32* @_FAIL, align 4
  store i32 %57, i32* %14, align 4
  br label %88

58:                                               ; preds = %45
  %59 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %60 = bitcast %struct.cmd_obj* %59 to %struct.set_stakey_parm*
  %61 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %62 = load i32, i32* @_SetStaKey_CMD_, align 4
  %63 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm* %60, %struct.set_stakey_parm* %61, i32 %62)
  %64 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %12, align 8
  %65 = bitcast %struct.set_stakey_rsp* %64 to i32*
  %66 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %67 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  %68 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %69 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %71 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ether_addr_copy(i32 %72, i32 %75)
  %77 = load i32, i32* @_NO_PRIVACY_, align 4
  %78 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %79 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %82 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cmd_priv*, %struct.cmd_priv** %11, align 8
  %84 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %85 = bitcast %struct.cmd_obj* %84 to %struct.set_stakey_parm*
  %86 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %83, %struct.set_stakey_parm* %85)
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %58, %22
  br label %88

88:                                               ; preds = %87, %51, %40, %32
  %89 = load i32, i32* %14, align 4
  ret i32 %89
}

declare dso_local i32 @clear_cam_entry(%struct.adapter*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.set_stakey_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.set_stakey_parm*, %struct.set_stakey_parm*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.set_stakey_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
