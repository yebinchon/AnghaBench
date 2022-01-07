; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mg_send_ex_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mg_send_ex_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@PRO_EX_SET_CMD = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64, i64)* @mg_send_ex_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_send_ex_cmd(%struct.rtsx_chip* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i64], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 2
  store i64 0, i64* %14, align 16
  %15 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 4
  store i64 0, i64* %16, align 16
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 5
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 6
  store i64 %18, i64* %19, align 16
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  store i64 0, i64* %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %36, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = load i32, i32* @PRO_EX_SET_CMD, align 4
  %28 = load i32, i32* @WAIT_INT, align 4
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %30 = call i32 @ms_write_bytes(%struct.rtsx_chip* %26, i32 %27, i32 7, i32 %28, i64* %29, i32 8)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %21

39:                                               ; preds = %34, %21
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %39
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %47 = call i64 @check_ms_err(%struct.rtsx_chip* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %50)
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %49, %43
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #1

declare dso_local i64 @check_ms_err(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_clear_ms_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
