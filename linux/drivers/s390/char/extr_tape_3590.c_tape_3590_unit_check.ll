; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_unit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unit Check: RQC = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"(%08x): Backward at Beginning of Partition\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"(%08x): Forward at End of Partition\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"(%08x): End of Data Mark\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"(%08x): Rewind Unload initiated\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"(%08x): Rewind Unload complete\0A\00", align 1
@MS_UNLOADED = common dso_local global i32 0, align 4
@TO_CRYPT_OFF = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"(%08x): LONG BUSY\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"(%08x): Crypto LONG BUSY\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"A different host has privileged access to the tape unit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_unit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_unit_check(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca %struct.tape_3590_sense*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %9 = load %struct.irb*, %struct.irb** %7, align 8
  %10 = getelementptr inbounds %struct.irb, %struct.irb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tape_3590_sense*
  store %struct.tape_3590_sense* %12, %struct.tape_3590_sense** %8, align 8
  %13 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %14 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %18 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %231 [
    i32 4368, label %20
    i32 8209, label %28
    i32 8752, label %36
    i32 8753, label %36
    i32 8768, label %44
    i32 12304, label %49
    i32 12306, label %60
    i32 12320, label %71
    i32 12578, label %82
    i32 12579, label %93
    i32 16400, label %108
    i32 16402, label %121
    i32 16404, label %135
    i32 20496, label %144
    i32 20512, label %177
    i32 20513, label %177
    i32 20514, label %177
    i32 20544, label %177
    i32 20545, label %177
    i32 20546, label %177
    i32 20752, label %185
    i32 20753, label %185
    i32 20768, label %192
    i32 4384, label %192
    i32 24608, label %205
    i32 32785, label %212
    i32 32787, label %219
  ]

20:                                               ; preds = %3
  %21 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %22 = load %struct.irb*, %struct.irb** %7, align 8
  %23 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %21, %struct.irb* %22)
  %24 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %25 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %26 = load %struct.irb*, %struct.irb** %7, align 8
  %27 = call i32 @tape_3590_erp_read_buf_log(%struct.tape_device* %24, %struct.tape_request* %25, %struct.irb* %26)
  store i32 %27, i32* %4, align 4
  br label %238

28:                                               ; preds = %3
  %29 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %30 = load %struct.irb*, %struct.irb** %7, align 8
  %31 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %29, %struct.irb* %30)
  %32 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = load %struct.irb*, %struct.irb** %7, align 8
  %35 = call i32 @tape_3590_erp_read_alternate(%struct.tape_device* %32, %struct.tape_request* %33, %struct.irb* %34)
  store i32 %35, i32* %4, align 4
  br label %238

36:                                               ; preds = %3, %3
  %37 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %38 = load %struct.irb*, %struct.irb** %7, align 8
  %39 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %37, %struct.irb* %38)
  %40 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %41 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %42 = load %struct.irb*, %struct.irb** %7, align 8
  %43 = call i32 @tape_3590_erp_special_interrupt(%struct.tape_device* %40, %struct.tape_request* %41, %struct.irb* %42)
  store i32 %43, i32* %4, align 4
  br label %238

44:                                               ; preds = %3
  %45 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %46 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %47 = load %struct.irb*, %struct.irb** %7, align 8
  %48 = call i32 @tape_3590_crypt_error(%struct.tape_device* %45, %struct.tape_request* %46, %struct.irb* %47)
  store i32 %48, i32* %4, align 4
  br label %238

49:                                               ; preds = %3
  %50 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %51 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %55 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %56 = load %struct.irb*, %struct.irb** %7, align 8
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @tape_3590_erp_basic(%struct.tape_device* %54, %struct.tape_request* %55, %struct.irb* %56, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %238

60:                                               ; preds = %3
  %61 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %62 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %66 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %67 = load %struct.irb*, %struct.irb** %7, align 8
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @tape_3590_erp_basic(%struct.tape_device* %65, %struct.tape_request* %66, %struct.irb* %67, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %238

71:                                               ; preds = %3
  %72 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %73 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %77 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %78 = load %struct.irb*, %struct.irb** %7, align 8
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @tape_3590_erp_basic(%struct.tape_device* %76, %struct.tape_request* %77, %struct.irb* %78, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %238

82:                                               ; preds = %3
  %83 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %84 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %88 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %89 = load %struct.irb*, %struct.irb** %7, align 8
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @tape_3590_erp_basic(%struct.tape_device* %87, %struct.tape_request* %88, %struct.irb* %89, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %238

93:                                               ; preds = %3
  %94 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %95 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %99 = load i32, i32* @MS_UNLOADED, align 4
  %100 = call i32 @tape_med_state_set(%struct.tape_device* %98, i32 %99)
  %101 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %102 = load i32, i32* @TO_CRYPT_OFF, align 4
  %103 = call i32 @tape_3590_schedule_work(%struct.tape_device* %101, i32 %102)
  %104 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %105 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %106 = load %struct.irb*, %struct.irb** %7, align 8
  %107 = call i32 @tape_3590_erp_basic(%struct.tape_device* %104, %struct.tape_request* %105, %struct.irb* %106, i32 0)
  store i32 %107, i32* %4, align 4
  br label %238

108:                                              ; preds = %3
  %109 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %110 = load i32, i32* @MS_UNLOADED, align 4
  %111 = call i32 @tape_med_state_set(%struct.tape_device* %109, i32 %110)
  %112 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %113 = load i32, i32* @TO_CRYPT_OFF, align 4
  %114 = call i32 @tape_3590_schedule_work(%struct.tape_device* %112, i32 %113)
  %115 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %116 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %117 = load %struct.irb*, %struct.irb** %7, align 8
  %118 = load i32, i32* @ENOMEDIUM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call i32 @tape_3590_erp_basic(%struct.tape_device* %115, %struct.tape_request* %116, %struct.irb* %117, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %238

121:                                              ; preds = %3
  %122 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %123 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %127 = load %struct.irb*, %struct.irb** %7, align 8
  %128 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %126, %struct.irb* %127)
  %129 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %130 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %131 = load %struct.irb*, %struct.irb** %7, align 8
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  %134 = call i32 @tape_3590_erp_basic(%struct.tape_device* %129, %struct.tape_request* %130, %struct.irb* %131, i32 %133)
  store i32 %134, i32* %4, align 4
  br label %238

135:                                              ; preds = %3
  %136 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %137 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %141 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %142 = load %struct.irb*, %struct.irb** %7, align 8
  %143 = call i32 @tape_3590_erp_long_busy(%struct.tape_device* %140, %struct.tape_request* %141, %struct.irb* %142)
  store i32 %143, i32* %4, align 4
  br label %238

144:                                              ; preds = %3
  %145 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %146 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 208
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %151 = load %struct.irb*, %struct.irb** %7, align 8
  %152 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %150, %struct.irb* %151)
  %153 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %154 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %155 = load %struct.irb*, %struct.irb** %7, align 8
  %156 = call i32 @tape_3590_erp_swap(%struct.tape_device* %153, %struct.tape_request* %154, %struct.irb* %155)
  store i32 %156, i32* %4, align 4
  br label %238

157:                                              ; preds = %144
  %158 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %159 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 38
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %164 = load %struct.irb*, %struct.irb** %7, align 8
  %165 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %163, %struct.irb* %164)
  %166 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %167 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %168 = load %struct.irb*, %struct.irb** %7, align 8
  %169 = call i32 @tape_3590_erp_read_opposite(%struct.tape_device* %166, %struct.tape_request* %167, %struct.irb* %168)
  store i32 %169, i32* %4, align 4
  br label %238

170:                                              ; preds = %157
  %171 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %172 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %173 = load %struct.irb*, %struct.irb** %7, align 8
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  %176 = call i32 @tape_3590_erp_basic(%struct.tape_device* %171, %struct.tape_request* %172, %struct.irb* %173, i32 %175)
  store i32 %176, i32* %4, align 4
  br label %238

177:                                              ; preds = %3, %3, %3, %3, %3, %3
  %178 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %179 = load %struct.irb*, %struct.irb** %7, align 8
  %180 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %178, %struct.irb* %179)
  %181 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %182 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %183 = load %struct.irb*, %struct.irb** %7, align 8
  %184 = call i32 @tape_3590_erp_swap(%struct.tape_device* %181, %struct.tape_request* %182, %struct.irb* %183)
  store i32 %184, i32* %4, align 4
  br label %238

185:                                              ; preds = %3, %3
  %186 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %187 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %188 = load %struct.irb*, %struct.irb** %7, align 8
  %189 = load i32, i32* @EMEDIUMTYPE, align 4
  %190 = sub nsw i32 0, %189
  %191 = call i32 @tape_3590_erp_basic(%struct.tape_device* %186, %struct.tape_request* %187, %struct.irb* %188, i32 %190)
  store i32 %191, i32* %4, align 4
  br label %238

192:                                              ; preds = %3, %3
  %193 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %194 = load i32, i32* @MS_UNLOADED, align 4
  %195 = call i32 @tape_med_state_set(%struct.tape_device* %193, i32 %194)
  %196 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %197 = load i32, i32* @TO_CRYPT_OFF, align 4
  %198 = call i32 @tape_3590_schedule_work(%struct.tape_device* %196, i32 %197)
  %199 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %200 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %201 = load %struct.irb*, %struct.irb** %7, align 8
  %202 = load i32, i32* @ENOMEDIUM, align 4
  %203 = sub nsw i32 0, %202
  %204 = call i32 @tape_3590_erp_basic(%struct.tape_device* %199, %struct.tape_request* %200, %struct.irb* %201, i32 %203)
  store i32 %204, i32* %4, align 4
  br label %238

205:                                              ; preds = %3
  %206 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %207 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %208 = load %struct.irb*, %struct.irb** %7, align 8
  %209 = load i32, i32* @EMEDIUMTYPE, align 4
  %210 = sub nsw i32 0, %209
  %211 = call i32 @tape_3590_erp_basic(%struct.tape_device* %206, %struct.tape_request* %207, %struct.irb* %208, i32 %210)
  store i32 %211, i32* %4, align 4
  br label %238

212:                                              ; preds = %3
  %213 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %214 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %215 = load %struct.irb*, %struct.irb** %7, align 8
  %216 = load i32, i32* @EPERM, align 4
  %217 = sub nsw i32 0, %216
  %218 = call i32 @tape_3590_erp_basic(%struct.tape_device* %213, %struct.tape_request* %214, %struct.irb* %215, i32 %217)
  store i32 %218, i32* %4, align 4
  br label %238

219:                                              ; preds = %3
  %220 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %221 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %220, i32 0, i32 1
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = call i32 @dev_warn(i32* %223, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %225 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %226 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %227 = load %struct.irb*, %struct.irb** %7, align 8
  %228 = load i32, i32* @EPERM, align 4
  %229 = sub nsw i32 0, %228
  %230 = call i32 @tape_3590_erp_basic(%struct.tape_device* %225, %struct.tape_request* %226, %struct.irb* %227, i32 %229)
  store i32 %230, i32* %4, align 4
  br label %238

231:                                              ; preds = %3
  %232 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %233 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %234 = load %struct.irb*, %struct.irb** %7, align 8
  %235 = load i32, i32* @EIO, align 4
  %236 = sub nsw i32 0, %235
  %237 = call i32 @tape_3590_erp_basic(%struct.tape_device* %232, %struct.tape_request* %233, %struct.irb* %234, i32 %236)
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %231, %219, %212, %205, %192, %185, %177, %170, %162, %149, %135, %121, %108, %93, %82, %71, %60, %49, %44, %36, %28, %20
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_3590_print_era_msg(%struct.tape_device*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_buf_log(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_alternate(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_special_interrupt(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_crypt_error(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_basic(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @tape_med_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_3590_schedule_work(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_3590_erp_long_busy(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_swap(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_opposite(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
