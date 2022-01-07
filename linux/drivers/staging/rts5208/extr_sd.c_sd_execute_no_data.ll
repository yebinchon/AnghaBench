; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_no_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_no_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32, i32, i32*, i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@APP_CMD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SENSE_TYPE_NO_SENSE = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_LOCK_1BIT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_execute_no_data(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 1
  store %struct.sd_info* %16, %struct.sd_info** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %20 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %27 = call i32 @set_sense_type(%struct.rtsx_chip* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %213

29:                                               ; preds = %2
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %31 = call i32 @sd_switch_clock(%struct.rtsx_chip* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %36, i32* %3, align 4
  br label %213

37:                                               ; preds = %29
  %38 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %39 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %44 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %48 = call i32 @set_sense_type(%struct.rtsx_chip* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %49, i32* %3, align 4
  br label %213

50:                                               ; preds = %37
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  store i32 %56, i32* %10, align 4
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %65
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 24
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %80, %86
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %87, %93
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %94, %99
  store i32 %100, i32* %14, align 4
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = call i32 @get_rsp_type(%struct.scsi_cmnd* %101, i32* %11, i32* %9)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %74
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %110 = call i32 @set_sense_type(%struct.rtsx_chip* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %111, i32* %3, align 4
  br label %213

112:                                              ; preds = %74
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %115 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %117 = call i32 @sd_switch_clock(%struct.rtsx_chip* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @STATUS_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %122, i32* %3, align 4
  br label %213

123:                                              ; preds = %112
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %125 = load i32, i32* @REG_SD_CFG1, align 4
  %126 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %127 = call i32 @rtsx_write_register(%struct.rtsx_chip* %124, i32 %125, i32 3, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @STATUS_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %132, i32* %3, align 4
  br label %213

133:                                              ; preds = %123
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %138 = call i32 @sd_select_card(%struct.rtsx_chip* %137, i32 0)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @STATUS_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %189

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %133
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %149 = load i32, i32* @APP_CMD, align 4
  %150 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %151 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %154 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %148, i32 %149, i32 %152, i32 %153, i32* null, i32 0, i32 0)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @STATUS_SUCCESS, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %189

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %144
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %166 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %161, i32 %162, i32 %163, i32 %164, i32* %167, i32 %168, i32 0)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @STATUS_SUCCESS, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %160
  br label %189

174:                                              ; preds = %160
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %179 = call i32 @sd_select_card(%struct.rtsx_chip* %178, i32 1)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @STATUS_SUCCESS, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %189

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %174
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %187 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %186, i32 0)
  %188 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %188, i32* %3, align 4
  br label %213

189:                                              ; preds = %183, %173, %158, %142
  %190 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %191 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %195 = call i32 @set_sense_type(%struct.rtsx_chip* %192, i32 %193, i32 %194)
  %196 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %197 = call i32 @release_sd_card(%struct.rtsx_chip* %196)
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %199 = call i32 @do_reset_sd_card(%struct.rtsx_chip* %198)
  %200 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %201 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @SD_CARD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %189
  %207 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %210 = call i32 @set_sense_type(%struct.rtsx_chip* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %189
  %212 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %185, %131, %121, %106, %42, %35, %23
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @get_rsp_type(%struct.scsi_cmnd*, i32*, i32*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_sd_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
