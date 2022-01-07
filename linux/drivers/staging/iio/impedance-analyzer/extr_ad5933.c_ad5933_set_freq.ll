; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5933_state = type { i32, i64, i64, i32 }
%union.anon = type { [4 x i32] }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5933_state*, i32, i64)* @ad5933_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_set_freq(%struct.ad5933_state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5933_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 4
  store %struct.ad5933_state* %0, %struct.ad5933_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = mul i64 %10, 134217728
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.ad5933_state*, %struct.ad5933_state** %5, align 8
  %14 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 4
  %17 = call i32 @do_div(i64 %12, i32 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %23
  ]

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.ad5933_state*, %struct.ad5933_state** %5, align 8
  %22 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ad5933_state*, %struct.ad5933_state** %5, align 8
  %26 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %23, %19
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @cpu_to_be32(i64 %31)
  %33 = bitcast %union.anon* %9 to i32*
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ad5933_state*, %struct.ad5933_state** %5, align 8
  %35 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = bitcast %union.anon* %9 to [4 x i32]*
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 1
  %40 = call i32 @ad5933_i2c_write(i32 %36, i32 %37, i32 3, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @ad5933_i2c_write(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
