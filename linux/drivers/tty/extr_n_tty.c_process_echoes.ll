; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_echoes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_process_echoes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }
%struct.n_tty_data = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @process_echoes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_echoes(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  store %struct.n_tty_data* %7, %struct.n_tty_data** %3, align 8
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %9 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %18 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %21 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %24 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = call i64 @__process_echoes(%struct.tty_struct* %25)
  store i64 %26, i64* %4, align 8
  %27 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %28 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %27, i32 0, i32 3
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %16
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %36, align 8
  %38 = icmp ne i32 (%struct.tty_struct*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %43, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %46 = call i32 %44(%struct.tty_struct* %45)
  br label %47

47:                                               ; preds = %15, %39, %32, %16
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
