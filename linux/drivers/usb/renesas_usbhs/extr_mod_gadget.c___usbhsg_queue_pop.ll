; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c___usbhsg_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsg_uep = type { i32 }
%struct.usbhsg_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_pipe = type { i32 }
%struct.device = type { i32 }
%struct.usbhs_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"pipe %d : queue pop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhsg_uep*, %struct.usbhsg_request*, i32)* @__usbhsg_queue_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usbhsg_queue_pop(%struct.usbhsg_uep* %0, %struct.usbhsg_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usbhsg_uep*, align 8
  %5 = alloca %struct.usbhsg_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhsg_gpriv*, align 8
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.usbhs_priv*, align 8
  store %struct.usbhsg_uep* %0, %struct.usbhsg_uep** %4, align 8
  store %struct.usbhsg_request* %1, %struct.usbhsg_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %4, align 8
  %12 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %11)
  store %struct.usbhsg_gpriv* %12, %struct.usbhsg_gpriv** %7, align 8
  %13 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %4, align 8
  %14 = call %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep* %13)
  store %struct.usbhs_pipe* %14, %struct.usbhs_pipe** %8, align 8
  %15 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %7, align 8
  %16 = call %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv* %15)
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %7, align 8
  %18 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %17)
  store %struct.usbhs_priv* %18, %struct.usbhs_priv** %10, align 8
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %20 = icmp ne %struct.usbhs_pipe* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %24 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %23)
  %25 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.usbhsg_request*, %struct.usbhsg_request** %5, align 8
  %29 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.usbhs_priv*, %struct.usbhs_priv** %10, align 8
  %32 = call i32 @usbhs_priv_to_lock(%struct.usbhs_priv* %31)
  %33 = call i32 @spin_unlock(i32 %32)
  %34 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %4, align 8
  %35 = getelementptr inbounds %struct.usbhsg_uep, %struct.usbhsg_uep* %34, i32 0, i32 0
  %36 = load %struct.usbhsg_request*, %struct.usbhsg_request** %5, align 8
  %37 = getelementptr inbounds %struct.usbhsg_request, %struct.usbhsg_request* %36, i32 0, i32 0
  %38 = call i32 @usb_gadget_giveback_request(i32* %35, %struct.TYPE_2__* %37)
  %39 = load %struct.usbhs_priv*, %struct.usbhs_priv** %10, align 8
  %40 = call i32 @usbhs_priv_to_lock(%struct.usbhs_priv* %39)
  %41 = call i32 @spin_lock(i32 %40)
  ret void
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local %struct.usbhs_pipe* @usbhsg_uep_to_pipe(%struct.usbhsg_uep*) #1

declare dso_local %struct.device* @usbhsg_gpriv_to_dev(%struct.usbhsg_gpriv*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @usbhs_priv_to_lock(%struct.usbhs_priv*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
