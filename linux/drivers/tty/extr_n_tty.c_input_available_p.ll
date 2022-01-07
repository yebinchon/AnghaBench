; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_input_available_p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_input_available_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @input_available_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_available_p(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.n_tty_data*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  store %struct.n_tty_data* %10, %struct.n_tty_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @TIME_CHAR(%struct.tty_struct* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = call i32 @MIN_CHAR(%struct.tty_struct* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i32 @MIN_CHAR(%struct.tty_struct* %22)
  br label %25

24:                                               ; preds = %17, %13, %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %28 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = call i32 @L_EXTPROC(%struct.tty_struct* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %37 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %40 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %31, %25
  %45 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %46 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.n_tty_data*, %struct.n_tty_data** %6, align 8
  %50 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp sge i64 %52, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @TIME_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @MIN_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @L_EXTPROC(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
