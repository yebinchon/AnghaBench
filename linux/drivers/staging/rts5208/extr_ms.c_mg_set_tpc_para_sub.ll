; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mg_set_tpc_para_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mg_set_tpc_para_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@Pro_TPCParm = common dso_local global i32 0, align 4
@Pro_DataCount1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@PRO_WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i64)* @mg_set_tpc_para_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_set_tpc_para_sub(%struct.rtsx_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i64], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = load i32, i32* @Pro_TPCParm, align 4
  %15 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %13, i32 0, i32 0, i32 %14, i32 1)
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %18 = load i32, i32* @Pro_DataCount1, align 4
  %19 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %17, i32 0, i32 0, i32 %18, i32 6)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %27, align 16
  %28 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 2
  store i64 0, i64* %32, align 16
  %33 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 3
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 4
  store i64 0, i64* %34, align 16
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 5
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %39 = load i32, i32* @PRO_WRITE_REG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 6
  %44 = load i32, i32* @NO_WAIT_INT, align 4
  %45 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %46 = call i32 @ms_write_bytes(%struct.rtsx_chip* %38, i32 %39, i32 %43, i32 %44, i64* %45, i32 6)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %24
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
