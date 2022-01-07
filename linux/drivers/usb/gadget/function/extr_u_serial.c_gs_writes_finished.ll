; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_writes_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_writes_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_port*)* @gs_writes_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_writes_finished(%struct.gs_port* %0) #0 {
  %2 = alloca %struct.gs_port*, align 8
  %3 = alloca i32, align 4
  store %struct.gs_port* %0, %struct.gs_port** %2, align 8
  %4 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %5 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %8 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %13 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %12, i32 0, i32 1
  %14 = call i32 @kfifo_len(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct.gs_port*, %struct.gs_port** %2, align 8
  %21 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
