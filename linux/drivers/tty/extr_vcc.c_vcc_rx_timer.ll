; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_rx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_rx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { i32, i64, i32, %struct.vio_driver_state, %struct.TYPE_4__ }
%struct.vio_driver_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.timer_list = type { i32 }

@rx_timer = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@port = common dso_local global %struct.vcc_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vcc_rx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_rx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vcc_port*, align 8
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %8 = ptrtoint %struct.vcc_port* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @rx_timer, align 4
  %11 = call %struct.vcc_port* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.vcc_port* %11, %struct.vcc_port** %3, align 8
  %12 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %13 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %17 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %20 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %19, i32 0, i32 3
  store %struct.vio_driver_state* %20, %struct.vio_driver_state** %4, align 8
  %21 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %22 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @enable_irq(i32 %25)
  %27 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %28 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %33 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %1
  br label %48

37:                                               ; preds = %31
  %38 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %39 = call i32 @vcc_ldc_read(%struct.vcc_port* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ECONNRESET, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %46 = call i32 @vio_conn_reset(%struct.vio_driver_state* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %50 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %54 = call i32 @vcc_put(%struct.vcc_port* %53, i32 0)
  ret void
}

declare dso_local %struct.vcc_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @vcc_ldc_read(%struct.vcc_port*) #1

declare dso_local i32 @vio_conn_reset(%struct.vio_driver_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
