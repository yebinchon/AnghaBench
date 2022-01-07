; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_usb2_udc.h_get_qh_by_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_usb2_udc.h_get_qh_by_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_queue_head = type { i32 }
%struct.fsl_ep = type { %struct.TYPE_2__*, %struct.ep_queue_head* }
%struct.TYPE_2__ = type { i64, %struct.ep_queue_head* }

@USB_DIR_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ep_queue_head* (%struct.fsl_ep*)* @get_qh_by_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ep_queue_head* @get_qh_by_ep(%struct.fsl_ep* %0) #0 {
  %2 = alloca %struct.ep_queue_head*, align 8
  %3 = alloca %struct.fsl_ep*, align 8
  store %struct.fsl_ep* %0, %struct.fsl_ep** %3, align 8
  %4 = load %struct.fsl_ep*, %struct.fsl_ep** %3, align 8
  %5 = call i64 @ep_index(%struct.fsl_ep* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.fsl_ep*, %struct.fsl_ep** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %8, i32 0, i32 1
  %10 = load %struct.ep_queue_head*, %struct.ep_queue_head** %9, align 8
  store %struct.ep_queue_head* %10, %struct.ep_queue_head** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.fsl_ep*, %struct.fsl_ep** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.ep_queue_head*, %struct.ep_queue_head** %15, align 8
  %17 = load %struct.fsl_ep*, %struct.fsl_ep** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_DIR_IN, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %16, i64 %26
  store %struct.ep_queue_head* %27, %struct.ep_queue_head** %2, align 8
  br label %28

28:                                               ; preds = %11, %7
  %29 = load %struct.ep_queue_head*, %struct.ep_queue_head** %2, align 8
  ret %struct.ep_queue_head* %29
}

declare dso_local i64 @ep_index(%struct.fsl_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
