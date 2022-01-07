; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disconnectCtrlEx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disconnectCtrlEx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.DisconnectCtrlEx_param = type { i8, i8, i8, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_DisconnectCtrlEx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_disconnectCtrlEx_cmd(%struct._adapter* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cmd_obj*, align 8
  %12 = alloca %struct.DisconnectCtrlEx_param*, align 8
  %13 = alloca %struct.cmd_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct._adapter*, %struct._adapter** %6, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 0
  store %struct.cmd_priv* %15, %struct.cmd_priv** %13, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.cmd_obj* @kmalloc(i32 4, i32 %16)
  store %struct.cmd_obj* %17, %struct.cmd_obj** %11, align 8
  %18 = load %struct.cmd_obj*, %struct.cmd_obj** %11, align 8
  %19 = icmp ne %struct.cmd_obj* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %54

21:                                               ; preds = %5
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.DisconnectCtrlEx_param* @kzalloc(i32 8, i32 %22)
  store %struct.DisconnectCtrlEx_param* %23, %struct.DisconnectCtrlEx_param** %12, align 8
  %24 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %25 = icmp ne %struct.DisconnectCtrlEx_param* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.cmd_obj*, %struct.cmd_obj** %11, align 8
  %28 = call i32 @kfree(%struct.cmd_obj* %27)
  br label %54

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i8
  %32 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %33 = getelementptr inbounds %struct.DisconnectCtrlEx_param, %struct.DisconnectCtrlEx_param* %32, i32 0, i32 0
  store i8 %31, i8* %33, align 4
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i8
  %36 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %37 = getelementptr inbounds %struct.DisconnectCtrlEx_param, %struct.DisconnectCtrlEx_param* %36, i32 0, i32 1
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i8
  %40 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %41 = getelementptr inbounds %struct.DisconnectCtrlEx_param, %struct.DisconnectCtrlEx_param* %40, i32 0, i32 2
  store i8 %39, i8* %41, align 2
  %42 = load i64, i64* %10, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %45 = getelementptr inbounds %struct.DisconnectCtrlEx_param, %struct.DisconnectCtrlEx_param* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cmd_obj*, %struct.cmd_obj** %11, align 8
  %47 = load %struct.DisconnectCtrlEx_param*, %struct.DisconnectCtrlEx_param** %12, align 8
  %48 = load i32, i32* @_DisconnectCtrlEx, align 4
  %49 = call i32 @GEN_CMD_CODE(i32 %48)
  %50 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %46, %struct.DisconnectCtrlEx_param* %47, i32 %49)
  %51 = load %struct.cmd_priv*, %struct.cmd_priv** %13, align 8
  %52 = load %struct.cmd_obj*, %struct.cmd_obj** %11, align 8
  %53 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %51, %struct.cmd_obj* %52)
  br label %54

54:                                               ; preds = %29, %26, %20
  ret void
}

declare dso_local %struct.cmd_obj* @kmalloc(i32, i32) #1

declare dso_local %struct.DisconnectCtrlEx_param* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.DisconnectCtrlEx_param*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
