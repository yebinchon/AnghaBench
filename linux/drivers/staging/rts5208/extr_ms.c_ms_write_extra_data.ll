; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_extra_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@OverwriteFlag = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@BLOCK_WRITE = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32*, i32)* @ms_write_extra_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_write_extra_data(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ms_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  store %struct.ms_info* %18, %struct.ms_info** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %26, i32* %6, align 4
  br label %140

27:                                               ; preds = %21
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %29 = load i32, i32* @OverwriteFlag, align 4
  %30 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %31 = load i32, i32* @SystemParm, align 4
  %32 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %33 = add nsw i32 6, %32
  %34 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %39, i32* %6, align 4
  br label %140

40:                                               ; preds = %27
  %41 = load %struct.ms_info*, %struct.ms_info** %12, align 8
  %42 = call i64 @CHK_MS4BIT(%struct.ms_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  store i32 136, i32* %45, align 16
  br label %48

46:                                               ; preds = %40
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  store i32 128, i32* %47, align 16
  br label %48

48:                                               ; preds = %46, %44
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 8
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 3
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 4
  store i32 64, i32* %55, align 16
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 5
  store i32 %56, i32* %57, align 4
  store i32 6, i32* %14, align 4
  br label %58

58:                                               ; preds = %73, %48
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %61 = add nsw i32 %60, 6
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %78 = load i32, i32* @WRITE_REG, align 4
  %79 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %80 = add nsw i32 6, %79
  %81 = load i32, i32* @NO_WAIT_INT, align 4
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %83 = call i32 @ms_write_bytes(%struct.rtsx_chip* %77, i32 %78, i32 %80, i32 %81, i32* %82, i32 16)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %88, i32* %6, align 4
  br label %140

89:                                               ; preds = %76
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %91 = load i32, i32* @BLOCK_WRITE, align 4
  %92 = load i32, i32* @WAIT_INT, align 4
  %93 = call i32 @ms_send_cmd(%struct.rtsx_chip* %90, i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %98, i32* %6, align 4
  br label %140

99:                                               ; preds = %89
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %101 = load i32, i32* @MS_NO_ERROR, align 4
  %102 = call i32 @ms_set_err_code(%struct.rtsx_chip* %100, i32 %101)
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %104 = load i32, i32* @GET_INT, align 4
  %105 = load i32, i32* @NO_WAIT_INT, align 4
  %106 = call i32 @ms_read_bytes(%struct.rtsx_chip* %103, i32 %104, i32 1, i32 %105, i32* %15, i32 1)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @STATUS_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %111, i32* %6, align 4
  br label %140

112:                                              ; preds = %99
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @INT_REG_CMDNK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %119 = load i32, i32* @MS_CMD_NK, align 4
  %120 = call i32 @ms_set_err_code(%struct.rtsx_chip* %118, i32 %119)
  %121 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %121, i32* %6, align 4
  br label %140

122:                                              ; preds = %112
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @INT_REG_CED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @INT_REG_ERR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %134 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %135 = call i32 @ms_set_err_code(%struct.rtsx_chip* %133, i32 %134)
  %136 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %122
  %139 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %132, %117, %110, %97, %87, %38, %25
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
