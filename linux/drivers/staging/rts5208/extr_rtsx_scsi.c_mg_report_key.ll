; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_mg_report_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_mg_report_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i64, %struct.ms_info }
%struct.ms_info = type { i32 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT = common dso_local global i32 0, align 4
@KC_MG_R_PRO = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"key_format = 0x%x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @mg_report_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_report_key(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  store %struct.ms_info* %11, %struct.ms_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %14)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %21)
  %23 = load i64, i64* @RTSX_STAT_SS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %26)
  %28 = call i32 @wait_timeout(i32 100)
  br label %29

29:                                               ; preds = %25, %20, %2
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %31 = load i32, i32* @RTSX_STAT_RUN, align 4
  %32 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %30, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %34 = call i32 @ms_cleanup_work(%struct.rtsx_chip* %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @check_card_ready(%struct.rtsx_chip* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %43 = call i32 @set_sense_type(%struct.rtsx_chip* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %44, i32* %3, align 4
  br label %243

45:                                               ; preds = %29
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @get_lun_card(%struct.rtsx_chip* %46, i32 %47)
  %49 = load i64, i64* @MS_CARD, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %55 = call i32 @set_sense_type(%struct.rtsx_chip* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %56, i32* %3, align 4
  br label %243

57:                                               ; preds = %45
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @KC_MG_R_PRO, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %69 = call i32 @set_sense_type(%struct.rtsx_chip* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %70, i32* %3, align 4
  br label %243

71:                                               ; preds = %57
  %72 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %73 = call i32 @CHK_MSPRO(%struct.ms_info* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM, align 4
  %79 = call i32 @set_sense_type(%struct.rtsx_chip* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %80, i32* %3, align 4
  br label %243

81:                                               ; preds = %71
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 63
  store i32 %87, i32* %9, align 4
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %89 = call i32 @rtsx_dev(%struct.rtsx_chip* %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  switch i32 %92, label %233 [
    i32 129, label %93
    i32 128, label %128
    i32 130, label %163
  ]

93:                                               ; preds = %81
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %94)
  %96 = icmp eq i32 %95, 1052
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 9
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 28
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %114 = call i32 @mg_get_local_EKB(%struct.scsi_cmnd* %112, %struct.rtsx_chip* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %119, i32* %3, align 4
  br label %243

120:                                              ; preds = %111
  br label %127

121:                                              ; preds = %104, %97, %93
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %125 = call i32 @set_sense_type(%struct.rtsx_chip* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %126, i32* %3, align 4
  br label %243

127:                                              ; preds = %120
  br label %239

128:                                              ; preds = %81
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %129)
  %131 = icmp eq i32 %130, 36
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %132
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 9
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 36
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %149 = call i32 @mg_get_rsp_chg(%struct.scsi_cmnd* %147, %struct.rtsx_chip* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @STATUS_SUCCESS, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %154, i32* %3, align 4
  br label %243

155:                                              ; preds = %146
  br label %162

156:                                              ; preds = %139, %132, %128
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %160 = call i32 @set_sense_type(%struct.rtsx_chip* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %161, i32* %3, align 4
  br label %243

162:                                              ; preds = %155
  br label %239

163:                                              ; preds = %81
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %170 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %172 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %171)
  %173 = icmp eq i32 %172, 1028
  br i1 %173, label %174, label %226

174:                                              ; preds = %163
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %176 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %181, label %226

181:                                              ; preds = %174
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 9
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 4
  br i1 %187, label %188, label %226

188:                                              ; preds = %181
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %190 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %188
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %197 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %195
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %202
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 5
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 32
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %218 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %219 = call i32 @mg_get_ICV(%struct.scsi_cmnd* %217, %struct.rtsx_chip* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @STATUS_SUCCESS, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %224, i32* %3, align 4
  br label %243

225:                                              ; preds = %216
  br label %232

226:                                              ; preds = %209, %202, %195, %188, %181, %174, %163
  %227 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %230 = call i32 @set_sense_type(%struct.rtsx_chip* %227, i32 %228, i32 %229)
  %231 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %231, i32* %3, align 4
  br label %243

232:                                              ; preds = %225
  br label %239

233:                                              ; preds = %81
  %234 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %237 = call i32 @set_sense_type(%struct.rtsx_chip* %234, i32 %235, i32 %236)
  %238 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %238, i32* %3, align 4
  br label %243

239:                                              ; preds = %232, %162, %127
  %240 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %241 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %240, i32 0)
  %242 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %239, %233, %226, %223, %156, %153, %121, %118, %75, %65, %51, %39
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @mg_get_local_EKB(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mg_get_rsp_chg(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mg_get_ICV(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
