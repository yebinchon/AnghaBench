; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_setopmode_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_setopmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.setopmode_parm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@_SetOpMode_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_setopmode_cmd(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_obj*, align 8
  %7 = alloca %struct.setopmode_parm*, align 8
  %8 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %8, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.setopmode_parm* @kzalloc(i32 4, i32 %11)
  %13 = bitcast %struct.setopmode_parm* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.setopmode_parm* @kzalloc(i32 4, i32 %14)
  store %struct.setopmode_parm* %15, %struct.setopmode_parm** %7, align 8
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %17 = icmp ne %struct.cmd_obj* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.setopmode_parm*, %struct.setopmode_parm** %7, align 8
  %20 = icmp ne %struct.setopmode_parm* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %23 = bitcast %struct.cmd_obj* %22 to %struct.setopmode_parm*
  %24 = call i32 @kfree(%struct.setopmode_parm* %23)
  %25 = load %struct.setopmode_parm*, %struct.setopmode_parm** %7, align 8
  %26 = call i32 @kfree(%struct.setopmode_parm* %25)
  store i32 0, i32* %3, align 4
  br label %40

27:                                               ; preds = %18
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %29 = bitcast %struct.cmd_obj* %28 to %struct.setopmode_parm*
  %30 = load %struct.setopmode_parm*, %struct.setopmode_parm** %7, align 8
  %31 = load i32, i32* @_SetOpMode_CMD_, align 4
  %32 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.setopmode_parm* %29, %struct.setopmode_parm* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.setopmode_parm*, %struct.setopmode_parm** %7, align 8
  %35 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cmd_priv*, %struct.cmd_priv** %8, align 8
  %37 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %38 = bitcast %struct.cmd_obj* %37 to %struct.setopmode_parm*
  %39 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %36, %struct.setopmode_parm* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.setopmode_parm* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.setopmode_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.setopmode_parm*, %struct.setopmode_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.setopmode_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
