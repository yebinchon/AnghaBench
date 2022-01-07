; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_free_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_free_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_port*)* @gserial_free_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gserial_free_port(%struct.gs_port* %0) #0 {
  %2 = alloca %struct.gs_port*, align 8
  store %struct.gs_port* %0, %struct.gs_port** %2, align 8
  %3 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %4 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %3, i32 0, i32 3
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %7 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %10 = call i32 @gs_closed(%struct.gs_port* %9)
  %11 = call i32 @wait_event(i32 %8, i32 %10)
  %12 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %13 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 0
  %20 = call i32 @tty_port_destroy(i32* %19)
  %21 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %22 = call i32 @kfree(%struct.gs_port* %21)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @gs_closed(%struct.gs_port*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.gs_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
