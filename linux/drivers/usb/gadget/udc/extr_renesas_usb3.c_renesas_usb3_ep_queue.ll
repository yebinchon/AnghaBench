; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32, i32 }
%struct.renesas_usb3_ep = type { i32, i32 }
%struct.renesas_usb3_request = type { i32 }
%struct.renesas_usb3 = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ep_queue: ep%2d, %u\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @renesas_usb3_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.renesas_usb3_ep*, align 8
  %8 = alloca %struct.renesas_usb3_request*, align 8
  %9 = alloca %struct.renesas_usb3*, align 8
  %10 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %12 = call %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep* %11)
  store %struct.renesas_usb3_ep* %12, %struct.renesas_usb3_ep** %7, align 8
  %13 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %14 = call %struct.renesas_usb3_request* @usb_req_to_usb3_req(%struct.usb_request* %13)
  store %struct.renesas_usb3_request* %14, %struct.renesas_usb3_request** %8, align 8
  %15 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %16 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %15)
  store %struct.renesas_usb3* %16, %struct.renesas_usb3** %9, align 8
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %9, align 8
  %18 = call i32 @usb3_to_dev(%struct.renesas_usb3* %17)
  %19 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %20 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* @EINPROGRESS, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.renesas_usb3*, %struct.renesas_usb3** %9, align 8
  %33 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %8, align 8
  %37 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %36, i32 0, i32 0
  %38 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %39 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.renesas_usb3*, %struct.renesas_usb3** %9, align 8
  %42 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %46 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %3
  %50 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %51 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %8, align 8
  %52 = call i32 @usb3_start_pipe0(%struct.renesas_usb3_ep* %50, %struct.renesas_usb3_request* %51)
  br label %57

53:                                               ; preds = %3
  %54 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %7, align 8
  %55 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %8, align 8
  %56 = call i32 @usb3_start_pipen(%struct.renesas_usb3_ep* %54, %struct.renesas_usb3_request* %55)
  br label %57

57:                                               ; preds = %53, %49
  ret i32 0
}

declare dso_local %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep*) #1

declare dso_local %struct.renesas_usb3_request* @usb_req_to_usb3_req(%struct.usb_request*) #1

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb3_to_dev(%struct.renesas_usb3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb3_start_pipe0(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_start_pipen(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
