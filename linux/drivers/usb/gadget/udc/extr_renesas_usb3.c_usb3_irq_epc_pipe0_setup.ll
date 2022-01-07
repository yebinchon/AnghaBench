; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc_pipe0_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32 }
%struct.renesas_usb3_ep = type { i64 }

@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_irq_epc_pipe0_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc_pipe0_setup(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca %struct.usb_ctrlrequest, align 4
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %5, i32 0)
  store %struct.renesas_usb3_ep* %6, %struct.renesas_usb3_ep** %4, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %8 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %13 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %14 = call i32 @usb3_get_request(%struct.renesas_usb3_ep* %13)
  %15 = load i32, i32* @ECONNRESET, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @usb3_request_done(%struct.renesas_usb3_ep* %12, i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %20 = call i32 @usb3_p0_con_clear_buffer(%struct.renesas_usb3* %19)
  %21 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %22 = call i32 @usb3_get_setup_data(%struct.renesas_usb3* %21, %struct.usb_ctrlrequest* %3)
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %24 = call i32 @usb3_handle_standard_request(%struct.renesas_usb3* %23, %struct.usb_ctrlrequest* %3)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %18
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %28 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (i32*, %struct.usb_ctrlrequest*)*, i64 (i32*, %struct.usb_ctrlrequest*)** %30, align 8
  %32 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %33 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %32, i32 0, i32 0
  %34 = call i64 %31(i32* %33, %struct.usb_ctrlrequest* %3)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %38 = call i32 @usb3_set_p0_con_stall(%struct.renesas_usb3* %37)
  br label %39

39:                                               ; preds = %36, %26
  br label %40

40:                                               ; preds = %39, %18
  ret void
}

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_request_done(%struct.renesas_usb3_ep*, i32, i32) #1

declare dso_local i32 @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_p0_con_clear_buffer(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_get_setup_data(%struct.renesas_usb3*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb3_handle_standard_request(%struct.renesas_usb3*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb3_set_p0_con_stall(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
