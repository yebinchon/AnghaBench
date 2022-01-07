; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
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
@SD_TM_AUTO_TUNING = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i64 0, align 8
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i64 0, align 8
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32)* @sd_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_read_data(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
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
  br label %176

37:                                               ; preds = %32
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %39 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %38)
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %44 = call i32 @rtsx_dev(%struct.rtsx_chip* %43)
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 64
  %49 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 0, i32* %24, align 4
  br label %50

50:                                               ; preds = %68, %42
  %51 = load i32, i32* %24, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @min(i32 %52, i32 6)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i64, i64* @REG_SD_CMD0, align 8
  %59 = load i32, i32* %24, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i64 %61, i32 255, i32 %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %24, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %24, align 4
  br label %50

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %37
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %74 = load i32, i32* @WRITE_REG_CMD, align 4
  %75 = load i64, i64* @REG_SD_BYTE_CNT_L, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %73, i32 %74, i64 %75, i32 255, i32 %76)
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %79 = load i32, i32* @WRITE_REG_CMD, align 4
  %80 = load i64, i64* @REG_SD_BYTE_CNT_H, align 8
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %78, i32 %79, i64 %80, i32 255, i32 %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %85 = load i32, i32* @WRITE_REG_CMD, align 4
  %86 = load i64, i64* @REG_SD_BLOCK_CNT_L, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %84, i32 %85, i64 %86, i32 255, i32 %87)
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %90 = load i32, i32* @WRITE_REG_CMD, align 4
  %91 = load i64, i64* @REG_SD_BLOCK_CNT_H, align 8
  %92 = load i32, i32* %17, align 4
  %93 = ashr i32 %92, 8
  %94 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %89, i32 %90, i64 %91, i32 255, i32 %93)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %96 = load i32, i32* @WRITE_REG_CMD, align 4
  %97 = load i64, i64* @REG_SD_CFG1, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %95, i32 %96, i64 %97, i32 3, i32 %98)
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %101 = load i32, i32* @WRITE_REG_CMD, align 4
  %102 = load i64, i64* @REG_SD_CFG2, align 8
  %103 = load i32, i32* @SD_CALCULATE_CRC7, align 4
  %104 = load i32, i32* @SD_CHECK_CRC16, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SD_NO_WAIT_BUSY_END, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SD_CHECK_CRC7, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SD_RSP_LEN_6, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %100, i32 %101, i64 %102, i32 255, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @SD_TM_AUTO_TUNING, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %72
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %118 = load i32, i32* @WRITE_REG_CMD, align 4
  %119 = load i64, i64* @CARD_DATA_SOURCE, align 8
  %120 = load i32, i32* @PINGPONG_BUFFER, align 4
  %121 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %117, i32 %118, i64 %119, i32 1, i32 %120)
  br label %122

122:                                              ; preds = %116, %72
  %123 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %124 = load i32, i32* @WRITE_REG_CMD, align 4
  %125 = load i64, i64* @REG_SD_TRANSFER, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @SD_TRANSFER_START, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %123, i32 %124, i64 %125, i32 255, i32 %128)
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %131 = load i32, i32* @CHECK_REG_CMD, align 4
  %132 = load i64, i64* @REG_SD_TRANSFER, align 8
  %133 = load i32, i32* @SD_TRANSFER_END, align 4
  %134 = load i32, i32* @SD_TRANSFER_END, align 4
  %135 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %130, i32 %131, i64 %132, i32 %133, i32 %134)
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %137 = load i32, i32* @SD_CARD, align 4
  %138 = load i32, i32* %21, align 4
  %139 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %136, i32 %137, i32 %138)
  store i32 %139, i32* %23, align 4
  %140 = load i32, i32* %23, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %122
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* @ETIMEDOUT, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %149 = load i32, i32* @SEND_STATUS, align 4
  %150 = load %struct.sd_info*, %struct.sd_info** %22, align 8
  %151 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %154 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %148, i32 %149, i32 %152, i32 %153, i32* null, i32 0)
  br label %155

155:                                              ; preds = %147, %142
  %156 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %156, i32* %11, align 4
  br label %176

157:                                              ; preds = %122
  %158 = load i32*, i32** %19, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @rtsx_read_ppbuf(%struct.rtsx_chip* %164, i32* %165, i32 %166)
  store i32 %167, i32* %23, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* @STATUS_SUCCESS, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %172, i32* %11, align 4
  br label %176

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %160, %157
  %175 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %174, %171, %155, %35
  %177 = load i32, i32* %11, align 4
  ret i32 %177
}

declare dso_local i32 @sd_clr_err_code(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rtsx_read_ppbuf(%struct.rtsx_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
