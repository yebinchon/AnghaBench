; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_check_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_check_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64, i64 }

@TTY_THROTTLE_SAFE = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i64 0, align 8
@TTY_THRESHOLD_THROTTLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @n_tty_check_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_check_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  store %struct.n_tty_data* %7, %struct.n_tty_data** %3, align 8
  %8 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %9 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %14 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %17 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %43

21:                                               ; preds = %12, %1
  br label %22

22:                                               ; preds = %21, %39
  %23 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %24 = load i32, i32* @TTY_THROTTLE_SAFE, align 4
  %25 = call i32 @tty_set_flow_change(%struct.tty_struct* %23, i32 %24)
  %26 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %27 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %28 = call i64 @read_cnt(%struct.n_tty_data* %27)
  %29 = sub nsw i64 %26, %28
  %30 = load i64, i64* @TTY_THRESHOLD_THROTTLE, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = call i32 @tty_throttle_safe(%struct.tty_struct* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  br label %22

40:                                               ; preds = %38, %32
  %41 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %42 = call i32 @__tty_set_flow_change(%struct.tty_struct* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %20
  ret void
}

declare dso_local i32 @tty_set_flow_change(%struct.tty_struct*, i32) #1

declare dso_local i64 @read_cnt(%struct.n_tty_data*) #1

declare dso_local i32 @tty_throttle_safe(%struct.tty_struct*) #1

declare dso_local i32 @__tty_set_flow_change(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
