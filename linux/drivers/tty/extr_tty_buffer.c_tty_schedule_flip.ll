; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_schedule_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_schedule_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.tty_bufhead }
%struct.tty_bufhead = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@system_unbound_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_schedule_flip(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.tty_bufhead*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %4 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 0
  store %struct.tty_bufhead* %5, %struct.tty_bufhead** %3, align 8
  %6 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %7 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %11 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @smp_store_release(i32* %9, i32 %14)
  %16 = load i32, i32* @system_unbound_wq, align 4
  %17 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %18 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %17, i32 0, i32 0
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  ret void
}

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
