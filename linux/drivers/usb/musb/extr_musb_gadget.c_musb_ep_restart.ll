; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_ep_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_ep_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }
%struct.musb_request = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_ep_restart(%struct.musb* %0, %struct.musb_request* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.musb_request*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.musb_request* %1, %struct.musb_request** %4, align 8
  %5 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %6 = call i32 @trace_musb_req_start(%struct.musb_request* %5)
  %7 = load %struct.musb*, %struct.musb** %3, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %11 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @musb_ep_select(i32 %9, i32 %12)
  %14 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %15 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.musb*, %struct.musb** %3, align 8
  %20 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %21 = call i32 @txstate(%struct.musb* %19, %struct.musb_request* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = load %struct.musb_request*, %struct.musb_request** %4, align 8
  %25 = call i32 @rxstate(%struct.musb* %23, %struct.musb_request* %24)
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @trace_musb_req_start(%struct.musb_request*) #1

declare dso_local i32 @musb_ep_select(i32, i32) #1

declare dso_local i32 @txstate(%struct.musb*, %struct.musb_request*) #1

declare dso_local i32 @rxstate(%struct.musb*, %struct.musb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
