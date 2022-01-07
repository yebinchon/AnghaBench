; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.ast_vhub_req = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_free_request(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.ast_vhub_req*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %7 = call %struct.ast_vhub_req* @to_ast_req(%struct.usb_request* %6)
  store %struct.ast_vhub_req* %7, %struct.ast_vhub_req** %5, align 8
  %8 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %9 = call i32 @kfree(%struct.ast_vhub_req* %8)
  ret void
}

declare dso_local %struct.ast_vhub_req* @to_ast_req(%struct.usb_request*) #1

declare dso_local i32 @kfree(%struct.ast_vhub_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
