; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_inq_canon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_inq_canon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_tty_data = type { i64, i64, i32 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.n_tty_data*)* @inq_canon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inq_canon(%struct.n_tty_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.n_tty_data* %0, %struct.n_tty_data** %3, align 8
  %7 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %8 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %11 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %17 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %20 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %22, %23
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %51, %15
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @MASK(i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @MASK(i64 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  %37 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %38 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @test_bit(i64 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @read_buf(%struct.n_tty_data* %43, i64 %44)
  %46 = load i64, i64* @__DISABLED_CHAR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %48, %42, %31
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %25

54:                                               ; preds = %25
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %54, %14
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @MASK(i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @read_buf(%struct.n_tty_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
