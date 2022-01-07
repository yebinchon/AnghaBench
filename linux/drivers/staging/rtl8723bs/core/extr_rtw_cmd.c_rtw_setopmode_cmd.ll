; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setopmode_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setopmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.setopmode_parm = type { i64 }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@_SetOpMode_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_setopmode_cmd(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.setopmode_parm*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %9, align 8
  %13 = load i64, i64* @_SUCCESS, align 8
  store i64 %13, i64* %10, align 8
  %14 = call i8* @rtw_zmalloc(i32 8)
  %15 = bitcast i8* %14 to %struct.setopmode_parm*
  store %struct.setopmode_parm* %15, %struct.setopmode_parm** %8, align 8
  %16 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %17 = icmp eq %struct.setopmode_parm* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @_FAIL, align 8
  store i64 %19, i64* %10, align 8
  br label %52

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %24 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = call i8* @rtw_zmalloc(i32 4)
  %29 = bitcast i8* %28 to %struct.cmd_obj*
  store %struct.cmd_obj* %29, %struct.cmd_obj** %7, align 8
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %31 = icmp eq %struct.cmd_obj* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %34 = call i32 @kfree(%struct.setopmode_parm* %33)
  %35 = load i64, i64* @_FAIL, align 8
  store i64 %35, i64* %10, align 8
  br label %52

36:                                               ; preds = %27
  %37 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %38 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %39 = load i32, i32* @_SetOpMode_CMD_, align 4
  %40 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %37, %struct.setopmode_parm* %38, i32 %39)
  %41 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %43 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %41, %struct.cmd_obj* %42)
  store i64 %43, i64* %10, align 8
  br label %51

44:                                               ; preds = %20
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %47 = bitcast %struct.setopmode_parm* %46 to i64*
  %48 = call i32 @setopmode_hdl(%struct.adapter* %45, i64* %47)
  %49 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %50 = call i32 @kfree(%struct.setopmode_parm* %49)
  br label %51

51:                                               ; preds = %44, %36
  br label %52

52:                                               ; preds = %51, %32, %18
  %53 = load i64, i64* %10, align 8
  ret i64 %53
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.setopmode_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.setopmode_parm*, i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @setopmode_hdl(%struct.adapter*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
