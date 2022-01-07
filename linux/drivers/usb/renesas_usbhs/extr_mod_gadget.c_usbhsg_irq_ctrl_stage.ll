; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_irq_ctrl_stage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_irq_ctrl_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_recip_handle = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_irq_state = type { i32 }
%struct.usbhsg_gpriv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhs_pipe = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"stage = %d\0A\00", align 1
@usbhs_fifo_pio_push_handler = common dso_local global i32 0, align 4
@usbhs_fifo_pio_pop_handler = common dso_local global i32 0, align 4
@usbhs_ctrl_stage_end_handler = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@req_clear_feature = common dso_local global %struct.usbhsg_recip_handle zeroinitializer, align 4
@req_set_feature = common dso_local global %struct.usbhsg_recip_handle zeroinitializer, align 4
@req_get_status = common dso_local global %struct.usbhsg_recip_handle zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, %struct.usbhs_irq_state*)* @usbhsg_irq_ctrl_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_irq_ctrl_stage(%struct.usbhs_priv* %0, %struct.usbhs_irq_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.usbhs_irq_state*, align 8
  %6 = alloca %struct.usbhsg_gpriv*, align 8
  %7 = alloca %struct.usbhsg_uep*, align 8
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.usb_ctrlrequest, align 4
  %11 = alloca %struct.usbhsg_recip_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store %struct.usbhs_irq_state* %1, %struct.usbhs_irq_state** %5, align 8
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %15 = call %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv* %14)
  store %struct.usbhsg_gpriv* %15, %struct.usbhsg_gpriv** %6, align 8
  %16 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %17 = call %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv* %16)
  store %struct.usbhsg_uep* %17, %struct.usbhsg_uep** %7, align 8
  %18 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %19 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %18)
  store %struct.usbhs_pipe* %19, %struct.usbhs_pipe** %8, align 8
  %20 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %21 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %20)
  store %struct.device* %21, %struct.device** %9, align 8
  store %struct.usbhsg_recip_handle* null, %struct.usbhsg_recip_handle** %11, align 8
  %22 = load %struct.usbhs_irq_state*, %struct.usbhs_irq_state** %5, align 8
  %23 = call i32 @usbhs_status_get_ctrl_stage(%struct.usbhs_irq_state* %22)
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %40 [
    i32 135, label %28
    i32 129, label %31
    i32 136, label %34
    i32 134, label %37
    i32 128, label %37
  ]

28:                                               ; preds = %2
  %29 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %30 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %29, i32 0, i32 0
  store i32* @usbhs_fifo_pio_push_handler, i32** %30, align 8
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %33 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %32, i32 0, i32 0
  store i32* @usbhs_fifo_pio_pop_handler, i32** %33, align 8
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %36 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %35, i32 0, i32 0
  store i32* @usbhs_ctrl_stage_end_handler, i32** %36, align 8
  br label %42

37:                                               ; preds = %2, %2
  %38 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %39 = call i32 @usbhs_dcp_control_transfer_done(%struct.usbhs_pipe* %38)
  br label %40

40:                                               ; preds = %2, %37
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %34, %31, %28
  %43 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %44 = call i32 @usbhs_usbreq_get_val(%struct.usbhs_priv* %43, %struct.usb_ctrlrequest* %10)
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @USB_TYPE_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %56 [
    i32 130, label %49
  ]

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %55 [
    i32 133, label %52
    i32 131, label %53
    i32 132, label %54
  ]

52:                                               ; preds = %49
  store %struct.usbhsg_recip_handle* @req_clear_feature, %struct.usbhsg_recip_handle** %11, align 8
  br label %55

53:                                               ; preds = %49
  store %struct.usbhsg_recip_handle* @req_set_feature, %struct.usbhsg_recip_handle** %11, align 8
  br label %55

54:                                               ; preds = %49
  store %struct.usbhsg_recip_handle* @req_get_status, %struct.usbhsg_recip_handle** %11, align 8
  br label %55

55:                                               ; preds = %49, %54, %53, %52
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %11, align 8
  %58 = icmp ne %struct.usbhsg_recip_handle* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %61 = load %struct.usbhsg_recip_handle*, %struct.usbhsg_recip_handle** %11, align 8
  %62 = call i32 @usbhsg_recip_run_handle(%struct.usbhs_priv* %60, %struct.usbhsg_recip_handle* %61, %struct.usb_ctrlrequest* %10)
  store i32 %62, i32* %13, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %65 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %67, align 8
  %69 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %70 = getelementptr inbounds %struct.usbhsg_gpriv, %struct.usbhsg_gpriv* %69, i32 0, i32 0
  %71 = call i32 %68(i32* %70, %struct.usb_ctrlrequest* %10)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %63, %59
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %77 = call i32 @usbhs_pipe_stall(%struct.usbhs_pipe* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %40
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_priv_to_gpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhsg_uep* @usbhsg_gpriv_to_dcp(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @usbhs_status_get_ctrl_stage(%struct.usbhs_irq_state*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbhs_dcp_control_transfer_done(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_usbreq_get_val(%struct.usbhs_priv*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usbhsg_recip_run_handle(%struct.usbhs_priv*, %struct.usbhsg_recip_handle*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usbhs_pipe_stall(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
