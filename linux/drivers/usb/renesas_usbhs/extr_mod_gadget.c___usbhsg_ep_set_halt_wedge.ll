; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_ep_set_halt_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_ep_set_halt_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usbhs_pipe = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"set halt %d (pipe %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@USBHSG_STATUS_WEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, i32, i32)* @__usbhsg_ep_set_halt_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__usbhsg_ep_set_halt_wedge(%struct.usb_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhsg_uep*, align 8
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca %struct.usbhsg_gpriv*, align 8
  %10 = alloca %struct.usbhs_priv*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = call %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep* %14)
  store %struct.usbhsg_uep* %15, %struct.usbhsg_uep** %7, align 8
  %16 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %17 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %16)
  store %struct.usbhs_pipe* %17, %struct.usbhs_pipe** %8, align 8
  %18 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %7, align 8
  %19 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %18)
  store %struct.usbhsg_gpriv* %19, %struct.usbhsg_gpriv** %9, align 8
  %20 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %21 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %20)
  store %struct.usbhs_priv* %21, %struct.usbhs_priv** %10, align 8
  %22 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %23 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %22)
  store %struct.device* %23, %struct.device** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.device*, %struct.device** %11, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %27 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %26)
  %28 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load %struct.usbhs_priv*, %struct.usbhs_priv** %10, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @usbhs_lock(%struct.usbhs_priv* %29, i64 %30)
  %32 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %33 = call i32 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %3
  %36 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %37 = call i64 @__usbhsf_pkt_get(%struct.usbhs_pipe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %41 = call i64 @usbhs_pipe_contains_transmittable_data(%struct.usbhs_pipe* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %70

46:                                               ; preds = %39, %3
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %51 = call i32 @usbhs_pipe_stall(%struct.usbhs_pipe* %50)
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %54 = call i32 @usbhs_pipe_disable(%struct.usbhs_pipe* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %63 = load i32, i32* @USBHSG_STATUS_WEDGE, align 4
  %64 = call i32 @usbhsg_status_set(%struct.usbhsg_gpriv* %62, i32 %63)
  br label %69

65:                                               ; preds = %58, %55
  %66 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %9, align 8
  %67 = load i32, i32* @USBHSG_STATUS_WEDGE, align 4
  %68 = call i32 @usbhsg_status_clr(%struct.usbhsg_gpriv* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %43
  %71 = load %struct.usbhs_priv*, %struct.usbhs_priv** %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @usbhs_unlock(%struct.usbhs_priv* %71, i64 %72)
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

declare dso_local %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe*) #1

declare dso_local i64 @__usbhsf_pkt_get(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_contains_transmittable_data(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_stall(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_disable(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsg_status_set(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhsg_status_clr(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
