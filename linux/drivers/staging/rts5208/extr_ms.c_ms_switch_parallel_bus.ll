; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_switch_parallel_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_switch_parallel_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@PARALLEL_4BIT_IF = common dso_local global i64 0, align 8
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_switch_parallel_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_switch_parallel_bus(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load i64, i64* @PARALLEL_4BIT_IF, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %7, i64* %8, align 16
  %9 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i32, i32* @WRITE_REG, align 4
  %17 = load i32, i32* @NO_WAIT_INT, align 4
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %19 = call i32 @ms_write_bytes(%struct.rtsx_chip* %15, i32 %16, i32 1, i32 %17, i64* %18, i32 2)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %23, %10
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STATUS_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
