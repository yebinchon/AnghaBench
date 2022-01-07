; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_request_done_pipen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_request_done_pipen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }
%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, %struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32)* @usb3_request_done_pipen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_request_done_pipen(%struct.renesas_usb3* %0, %struct.renesas_usb3_ep* %1, %struct.renesas_usb3_request* %2, i32 %3) #0 {
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca %struct.renesas_usb3_ep*, align 8
  %7 = alloca %struct.renesas_usb3_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %5, align 8
  store %struct.renesas_usb3_ep* %1, %struct.renesas_usb3_ep** %6, align 8
  store %struct.renesas_usb3_request* %2, %struct.renesas_usb3_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %11 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %15 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %16 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @usb3_pn_change(%struct.renesas_usb3* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %22 = call i32 @usb3_pn_stop(%struct.renesas_usb3* %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %25 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %29 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %30 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb3_disable_pipe_irq(%struct.renesas_usb3* %28, i32 %31)
  %33 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %34 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @usb3_request_done(%struct.renesas_usb3_ep* %33, %struct.renesas_usb3_request* %34, i32 %35)
  %37 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %38 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %37)
  store %struct.renesas_usb3_request* %38, %struct.renesas_usb3_request** %7, align 8
  %39 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %7, align 8
  %40 = icmp ne %struct.renesas_usb3_request* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %43 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %7, align 8
  %44 = call i32 @usb3_start_pipen(%struct.renesas_usb3_ep* %42, %struct.renesas_usb3_request* %43)
  br label %45

45:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_pn_stop(%struct.renesas_usb3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb3_disable_pipe_irq(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_request_done(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_start_pipen(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
