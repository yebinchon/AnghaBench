; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c___usb3_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c___usb3_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i32, i32 }
%struct.renesas_usb3_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.renesas_usb3 = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"giveback: ep%2d, %u, %u, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*, i32)* @__usb3_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usb3_request_done(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1, i32 %2) #0 {
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  %5 = alloca %struct.renesas_usb3_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %4, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %9 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %8)
  store %struct.renesas_usb3* %9, %struct.renesas_usb3** %7, align 8
  %10 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %11 = call i32 @usb3_to_dev(%struct.renesas_usb3* %10)
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %16 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %20 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %27 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %30 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %32 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %31, i32 0, i32 1
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %38 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %37, i32 0, i32 1
  %39 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %40 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %39, i32 0, i32 0
  %41 = call i32 @usb_gadget_giveback_request(i32* %38, %struct.TYPE_2__* %40)
  %42 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %43 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb3_to_dev(%struct.renesas_usb3*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
