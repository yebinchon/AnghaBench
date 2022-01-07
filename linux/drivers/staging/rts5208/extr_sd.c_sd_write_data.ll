; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SD/MMC CMD %d\0A\00", align 1
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@REG_SD_CMD0 = common dso_local global i64 0, align 8
@REG_SD_BYTE_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BYTE_CNT_H = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_H = common dso_local global i64 0, align 8
@REG_SD_CFG1 = common dso_local global i64 0, align 8
@REG_SD_CFG2 = common dso_local global i64 0, align 8
@SD_CALCULATE_CRC7 = common dso_local global i32 0, align 4
@SD_CHECK_CRC16 = common dso_local global i32 0, align 4
@SD_NO_WAIT_BUSY_END = common dso_local global i32 0, align 4
@SD_CHECK_CRC7 = common dso_local global i32 0, align 4
@SD_RSP_LEN_6 = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i64 0, align 8
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32)* @sd_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_write_data(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtsx_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sd_info*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 0
  store %struct.sd_info* %26, %struct.sd_info** %22, align 8
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %28 = call i32 @sd_clr_err_code(%struct.rtsx_chip* %27)
  %29 = load i32*, i32** %19, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %10
  store i32 0, i32* %20, align 4
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %20, align 4
  %34 = icmp sgt i32 %33, 512
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %36, i32* %11, align 4
  br label %166

37:                                               ; preds = %32
  %38 = load i32*, i32** %19, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @rtsx_write_ppbuf(%struct.rtsx_chip* %44, i32* %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %11, align 4
  br label %166

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %40, %37
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %56 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %55)
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %54
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %61 = call i32 @rtsx_dev(%struct.rtsx_chip* %60)
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 64
  %66 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 0, i32* %24, align 4
  br label %67

67:                                               ; preds = %85, %59
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @min(i32 %69, i32 6)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %74 = load i32, i32* @WRITE_REG_CMD, align 4
  %75 = load i64, i64* @REG_SD_CMD0, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %24, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %73, i32 %74, i64 %78, i32 255, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %24, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %24, align 4
  br label %67

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %54
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %91 = load i32, i32* @WRITE_REG_CMD, align 4
  %92 = load i64, i64* @REG_SD_BYTE_CNT_L, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %90, i32 %91, i64 %92, i32 255, i32 %93)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %96 = load i32, i32* @WRITE_REG_CMD, align 4
  %97 = load i64, i64* @REG_SD_BYTE_CNT_H, align 8
  %98 = load i32, i32* %16, align 4
  %99 = ashr i32 %98, 8
  %100 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %95, i32 %96, i64 %97, i32 255, i32 %99)
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %102 = load i32, i32* @WRITE_REG_CMD, align 4
  %103 = load i64, i64* @REG_SD_BLOCK_CNT_L, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %101, i32 %102, i64 %103, i32 255, i32 %104)
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %107 = load i32, i32* @WRITE_REG_CMD, align 4
  %108 = load i64, i64* @REG_SD_BLOCK_CNT_H, align 8
  %109 = load i32, i32* %17, align 4
  %110 = ashr i32 %109, 8
  %111 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %106, i32 %107, i64 %108, i32 255, i32 %110)
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %113 = load i32, i32* @WRITE_REG_CMD, align 4
  %114 = load i64, i64* @REG_SD_CFG1, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %112, i32 %113, i64 %114, i32 3, i32 %115)
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %118 = load i32, i32* @WRITE_REG_CMD, align 4
  %119 = load i64, i64* @REG_SD_CFG2, align 8
  %120 = load i32, i32* @SD_CALCULATE_CRC7, align 4
  %121 = load i32, i32* @SD_CHECK_CRC16, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SD_NO_WAIT_BUSY_END, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SD_CHECK_CRC7, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SD_RSP_LEN_6, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %117, i32 %118, i64 %119, i32 255, i32 %128)
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %131 = load i32, i32* @WRITE_REG_CMD, align 4
  %132 = load i64, i64* @REG_SD_TRANSFER, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @SD_TRANSFER_START, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %130, i32 %131, i64 %132, i32 255, i32 %135)
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %138 = load i32, i32* @CHECK_REG_CMD, align 4
  %139 = load i64, i64* @REG_SD_TRANSFER, align 8
  %140 = load i32, i32* @SD_TRANSFER_END, align 4
  %141 = load i32, i32* @SD_TRANSFER_END, align 4
  %142 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %137, i32 %138, i64 %139, i32 %140, i32 %141)
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %144 = load i32, i32* @SD_CARD, align 4
  %145 = load i32, i32* %21, align 4
  %146 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %143, i32 %144, i32 %145)
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %23, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %89
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %156 = load i32, i32* @SEND_STATUS, align 4
  %157 = load %struct.sd_info*, %struct.sd_info** %22, align 8
  %158 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %161 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %155, i32 %156, i32 %159, i32 %160, i32* null, i32 0)
  br label %162

162:                                              ; preds = %154, %149
  %163 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %163, i32* %11, align 4
  br label %166

164:                                              ; preds = %89
  %165 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %164, %162, %51, %35
  %167 = load i32, i32* %11, align 4
  ret i32 %167
}

declare dso_local i32 @sd_clr_err_code(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_ppbuf(%struct.rtsx_chip*, i32*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
