; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_tty_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_tty_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32 }
%struct.tty_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_tty_set(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %11 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tty_kref_put(i32 %12)
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @tty_kref_get(%struct.tty_struct* %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tty_kref_put(i32) #1

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
