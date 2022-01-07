; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setMacAddr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setMacAddr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.SetMacAddr_param = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_SetMacAddress_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_setMacAddr_cmd(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  %6 = alloca %struct.cmd_obj*, align 8
  %7 = alloca %struct.SetMacAddr_param*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.cmd_priv* %9, %struct.cmd_priv** %5, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i8* @kmalloc(i32 4, i32 %10)
  %12 = bitcast i8* %11 to %struct.cmd_obj*
  store %struct.cmd_obj* %12, %struct.cmd_obj** %6, align 8
  %13 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %14 = icmp ne %struct.cmd_obj* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @kmalloc(i32 4, i32 %17)
  %19 = bitcast i8* %18 to %struct.SetMacAddr_param*
  store %struct.SetMacAddr_param* %19, %struct.SetMacAddr_param** %7, align 8
  %20 = load %struct.SetMacAddr_param*, %struct.SetMacAddr_param** %7, align 8
  %21 = icmp ne %struct.SetMacAddr_param* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %24 = call i32 @kfree(%struct.cmd_obj* %23)
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %27 = load %struct.SetMacAddr_param*, %struct.SetMacAddr_param** %7, align 8
  %28 = load i32, i32* @_SetMacAddress_CMD_, align 4
  %29 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %26, %struct.SetMacAddr_param* %27, i32 %28)
  %30 = load %struct.SetMacAddr_param*, %struct.SetMacAddr_param** %7, align 8
  %31 = getelementptr inbounds %struct.SetMacAddr_param, %struct.SetMacAddr_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ether_addr_copy(i32 %32, i32* %33)
  %35 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %36 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %37 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %35, %struct.cmd_obj* %36)
  br label %38

38:                                               ; preds = %25, %22, %15
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.SetMacAddr_param*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
