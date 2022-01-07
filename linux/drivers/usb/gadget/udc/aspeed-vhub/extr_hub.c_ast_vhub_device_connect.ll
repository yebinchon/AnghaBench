; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_device_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_hub.c_ast_vhub_device_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { i64 }

@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_device_connect(%struct.ast_vhub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ast_vhub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ast_vhub* %0, %struct.ast_vhub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %13 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %10, i32 %11, i32 0, i32 %12, i32 1)
  br label %21

14:                                               ; preds = %3
  %15 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %18 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ast_vhub_change_port_stat(%struct.ast_vhub* %15, i32 %16, i32 %19, i32 0, i32 1)
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %23 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %28 = call i32 @ast_vhub_send_host_wakeup(%struct.ast_vhub* %27)
  br label %29

29:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @ast_vhub_change_port_stat(%struct.ast_vhub*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_vhub_send_host_wakeup(%struct.ast_vhub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
