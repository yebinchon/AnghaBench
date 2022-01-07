; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_kick_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_kick_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { %struct.TYPE_5__, i32, i32, %struct.vio_driver_state }
%struct.TYPE_5__ = type { i64 }
%struct.vio_driver_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcc_port*)* @vcc_kick_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_kick_rx(%struct.vcc_port* %0) #0 {
  %2 = alloca %struct.vcc_port*, align 8
  %3 = alloca %struct.vio_driver_state*, align 8
  store %struct.vcc_port* %0, %struct.vcc_port** %2, align 8
  %4 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %5 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %4, i32 0, i32 3
  store %struct.vio_driver_state* %5, %struct.vio_driver_state** %3, align 8
  %6 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %7 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %6, i32 0, i32 2
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %10 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %9, i32 0, i32 0
  %11 = call i32 @timer_pending(%struct.TYPE_5__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %1
  %14 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %15 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %20 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @disable_irq_nosync(i32 %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %28 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %31 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %30, i32 0, i32 0
  %32 = call i32 @add_timer(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
