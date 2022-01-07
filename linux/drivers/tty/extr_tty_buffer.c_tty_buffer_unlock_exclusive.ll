; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_unlock_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_unlock_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.tty_bufhead }
%struct.tty_bufhead = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@system_unbound_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_buffer_unlock_exclusive(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.tty_bufhead*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %5 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %6 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 0
  store %struct.tty_bufhead* %6, %struct.tty_bufhead** %3, align 8
  %7 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %8 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %13 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %20 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %19, i32 0, i32 2
  %21 = call i32 @atomic_dec(i32* %20)
  %22 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %23 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @system_unbound_wq, align 4
  %29 = load %struct.tty_bufhead*, %struct.tty_bufhead** %3, align 8
  %30 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %29, i32 0, i32 0
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
