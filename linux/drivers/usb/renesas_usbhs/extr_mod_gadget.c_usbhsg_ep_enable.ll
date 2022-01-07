; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usbhsg_uep = type { %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32*, %struct.usbhsg_uep* }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@usbhs_fifo_dma_push_handler = common dso_local global i32 0, align 4
@usbhs_fifo_dma_pop_handler = common dso_local global i32 0, align 4
@BRDYSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @usbhsg_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.usbhsg_uep*, align 8
  %6 = alloca %struct.usbhsg_gpriv*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %11 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %12 = call %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep* %11)
  store %struct.usbhsg_uep* %12, %struct.usbhsg_uep** %5, align 8
  %13 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %14 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %13)
  store %struct.usbhsg_gpriv* %14, %struct.usbhsg_gpriv** %6, align 8
  %15 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %6, align 8
  %16 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %15)
  store %struct.usbhs_priv* %16, %struct.usbhs_priv** %7, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @usbhs_lock(%struct.usbhs_priv* %19, i64 %20)
  %22 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %23 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %22, i32 0, i32 0
  %24 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %23, align 8
  %25 = icmp ne %struct.usbhs_pipe* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %28 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %27, i32 0, i32 0
  %29 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %28, align 8
  %30 = call i32 @usbhs_pipe_clear(%struct.usbhs_pipe* %29)
  %31 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %32 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %31, i32 0, i32 0
  %33 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %32, align 8
  %34 = call i32 @usbhs_pipe_sequence_data0(%struct.usbhs_pipe* %33)
  store i32 0, i32* %9, align 4
  br label %73

35:                                               ; preds = %2
  %36 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %38 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %37)
  %39 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %40 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %39)
  %41 = call %struct.usbhs_pipe* @usbhs_pipe_malloc(%struct.usbhs_priv* %36, i32 %38, i64 %40)
  store %struct.usbhs_pipe* %41, %struct.usbhs_pipe** %8, align 8
  %42 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %43 = icmp ne %struct.usbhs_pipe* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %35
  %45 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %46 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %47 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %46, i32 0, i32 0
  store %struct.usbhs_pipe* %45, %struct.usbhs_pipe** %47, align 8
  %48 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %49 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %50 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %49, i32 0, i32 1
  store %struct.usbhsg_uep* %48, %struct.usbhsg_uep** %50, align 8
  %51 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %53 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %52)
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %55 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %54)
  %56 = call i32 @usbhs_pipe_config_update(%struct.usbhs_pipe* %51, i32 0, i32 %53, i32 %55)
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %58 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %62 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %61, i32 0, i32 0
  store i32* @usbhs_fifo_dma_push_handler, i32** %62, align 8
  br label %71

63:                                               ; preds = %44
  %64 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %65 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %64, i32 0, i32 0
  store i32* @usbhs_fifo_dma_pop_handler, i32** %65, align 8
  %66 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %67 = load i32, i32* @BRDYSTS, align 4
  %68 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %69 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %68)
  %70 = call i32 @usbhs_xxxsts_clear(%struct.usbhs_priv* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %60
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @usbhs_unlock(%struct.usbhs_priv* %74, i64 %75)
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.usbhsg_uep* @usbhsg_ep_to_uep(%struct.usb_ep*) #1

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhs_pipe_clear(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_sequence_data0(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_pipe* @usbhs_pipe_malloc(%struct.usbhs_priv*, i32, i64) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usbhs_pipe_config_update(%struct.usbhs_pipe*, i32, i32, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usbhs_xxxsts_clear(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
