; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_buffer.c_tty_buffer_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty_port* }
%struct.tty_port = type { %struct.tty_bufhead }
%struct.tty_bufhead = type { i32, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { i32, i32, i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_buffer_flush(%struct.tty_struct* %0, %struct.tty_ldisc* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_ldisc*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_bufhead*, align 8
  %7 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.tty_ldisc* %1, %struct.tty_ldisc** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.tty_port*, %struct.tty_port** %9, align 8
  store %struct.tty_port* %10, %struct.tty_port** %5, align 8
  %11 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 0
  store %struct.tty_bufhead* %12, %struct.tty_bufhead** %6, align 8
  %13 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %14 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %17 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %26, %2
  %20 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %21 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %20, i32 0, i32 2
  %22 = load %struct.tty_buffer*, %struct.tty_buffer** %21, align 8
  %23 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %22, i32 0, i32 2
  %24 = call %struct.tty_buffer* @smp_load_acquire(i32* %23)
  store %struct.tty_buffer* %24, %struct.tty_buffer** %7, align 8
  %25 = icmp ne %struct.tty_buffer* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %28 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %29 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %28, i32 0, i32 2
  %30 = load %struct.tty_buffer*, %struct.tty_buffer** %29, align 8
  %31 = call i32 @tty_buffer_free(%struct.tty_port* %27, %struct.tty_buffer* %30)
  %32 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %33 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %34 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %33, i32 0, i32 2
  store %struct.tty_buffer* %32, %struct.tty_buffer** %34, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %37 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %36, i32 0, i32 2
  %38 = load %struct.tty_buffer*, %struct.tty_buffer** %37, align 8
  %39 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %42 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %41, i32 0, i32 2
  %43 = load %struct.tty_buffer*, %struct.tty_buffer** %42, align 8
  %44 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %46 = icmp ne %struct.tty_ldisc* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %35
  %48 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %49 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %51, align 8
  %53 = icmp ne i32 (%struct.tty_struct*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %56 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %58, align 8
  %60 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %61 = call i32 %59(%struct.tty_struct* %60)
  br label %62

62:                                               ; preds = %54, %47, %35
  %63 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %64 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %63, i32 0, i32 1
  %65 = call i32 @atomic_dec(i32* %64)
  %66 = load %struct.tty_bufhead*, %struct.tty_bufhead** %6, align 8
  %67 = getelementptr inbounds %struct.tty_bufhead, %struct.tty_bufhead* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tty_buffer* @smp_load_acquire(i32*) #1

declare dso_local i32 @tty_buffer_free(%struct.tty_port*, %struct.tty_buffer*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
