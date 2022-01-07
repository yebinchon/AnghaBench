; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_bad_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_bad_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@OverwriteFlag = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@BLOCK_WRITE = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @ms_set_bad_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_set_bad_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 0
  store %struct.ms_info* %14, %struct.ms_info** %6, align 8
  %15 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %22 = call i32 @ms_read_extra_data(%struct.rtsx_chip* %19, i32 %20, i32 0, i32* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

28:                                               ; preds = %2
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* @OverwriteFlag, align 4
  %31 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %32 = load i32, i32* @SystemParm, align 4
  %33 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 %32, i32 7)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

39:                                               ; preds = %28
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %41 = load i32, i32* @MS_NO_ERROR, align 4
  %42 = call i32 @ms_set_err_code(%struct.rtsx_chip* %40, i32 %41)
  %43 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %44 = call i64 @CHK_MS4BIT(%struct.ms_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 136, i32* %47, align 16
  br label %50

48:                                               ; preds = %39
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 128, i32* %49, align 16
  br label %50

50:                                               ; preds = %48, %46
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 128, i32* %57, align 16
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %18, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = and i32 %60, 127
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 255, i32* %63, align 4
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %65 = load i32, i32* @WRITE_REG, align 4
  %66 = load i32, i32* @NO_WAIT_INT, align 4
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %68 = call i32 @ms_write_bytes(%struct.rtsx_chip* %64, i32 %65, i32 7, i32 %66, i32* %67, i32 7)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

74:                                               ; preds = %50
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %76 = load i32, i32* @BLOCK_WRITE, align 4
  %77 = load i32, i32* @WAIT_INT, align 4
  %78 = call i32 @ms_send_cmd(%struct.rtsx_chip* %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

84:                                               ; preds = %74
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %86 = load i32, i32* @MS_NO_ERROR, align 4
  %87 = call i32 @ms_set_err_code(%struct.rtsx_chip* %85, i32 %86)
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %89 = load i32, i32* @GET_INT, align 4
  %90 = load i32, i32* @NO_WAIT_INT, align 4
  %91 = call i32 @ms_read_bytes(%struct.rtsx_chip* %88, i32 %89, i32 1, i32 %90, i32* %8, i32 1)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @STATUS_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @INT_REG_CMDNK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %104 = load i32, i32* @MS_CMD_NK, align 4
  %105 = call i32 @ms_set_err_code(%struct.rtsx_chip* %103, i32 %104)
  %106 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @INT_REG_CED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @INT_REG_ERR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %119 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %120 = call i32 @ms_set_err_code(%struct.rtsx_chip* %118, i32 %119)
  %121 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %107
  %124 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %117, %102, %95, %82, %72, %37, %26
  %126 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ms_read_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #2

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
