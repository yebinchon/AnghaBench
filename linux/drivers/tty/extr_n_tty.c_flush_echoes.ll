; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_flush_echoes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_flush_echoes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @flush_echoes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_echoes(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  store %struct.n_tty_data* %6, %struct.n_tty_data** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = call i32 @L_ECHO(%struct.tty_struct* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = call i32 @L_ECHONL(%struct.tty_struct* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %1
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %16 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %19 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %10
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %25 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %28 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %31 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = call i32 @__process_echoes(%struct.tty_struct* %32)
  %34 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %35 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @L_ECHONL(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
