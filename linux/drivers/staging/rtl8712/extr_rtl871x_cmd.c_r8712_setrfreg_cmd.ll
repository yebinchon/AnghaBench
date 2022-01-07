; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setrfreg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setrfreg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.writeRF_parm = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_SetRFReg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_setrfreg_cmd(%struct._adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_obj*, align 8
  %9 = alloca %struct.writeRF_parm*, align 8
  %10 = alloca %struct.cmd_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct._adapter*, %struct._adapter** %5, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %10, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i8* @kmalloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.cmd_obj*
  store %struct.cmd_obj* %15, %struct.cmd_obj** %8, align 8
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %17 = icmp ne %struct.cmd_obj* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kmalloc(i32 8, i32 %22)
  %24 = bitcast i8* %23 to %struct.writeRF_parm*
  store %struct.writeRF_parm* %24, %struct.writeRF_parm** %9, align 8
  %25 = load %struct.writeRF_parm*, %struct.writeRF_parm** %9, align 8
  %26 = icmp ne %struct.writeRF_parm* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %29 = call i32 @kfree(%struct.cmd_obj* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %21
  %33 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %34 = load %struct.writeRF_parm*, %struct.writeRF_parm** %9, align 8
  %35 = load i32, i32* @_SetRFReg, align 4
  %36 = call i32 @GEN_CMD_CODE(i32 %35)
  %37 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %33, %struct.writeRF_parm* %34, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.writeRF_parm*, %struct.writeRF_parm** %9, align 8
  %40 = getelementptr inbounds %struct.writeRF_parm, %struct.writeRF_parm* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.writeRF_parm*, %struct.writeRF_parm** %9, align 8
  %43 = getelementptr inbounds %struct.writeRF_parm, %struct.writeRF_parm* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cmd_priv*, %struct.cmd_priv** %10, align 8
  %45 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %46 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %44, %struct.cmd_obj* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %27, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.writeRF_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
