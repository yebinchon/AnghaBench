; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_set_rw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_set_rw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@PRO_EX_SET_CMD = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i64)* @mspro_set_rw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_set_rw_cmd(%struct.rtsx_chip* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i64], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 2
  store i64 %20, i64* %21, align 16
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 24
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 3
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 4
  store i64 %28, i64* %29, align 16
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 5
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 6
  store i64 %35, i64* %36, align 16
  %37 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 7
  store i64 0, i64* %37, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %53, %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %44 = load i32, i32* @PRO_EX_SET_CMD, align 4
  %45 = load i32, i32* @WAIT_INT, align 4
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %47 = call i32 @ms_write_bytes(%struct.rtsx_chip* %43, i32 %44, i32 7, i32 %45, i64* %46, i32 8)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %38

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
