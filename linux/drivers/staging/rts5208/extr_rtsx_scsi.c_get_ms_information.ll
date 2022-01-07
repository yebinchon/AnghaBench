; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_ms_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_ms_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32, i32 }

@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @get_ms_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ms_information(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 0
  store %struct.ms_info* %14, %struct.ms_info** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @check_card_ready(%struct.rtsx_chip* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %25 = call i32 @set_sense_type(%struct.rtsx_chip* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %26, i32* %3, align 4
  br label %248

27:                                               ; preds = %2
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @get_lun_card(%struct.rtsx_chip* %28, i32 %29)
  %31 = load i64, i64* @MS_CARD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %37 = call i32 @set_sense_type(%struct.rtsx_chip* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %248

39:                                               ; preds = %27
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 176
  br i1 %45, label %74, label %46

46:                                               ; preds = %39
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 77
  br i1 %52, label %74, label %53

53:                                               ; preds = %46
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 83
  br i1 %59, label %74, label %60

60:                                               ; preds = %53
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 73
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 68
  br i1 %73, label %74, label %80

74:                                               ; preds = %67, %60, %53, %46, %39
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %78 = call i32 @set_sense_type(%struct.rtsx_chip* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %79, i32* %3, align 4
  br label %248

80:                                               ; preds = %67
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %87 = call i64 @CHK_MSXC(%struct.ms_info* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %103, label %92

92:                                               ; preds = %89, %80
  %93 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %94 = call i64 @CHK_MSXC(%struct.ms_info* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 19
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %92
  %100 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %101 = call i32 @CHK_MSPRO(%struct.ms_info* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %99, %96, %89
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %107 = call i32 @set_sense_type(%struct.rtsx_chip* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %108, i32* %3, align 4
  br label %248

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 21
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 58, i32* %11, align 4
  store i32 58, i32* %9, align 4
  br label %114

113:                                              ; preds = %109
  store i32 106, i32* %11, align 4
  store i32 106, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32* @kmalloc(i32 %115, i32 %116)
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %248

122:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %135 = call i64 @CHK_MSXC(%struct.ms_info* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %122
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 3, i32* %142, align 4
  br label %149

143:                                              ; preds = %122
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 2, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %137
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 1, i32* %154, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 0, i32* %159, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 0, i32* %164, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 0, i32* %169, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 21
  br i1 %182, label %183, label %184

183:                                              ; preds = %149
  store i32 49, i32* %9, align 4
  br label %185

184:                                              ; preds = %149
  store i32 97, i32* %9, align 4
  br label %185

185:                                              ; preds = %184, %183
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 0, i32* %190, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 128, i32* %201, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp eq i32 %202, 16
  br i1 %203, label %207, label %204

204:                                              ; preds = %185
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 19
  br i1 %206, label %207, label %216

207:                                              ; preds = %204, %185
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %213 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @memcpy(i32* %211, i32 %214, i32 96)
  br label %225

216:                                              ; preds = %204
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %222 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @memcpy(i32* %220, i32 %223, i32 48)
  br label %225

225:                                              ; preds = %216, %207
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %229 = call i32 @rtsx_stor_set_xfer_buf(i32* %226, i32 %227, %struct.scsi_cmnd* %228)
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 21
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %235 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %234)
  %236 = sub nsw i64 %235, 60
  %237 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %233, i64 %236)
  br label %244

238:                                              ; preds = %225
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %240 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %241 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %240)
  %242 = sub nsw i64 %241, 108
  %243 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %239, i64 %242)
  br label %244

244:                                              ; preds = %238, %232
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @kfree(i32* %245)
  %247 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %244, %120, %103, %74, %33, %21
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_MSXC(%struct.ms_info*) #1

declare dso_local i32 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i32*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
