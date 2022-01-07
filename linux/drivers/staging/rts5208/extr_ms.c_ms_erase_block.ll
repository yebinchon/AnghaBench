; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@OverwriteFlag = common dso_local global i32 0, align 4
@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@BLOCK_ERASE = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @ms_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_erase_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  store %struct.ms_info* %12, %struct.ms_info** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %14 = load i32, i32* @OverwriteFlag, align 4
  %15 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %16 = load i32, i32* @SystemParm, align 4
  %17 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %13, i32 %14, i32 %15, i32 %16, i32 6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* @MS_NO_ERROR, align 4
  %26 = call i32 @ms_set_err_code(%struct.rtsx_chip* %24, i32 %25)
  %27 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %28 = call i64 @CHK_MS4BIT(%struct.ms_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 136, i32* %31, align 16
  br label %34

32:                                               ; preds = %23
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 128, i32* %33, align 16
  br label %34

34:                                               ; preds = %32, %30
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 8
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  store i32 0, i32* %41, align 16
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  store i32 0, i32* %42, align 4
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = load i32, i32* @WRITE_REG, align 4
  %45 = load i32, i32* @NO_WAIT_INT, align 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %47 = call i32 @ms_write_bytes(%struct.rtsx_chip* %43, i32 %44, i32 6, i32 %45, i32* %46, i32 6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %3, align 4
  br label %114

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %85, %53
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %56 = load i32, i32* @BLOCK_ERASE, align 4
  %57 = load i32, i32* @WAIT_INT, align 4
  %58 = call i32 @ms_send_cmd(%struct.rtsx_chip* %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %63, i32* %3, align 4
  br label %114

64:                                               ; preds = %54
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %66 = load i32, i32* @MS_NO_ERROR, align 4
  %67 = call i32 @ms_set_err_code(%struct.rtsx_chip* %65, i32 %66)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %69 = load i32, i32* @GET_INT, align 4
  %70 = load i32, i32* @NO_WAIT_INT, align 4
  %71 = call i32 @ms_read_bytes(%struct.rtsx_chip* %68, i32 %69, i32 1, i32 %70, i32* %9, i32 1)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @STATUS_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %76, i32* %3, align 4
  br label %114

77:                                               ; preds = %64
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @INT_REG_CMDNK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %54

88:                                               ; preds = %82
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %90 = load i32, i32* @MS_CMD_NK, align 4
  %91 = call i32 @ms_set_err_code(%struct.rtsx_chip* %89, i32 %90)
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ms_set_bad_block(%struct.rtsx_chip* %92, i32 %93)
  %95 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %95, i32* %3, align 4
  br label %114

96:                                               ; preds = %77
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @INT_REG_CED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @INT_REG_ERR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %108 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %109 = call i32 @ms_set_err_code(%struct.rtsx_chip* %107, i32 %108)
  %110 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %110, i32* %3, align 4
  br label %114

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %106, %88, %75, %62, %51, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_set_bad_block(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
