; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %10)
  store %struct.tty_ldisc* %11, %struct.tty_ldisc** %3, align 8
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %13 = icmp ne %struct.tty_ldisc* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %16 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %18, align 8
  %20 = icmp ne i32 (%struct.tty_struct*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %23 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %25, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = call i32 %26(%struct.tty_struct* %27)
  br label %29

29:                                               ; preds = %21, %14
  %30 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %31 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %30)
  br label %32

32:                                               ; preds = %29, %9
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load i32, i32* @EPOLLOUT, align 4
  %37 = call i32 @wake_up_interruptible_poll(i32* %35, i32 %36)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
