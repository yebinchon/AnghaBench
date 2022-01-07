; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_overrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%d input overrun(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @n_tty_receive_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_overrun(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  store %struct.n_tty_data* %6, %struct.n_tty_data** %3, align 8
  %7 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %8 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %13 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @time_after(i64 %11, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %21 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19, %1
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %29 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @tty_warn(%struct.tty_struct* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %34 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %36 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %26, %19
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @tty_warn(%struct.tty_struct*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
