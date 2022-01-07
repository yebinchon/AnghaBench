; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetChannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__, %struct.cmd_priv }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.SetChannel_parm = type { i32 }

@_SetChannel = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SetChannel(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.cmd_priv*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.SetChannel_parm*, align 8
  %6 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %7 = load %struct._adapter*, %struct._adapter** %2, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 1
  store %struct.cmd_priv* %8, %struct.cmd_priv** %3, align 8
  store %struct.cmd_obj* null, %struct.cmd_obj** %4, align 8
  store %struct.SetChannel_parm* null, %struct.SetChannel_parm** %5, align 8
  %9 = load i32, i32* @_SetChannel, align 4
  %10 = call i32 @GEN_CMD_CODE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i8* @kmalloc(i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %4, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %15 = icmp ne %struct.cmd_obj* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8* @kmalloc(i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.SetChannel_parm*
  store %struct.SetChannel_parm* %20, %struct.SetChannel_parm** %5, align 8
  %21 = load %struct.SetChannel_parm*, %struct.SetChannel_parm** %5, align 8
  %22 = icmp ne %struct.SetChannel_parm* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %25 = call i32 @kfree(%struct.cmd_obj* %24)
  br label %40

26:                                               ; preds = %17
  %27 = load %struct._adapter*, %struct._adapter** %2, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SetChannel_parm*, %struct.SetChannel_parm** %5, align 8
  %32 = getelementptr inbounds %struct.SetChannel_parm, %struct.SetChannel_parm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %34 = load %struct.SetChannel_parm*, %struct.SetChannel_parm** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %33, %struct.SetChannel_parm* %34, i32 %35)
  %37 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %38 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %39 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %37, %struct.cmd_obj* %38)
  br label %40

40:                                               ; preds = %26, %23, %16
  ret void
}

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.SetChannel_parm*, i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
