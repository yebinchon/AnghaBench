; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disassoc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disassoc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.disconnect_parm = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_DisConnect_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_disassoc_cmd(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.disconnect_parm*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  store %struct.cmd_priv* %7, %struct.cmd_priv** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i8* @kmalloc(i32 4, i32 %8)
  %10 = bitcast i8* %9 to %struct.cmd_obj*
  store %struct.cmd_obj* %10, %struct.cmd_obj** %3, align 8
  %11 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %12 = icmp ne %struct.cmd_obj* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i8* @kmalloc(i32 4, i32 %15)
  %17 = bitcast i8* %16 to %struct.disconnect_parm*
  store %struct.disconnect_parm* %17, %struct.disconnect_parm** %4, align 8
  %18 = load %struct.disconnect_parm*, %struct.disconnect_parm** %4, align 8
  %19 = icmp ne %struct.disconnect_parm* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %22 = call i32 @kfree(%struct.cmd_obj* %21)
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %25 = load %struct.disconnect_parm*, %struct.disconnect_parm** %4, align 8
  %26 = load i32, i32* @_DisConnect_CMD_, align 4
  %27 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %24, %struct.disconnect_parm* %25, i32 %26)
  %28 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %30 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %28, %struct.cmd_obj* %29)
  br label %31

31:                                               ; preds = %23, %20, %13
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.disconnect_parm*, i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
