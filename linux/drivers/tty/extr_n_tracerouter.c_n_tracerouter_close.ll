; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tracerouter.c_n_tracerouter_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tracerouter.c_n_tracerouter_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.tty_struct = type { %struct.tracerouter_data* }
%struct.tracerouter_data = type { i32* }

@routelock = common dso_local global i32 0, align 4
@tr_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @n_tracerouter_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tracerouter_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tracerouter_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.tracerouter_data*, %struct.tracerouter_data** %5, align 8
  store %struct.tracerouter_data* %6, %struct.tracerouter_data** %3, align 8
  %7 = call i32 @mutex_lock(i32* @routelock)
  %8 = load %struct.tracerouter_data*, %struct.tracerouter_data** %3, align 8
  %9 = getelementptr inbounds %struct.tracerouter_data, %struct.tracerouter_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @tty_kref_put(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tr_data, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  store %struct.tracerouter_data* null, %struct.tracerouter_data** %28, align 8
  %29 = call i32 @mutex_unlock(i32* @routelock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
