; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_close_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_close_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i64, i64 }
%struct.tty_struct = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_close_end(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = call i32 @tty_ldisc_flush(%struct.tty_struct* %6)
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %11 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %15 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %20 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %24 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @jiffies_to_msecs(i64 %30)
  %32 = call i32 @msleep_interruptible(i32 %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %39 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %38, i32 0, i32 1
  %40 = call i32 @wake_up_interruptible(i32* %39)
  br label %41

41:                                               ; preds = %33, %2
  %42 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %43 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %47 = call i32 @tty_port_set_active(%struct.tty_port* %46, i32 0)
  ret void
}

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_port_set_active(%struct.tty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
