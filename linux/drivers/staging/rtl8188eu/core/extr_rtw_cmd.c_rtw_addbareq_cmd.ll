; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_addbareq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_addbareq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.addBaReq_parm = type { i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_AddBAReq_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_addbareq_cmd(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cmd_priv*, align 8
  %8 = alloca %struct.cmd_obj*, align 8
  %9 = alloca %struct.addBaReq_parm*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %7, align 8
  %13 = load i32, i32* @_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i8* @kzalloc(i32 4, i32 %14)
  %16 = bitcast i8* %15 to %struct.cmd_obj*
  store %struct.cmd_obj* %16, %struct.cmd_obj** %8, align 8
  %17 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %18 = icmp ne %struct.cmd_obj* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @_FAIL, align 4
  store i32 %20, i32* %10, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kzalloc(i32 8, i32 %22)
  %24 = bitcast i8* %23 to %struct.addBaReq_parm*
  store %struct.addBaReq_parm* %24, %struct.addBaReq_parm** %9, align 8
  %25 = load %struct.addBaReq_parm*, %struct.addBaReq_parm** %9, align 8
  %26 = icmp ne %struct.addBaReq_parm* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %29 = call i32 @kfree(%struct.cmd_obj* %28)
  %30 = load i32, i32* @_FAIL, align 4
  store i32 %30, i32* %10, align 4
  br label %48

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.addBaReq_parm*, %struct.addBaReq_parm** %9, align 8
  %34 = getelementptr inbounds %struct.addBaReq_parm, %struct.addBaReq_parm* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.addBaReq_parm*, %struct.addBaReq_parm** %9, align 8
  %36 = getelementptr inbounds %struct.addBaReq_parm, %struct.addBaReq_parm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %42 = load %struct.addBaReq_parm*, %struct.addBaReq_parm** %9, align 8
  %43 = load i32, i32* @_AddBAReq_CMD_, align 4
  %44 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %41, %struct.addBaReq_parm* %42, i32 %43)
  %45 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %47 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %45, %struct.cmd_obj* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %31, %27, %19
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.addBaReq_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
