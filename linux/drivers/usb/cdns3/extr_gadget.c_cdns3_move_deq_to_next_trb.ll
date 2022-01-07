; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_move_deq_to_next_trb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_move_deq_to_next_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_request = type { i32, i32, %struct.cdns3_endpoint* }
%struct.cdns3_endpoint = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_move_deq_to_next_trb(%struct.cdns3_request* %0) #0 {
  %2 = alloca %struct.cdns3_request*, align 8
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3_request* %0, %struct.cdns3_request** %2, align 8
  %5 = load %struct.cdns3_request*, %struct.cdns3_request** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %5, i32 0, i32 2
  %7 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  store %struct.cdns3_endpoint* %7, %struct.cdns3_endpoint** %3, align 8
  %8 = load %struct.cdns3_request*, %struct.cdns3_request** %2, align 8
  %9 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %17, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cdns3_request*, %struct.cdns3_request** %2, align 8
  %14 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %19 = call i32 @cdns3_ep_inc_deq(%struct.cdns3_endpoint* %18)
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %25 = call i32 @cdns3_ep_inc_deq(%struct.cdns3_endpoint* %24)
  ret void
}

declare dso_local i32 @cdns3_ep_inc_deq(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
