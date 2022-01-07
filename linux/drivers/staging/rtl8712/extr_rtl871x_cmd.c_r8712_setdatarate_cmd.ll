; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setdatarate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setdatarate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.setdatarate_parm = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_SetDataRate = common dso_local global i32 0, align 4
@NumRates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_setdatarate_cmd(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cmd_obj*, align 8
  %7 = alloca %struct.setdatarate_parm*, align 8
  %8 = alloca %struct.cmd_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %8, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i8* @kmalloc(i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %6, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %15 = icmp ne %struct.cmd_obj* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kmalloc(i32 8, i32 %20)
  %22 = bitcast i8* %21 to %struct.setdatarate_parm*
  store %struct.setdatarate_parm* %22, %struct.setdatarate_parm** %7, align 8
  %23 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %7, align 8
  %24 = icmp ne %struct.setdatarate_parm* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %27 = call i32 @kfree(%struct.cmd_obj* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %19
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %32 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %7, align 8
  %33 = load i32, i32* @_SetDataRate, align 4
  %34 = call i32 @GEN_CMD_CODE(i32 %33)
  %35 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %31, %struct.setdatarate_parm* %32, i32 %34)
  %36 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %7, align 8
  %37 = getelementptr inbounds %struct.setdatarate_parm, %struct.setdatarate_parm* %36, i32 0, i32 0
  store i32 5, i32* %37, align 4
  %38 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %7, align 8
  %39 = getelementptr inbounds %struct.setdatarate_parm, %struct.setdatarate_parm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @NumRates, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.cmd_priv*, %struct.cmd_priv** %8, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %46 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %44, %struct.cmd_obj* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %25, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.setdatarate_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
