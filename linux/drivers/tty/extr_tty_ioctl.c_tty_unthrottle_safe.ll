; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_unthrottle_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_unthrottle_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@TTY_UNTHROTTLE_SAFE = common dso_local global i64 0, align 8
@TTY_THROTTLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_unthrottle_safe(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i64 @tty_throttled(%struct.tty_struct* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TTY_UNTHROTTLE_SAFE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %39

17:                                               ; preds = %10
  %18 = load i32, i32* @TTY_THROTTLED, align 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 3
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.tty_struct*)**
  %27 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %26, align 8
  %28 = icmp ne i32 (%struct.tty_struct*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.tty_struct*)**
  %35 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %34, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %37 = call i32 %35(%struct.tty_struct* %36)
  br label %38

38:                                               ; preds = %29, %17
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
