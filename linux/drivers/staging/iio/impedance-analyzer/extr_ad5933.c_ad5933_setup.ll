; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5933_state = type { i32, i32, i32 }

@AD5933_REG_FREQ_START = common dso_local global i32 0, align 4
@AD5933_REG_FREQ_INC = common dso_local global i32 0, align 4
@AD5933_REG_SETTLING_CYCLES = common dso_local global i32 0, align 4
@AD5933_REG_INC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5933_state*)* @ad5933_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_setup(%struct.ad5933_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5933_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ad5933_state* %0, %struct.ad5933_state** %3, align 8
  %6 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %7 = call i32 @ad5933_reset(%struct.ad5933_state* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %14 = load i32, i32* @AD5933_REG_FREQ_START, align 4
  %15 = call i32 @ad5933_set_freq(%struct.ad5933_state* %13, i32 %14, i32 10000)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %12
  %21 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %22 = load i32, i32* @AD5933_REG_FREQ_INC, align 4
  %23 = call i32 @ad5933_set_freq(%struct.ad5933_state* %21, i32 %22, i32 200)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %20
  %29 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %30 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %29, i32 0, i32 0
  store i32 10, i32* %30, align 4
  %31 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %32 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @cpu_to_be16(i32 %33)
  store i64 %34, i64* %4, align 8
  %35 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %36 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AD5933_REG_SETTLING_CYCLES, align 4
  %39 = bitcast i64* %4 to i32*
  %40 = call i32 @ad5933_i2c_write(i32 %37, i32 %38, i32 2, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %28
  %46 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %47 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %46, i32 0, i32 1
  store i32 100, i32* %47, align 4
  %48 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %49 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @cpu_to_be16(i32 %50)
  store i64 %51, i64* %4, align 8
  %52 = load %struct.ad5933_state*, %struct.ad5933_state** %3, align 8
  %53 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AD5933_REG_INC_NUM, align 4
  %56 = bitcast i64* %4 to i32*
  %57 = call i32 @ad5933_i2c_write(i32 %54, i32 %55, i32 2, i32* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %43, %26, %18, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ad5933_reset(%struct.ad5933_state*) #1

declare dso_local i32 @ad5933_set_freq(%struct.ad5933_state*, i32, i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @ad5933_i2c_write(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
