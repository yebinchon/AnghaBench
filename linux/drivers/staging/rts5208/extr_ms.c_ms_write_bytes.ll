; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@STATUS_ERROR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@MS_TPC = common dso_local global i64 0, align 8
@MS_BYTE_CNT = common dso_local global i64 0, align 8
@MS_TRANS_CFG = common dso_local global i64 0, align 8
@CARD_DATA_SOURCE = common dso_local global i64 0, align 8
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@MS_TRANSFER = common dso_local global i64 0, align 8
@MS_TRANSFER_START = common dso_local global i32 0, align 4
@MS_TM_WRITE_BYTES = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@MS_TRANSFER_END = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MS_TRANS_CFG: 0x%02x\0A\00", align 1
@MS_CRC16_ERR = common dso_local global i32 0, align 4
@MS_CRC16_ERROR = common dso_local global i32 0, align 4
@MS_INT_ERR = common dso_local global i32 0, align 4
@MS_INT_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@MS_RDY_TIMEOUT = common dso_local global i32 0, align 4
@MS_TO_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32*, i32)* @ms_write_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_write_bytes(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtsx_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ms_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 0
  store %struct.ms_info* %19, %struct.ms_info** %14, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %6
  %27 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %27, i32* %7, align 4
  br label %169

28:                                               ; preds = %22
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %30 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %29)
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %48, %28
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i64, i64* @PPBUF_BASE2, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i64 %41, i32 255, i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i64, i64* @PPBUF_BASE2, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i64 %61, i32 255, i32 255)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %65 = load i32, i32* @WRITE_REG_CMD, align 4
  %66 = load i64, i64* @MS_TPC, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %64, i32 %65, i64 %66, i32 255, i32 %67)
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %70 = load i32, i32* @WRITE_REG_CMD, align 4
  %71 = load i64, i64* @MS_BYTE_CNT, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %69, i32 %70, i64 %71, i32 255, i32 %72)
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %75 = load i32, i32* @WRITE_REG_CMD, align 4
  %76 = load i64, i64* @MS_TRANS_CFG, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %74, i32 %75, i64 %76, i32 255, i32 %77)
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %80 = load i32, i32* @WRITE_REG_CMD, align 4
  %81 = load i64, i64* @CARD_DATA_SOURCE, align 8
  %82 = load i32, i32* @PINGPONG_BUFFER, align 4
  %83 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %79, i32 %80, i64 %81, i32 1, i32 %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %85 = load i32, i32* @WRITE_REG_CMD, align 4
  %86 = load i64, i64* @MS_TRANSFER, align 8
  %87 = load i32, i32* @MS_TRANSFER_START, align 4
  %88 = load i32, i32* @MS_TM_WRITE_BYTES, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %84, i32 %85, i64 %86, i32 255, i32 %89)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %92 = load i32, i32* @CHECK_REG_CMD, align 4
  %93 = load i64, i64* @MS_TRANSFER, align 8
  %94 = load i32, i32* @MS_TRANSFER_END, align 4
  %95 = load i32, i32* @MS_TRANSFER_END, align 4
  %96 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %91, i32 %92, i64 %93, i32 %94, i32 %95)
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %98 = load i32, i32* @MS_CARD, align 4
  %99 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %97, i32 %98, i32 5000)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %167

102:                                              ; preds = %63
  store i32 0, i32* %17, align 4
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %104 = load i64, i64* @MS_TRANS_CFG, align 8
  %105 = call i32 @rtsx_read_register(%struct.rtsx_chip* %103, i64 %104, i32* %17)
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %107 = call i32 @rtsx_dev(%struct.rtsx_chip* %106)
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %111 = call i32 @rtsx_clear_ms_error(%struct.rtsx_chip* %110)
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @MS_CRC16_ERR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %122 = load i32, i32* @MS_CRC16_ERROR, align 4
  %123 = call i32 @ms_set_err_code(%struct.rtsx_chip* %121, i32 %122)
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %125 = call i32 @ms_parse_err_code(%struct.rtsx_chip* %124)
  store i32 %125, i32* %7, align 4
  br label %169

126:                                              ; preds = %115
  br label %150

127:                                              ; preds = %102
  %128 = load %struct.ms_info*, %struct.ms_info** %14, align 8
  %129 = call i64 @CHK_MSPRO(%struct.ms_info* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i32, i32* %17, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @MS_INT_ERR, align 4
  %138 = load i32, i32* @MS_INT_CMDNK, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %144 = load i32, i32* @MS_CMD_NK, align 4
  %145 = call i32 @ms_set_err_code(%struct.rtsx_chip* %143, i32 %144)
  %146 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %147 = call i32 @ms_parse_err_code(%struct.rtsx_chip* %146)
  store i32 %147, i32* %7, align 4
  br label %169

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %131, %127
  br label %150

150:                                              ; preds = %149, %126
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @MS_RDY_TIMEOUT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %157 = load i32, i32* @MS_TO_ERROR, align 4
  %158 = call i32 @ms_set_err_code(%struct.rtsx_chip* %156, i32 %157)
  %159 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %160 = call i32 @ms_parse_err_code(%struct.rtsx_chip* %159)
  store i32 %160, i32* %7, align 4
  br label %169

161:                                              ; preds = %150
  %162 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %163 = load i32, i32* @MS_TO_ERROR, align 4
  %164 = call i32 @ms_set_err_code(%struct.rtsx_chip* %162, i32 %163)
  %165 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %166 = call i32 @ms_parse_err_code(%struct.rtsx_chip* %165)
  store i32 %166, i32* %7, align 4
  br label %169

167:                                              ; preds = %63
  %168 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %161, %155, %142, %120, %26
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i64, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_clear_ms_error(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_parse_err_code(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MSPRO(%struct.ms_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
