; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.tty_port*)* }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*, %struct.tty_struct*)* @tty_port_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_port_shutdown(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %6 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %9 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %15 = call i64 @tty_port_initialized(%struct.tty_port* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %19 = call i32 @tty_port_set_initialized(%struct.tty_port* %18, i32 0)
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = icmp ne %struct.tty_struct* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = call i64 @C_HUPCL(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %28 = call i32 @tty_port_lower_dtr_rts(%struct.tty_port* %27)
  br label %29

29:                                               ; preds = %26, %22, %17
  %30 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %31 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %33, align 8
  %35 = icmp ne i32 (%struct.tty_port*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %38 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %40, align 8
  %42 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %43 = call i32 %41(%struct.tty_port* %42)
  br label %44

44:                                               ; preds = %36, %29
  br label %45

45:                                               ; preds = %44, %13
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %48 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_lower_dtr_rts(%struct.tty_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
