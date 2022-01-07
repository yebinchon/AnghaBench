; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_new_dcdstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_new_dcdstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxa_port*, i32)* @moxa_new_dcdstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_new_dcdstate(%struct.moxa_port* %0, i32 %1) #0 {
  %3 = alloca %struct.moxa_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.moxa_port* %0, %struct.moxa_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %12 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %18 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %24 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %26 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %34 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %33, i32 0, i32 1
  %35 = call i32 @tty_port_tty_hangup(%struct.TYPE_2__* %34, i32 1)
  br label %36

36:                                               ; preds = %32, %21
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %39 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_tty_hangup(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
