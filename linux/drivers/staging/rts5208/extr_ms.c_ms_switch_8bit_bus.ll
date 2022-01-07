; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_switch_8bit_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_switch_8bit_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@PARALLEL_8BIT_IF = common dso_local global i64 0, align 8
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_CFG = common dso_local global i32 0, align 4
@MS_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SAMPLE_TIME_FALLING = common dso_local global i32 0, align 4
@MS_8BIT = common dso_local global i32 0, align 4
@MS_TM_READ_BYTES = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_switch_8bit_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_switch_8bit_bus(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.ms_info* %9, %struct.ms_info** %4, align 8
  %10 = load i64, i64* @PARALLEL_8BIT_IF, align 8
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %10, i64* %11, align 16
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 0, i64* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = load i32, i32* @WRITE_REG, align 4
  %20 = load i32, i32* @NO_WAIT_INT, align 4
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %22 = call i32 @ms_write_bytes(%struct.rtsx_chip* %18, i32 %19, i32 1, i32 %20, i64* %21, i32 2)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %13

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %36, i32* %2, align 4
  br label %83

37:                                               ; preds = %31
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = load i32, i32* @MS_CFG, align 4
  %40 = load i32, i32* @MS_BUS_WIDTH_8, align 4
  %41 = load i32, i32* @SAMPLE_TIME_FALLING, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rtsx_write_register(%struct.rtsx_chip* %38, i32 %39, i32 152, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %37
  %49 = load i32, i32* @MS_8BIT, align 4
  %50 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %51 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = call i32 @ms_set_init_para(%struct.rtsx_chip* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %60, i32* %2, align 4
  br label %83

61:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %68 = load i32, i32* @MS_TM_READ_BYTES, align 4
  %69 = load i32, i32* @GET_INT, align 4
  %70 = load i32, i32* @NO_WAIT_INT, align 4
  %71 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %67, i32 %68, i32 %69, i32 1, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @STATUS_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %76, i32* %2, align 4
  br label %83

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %75, %59, %46, %35
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @ms_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
