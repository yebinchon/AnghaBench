; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_try_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhsg_uep = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usbhsg_uep* }
%struct.usbhs_mod = type { i32, i32 }
%struct.device = type { i32 }

@USBHSG_STATUS_STARTED = common dso_local global i32 0, align 4
@USBHSG_STATUS_REGISTERD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"start gadget\0A\00", align 1
@usbhsg_dma_map_ctrl = common dso_local global i32 0, align 4
@usbhsg_irq_dev_state = common dso_local global i32 0, align 4
@usbhsg_irq_ctrl_stage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, i32)* @usbhsg_try_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_try_start(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbhsg_gpriv*, align 8
  %7 = alloca %struct.usbhsg_uep*, align 8
  %8 = alloca %struct.usbhs_mod*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %13 = call %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv* %12)
  store %struct.usbhsg_gpriv* %13, %struct.usbhsg_gpriv** %6, align 8
  %14 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %15 = call %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv* %14)
  store %struct.usbhsg_uep* %15, %struct.usbhsg_uep** %7, align 8
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %17 = call %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv* %16)
  store %struct.usbhs_mod* %17, %struct.usbhs_mod** %8, align 8
  %18 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %19 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %18)
  store %struct.device* %19, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @usbhs_lock(%struct.usbhs_priv* %20, i64 %21)
  %23 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @usbhsg_status_set(%struct.usbhsg_gpriv* %23, i32 %24)
  %26 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %27 = load i32, i32* @USBHSG_STATUS_STARTED, align 4
  %28 = call i64 @usbhsg_status_has(%struct.usbhsg_gpriv* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %32 = load i32, i32* @USBHSG_STATUS_REGISTERD, align 4
  %33 = call i64 @usbhsg_status_has(%struct.usbhsg_gpriv* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %2
  store i32 -1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @usbhs_unlock(%struct.usbhs_priv* %37, i64 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %47 = call i32 @usbhs_fifo_init(%struct.usbhs_priv* %46)
  %48 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %49 = load i32, i32* @usbhsg_dma_map_ctrl, align 4
  %50 = call i32 @usbhs_pipe_init(%struct.usbhs_priv* %48, i32 %49)
  %51 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %52 = call %struct.TYPE_3__* @usbhs_dcp_malloc(%struct.usbhs_priv* %51)
  %53 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %54 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %53, i32 0, i32 0
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %56 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %57 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.usbhsg_uep* %55, %struct.usbhsg_uep** %59, align 8
  %60 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %61 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @usbhs_pipe_config_update(%struct.TYPE_3__* %62, i32 0, i32 0, i32 64)
  %64 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %65 = call i32 @usbhs_sys_function_ctrl(%struct.usbhs_priv* %64, i32 1)
  %66 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %67 = call i32 @usbhsg_update_pullup(%struct.usbhs_priv* %66)
  %68 = load i32, i32* @usbhsg_irq_dev_state, align 4
  %69 = load %struct.usbhs_mod*, %struct.usbhs_mod** %8, align 8
  %70 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @usbhsg_irq_ctrl_stage, align 4
  %72 = load %struct.usbhs_mod*, %struct.usbhs_mod** %8, align 8
  %73 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %75 = load %struct.usbhs_mod*, %struct.usbhs_mod** %8, align 8
  %76 = call i32 @usbhs_irq_callback_update(%struct.usbhs_priv* %74, %struct.usbhs_mod* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %43, %42
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhsg_status_set(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i64 @usbhsg_status_has(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @usbhs_fifo_init(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_init(%struct.usbhs_priv*, i32) #1

declare dso_local %struct.TYPE_3__* @usbhs_dcp_malloc(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_config_update(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @usbhs_sys_function_ctrl(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsg_update_pullup(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_irq_callback_update(%struct.usbhs_priv*, %struct.usbhs_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
