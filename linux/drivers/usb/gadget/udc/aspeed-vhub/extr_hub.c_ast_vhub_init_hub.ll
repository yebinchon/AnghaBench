; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_init_hub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_init_hub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i32, i32 }

@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@ast_vhub_wake_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_init_hub(%struct.ast_vhub* %0) #0 {
  %2 = alloca %struct.ast_vhub*, align 8
  store %struct.ast_vhub* %0, %struct.ast_vhub** %2, align 8
  %3 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %4 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %5 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.ast_vhub*, %struct.ast_vhub** %2, align 8
  %7 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %6, i32 0, i32 0
  %8 = load i32, i32* @ast_vhub_wake_work, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
