; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.tty_port = type { i32 }

@port = common dso_local global %struct.fwtty_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*)* @fwtty_port_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_port_shutdown(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %4 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %5 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %6 = ptrtoint %struct.fwtty_port* %5 to i32
  %7 = call %struct.fwtty_port* @to_port(%struct.tty_port* %4, i32 %6)
  store %struct.fwtty_port* %7, %struct.fwtty_port** %3, align 8
  %8 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %9 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %8, i32 0, i32 6
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %12 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %11, i32 0, i32 5
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %15 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %18 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %20 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %24 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %23)
  %25 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %26 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %25, i32 0, i32 1
  %27 = call i32 @dma_fifo_free(i32* %26)
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local %struct.fwtty_port* @to_port(%struct.tty_port*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @dma_fifo_free(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
