; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_check_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_check_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@TTY_THRESHOLD_UNTHROTTLE = common dso_local global i64 0, align 8
@TTY_UNTHROTTLE_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @n_tty_check_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_check_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = call i64 @chars_in_buffer(%struct.tty_struct* %12)
  %14 = load i64, i64* @TTY_THRESHOLD_UNTHROTTLE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %19 = call i32 @n_tty_kick_worker(%struct.tty_struct* %18)
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @tty_wakeup(i32 %22)
  br label %46

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %42
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = load i32, i32* @TTY_UNTHROTTLE_SAFE, align 4
  %28 = call i32 @tty_set_flow_change(%struct.tty_struct* %26, i32 %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = call i64 @chars_in_buffer(%struct.tty_struct* %29)
  %31 = load i64, i64* @TTY_THRESHOLD_UNTHROTTLE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %43

34:                                               ; preds = %25
  %35 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %36 = call i32 @n_tty_kick_worker(%struct.tty_struct* %35)
  %37 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %38 = call i32 @tty_unthrottle_safe(%struct.tty_struct* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %34
  br label %25

43:                                               ; preds = %41, %33
  %44 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %45 = call i32 @__tty_set_flow_change(%struct.tty_struct* %44, i32 0)
  br label %46

46:                                               ; preds = %43, %17, %16
  ret void
}

declare dso_local i64 @chars_in_buffer(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_kick_worker(%struct.tty_struct*) #1

declare dso_local i32 @tty_wakeup(i32) #1

declare dso_local i32 @tty_set_flow_change(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_unthrottle_safe(%struct.tty_struct*) #1

declare dso_local i32 @__tty_set_flow_change(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
