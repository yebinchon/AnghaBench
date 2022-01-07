; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@OverwriteFlag = common dso_local global i32 0, align 4
@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@BLOCK_READ = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@INT_REG_BREQ = common dso_local global i32 0, align 4
@MS_FLASH_READ_ERROR = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@MS_BREQ_ERROR = common dso_local global i32 0, align 4
@MS_TM_NORMAL_READ = common dso_local global i32 0, align 4
@READ_PAGE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32)* @ms_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_page(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ms_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 0
  store %struct.ms_info* %13, %struct.ms_info** %8, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = load i32, i32* @OverwriteFlag, align 4
  %16 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %17 = load i32, i32* @SystemParm, align 4
  %18 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %14, i32 %15, i32 %16, i32 %17, i32 6)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %4, align 4
  br label %148

24:                                               ; preds = %3
  %25 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %26 = call i64 @CHK_MS4BIT(%struct.ms_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  store i32 136, i32* %29, align 16
  br label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  store i32 128, i32* %31, align 16
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  store i32 32, i32* %39, align 16
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %43 = load i32, i32* @WRITE_REG, align 4
  %44 = load i32, i32* @NO_WAIT_INT, align 4
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %46 = call i32 @ms_write_bytes(%struct.rtsx_chip* %42, i32 %43, i32 6, i32 %44, i32* %45, i32 6)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %51, i32* %4, align 4
  br label %148

52:                                               ; preds = %32
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %54 = load i32, i32* @BLOCK_READ, align 4
  %55 = load i32, i32* @WAIT_INT, align 4
  %56 = call i32 @ms_send_cmd(%struct.rtsx_chip* %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %61, i32* %4, align 4
  br label %148

62:                                               ; preds = %52
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %64 = load i32, i32* @MS_NO_ERROR, align 4
  %65 = call i32 @ms_set_err_code(%struct.rtsx_chip* %63, i32 %64)
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = load i32, i32* @GET_INT, align 4
  %68 = load i32, i32* @NO_WAIT_INT, align 4
  %69 = call i32 @ms_read_bytes(%struct.rtsx_chip* %66, i32 %67, i32 1, i32 %68, i32* %10, i32 1)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @STATUS_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %74, i32* %4, align 4
  br label %148

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @INT_REG_CMDNK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %82 = load i32, i32* @MS_CMD_NK, align 4
  %83 = call i32 @ms_set_err_code(%struct.rtsx_chip* %81, i32 %82)
  %84 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %84, i32* %4, align 4
  br label %148

85:                                               ; preds = %75
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @INT_REG_CED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @INT_REG_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @INT_REG_BREQ, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %102 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  %103 = call i32 @ms_set_err_code(%struct.rtsx_chip* %101, i32 %102)
  %104 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %104, i32* %4, align 4
  br label %148

105:                                              ; preds = %95
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %107 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @STATUS_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %113 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %114 = call i32 @ms_set_err_code(%struct.rtsx_chip* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  br label %127

116:                                              ; preds = %90
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @INT_REG_BREQ, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %123 = load i32, i32* @MS_BREQ_ERROR, align 4
  %124 = call i32 @ms_set_err_code(%struct.rtsx_chip* %122, i32 %123)
  %125 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %125, i32* %4, align 4
  br label %148

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %85
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %130 = load i32, i32* @MS_TM_NORMAL_READ, align 4
  %131 = load i32, i32* @READ_PAGE_DATA, align 4
  %132 = load i32, i32* @NO_WAIT_INT, align 4
  %133 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %129, i32 %130, i32 %131, i32 0, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @STATUS_SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %138, i32* %4, align 4
  br label %148

139:                                              ; preds = %128
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %141 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %142 = call i64 @ms_check_err_code(%struct.rtsx_chip* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %145, i32* %4, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %144, %137, %121, %100, %80, %73, %60, %50, %22
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_read_status_reg(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @ms_check_err_code(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
