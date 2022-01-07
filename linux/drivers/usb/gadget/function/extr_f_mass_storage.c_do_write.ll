; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, i64, i32, i32, i32, %struct.fsg_buffhd*, %struct.fsg_buffhd*, %struct.fsg_lun* }
%struct.fsg_buffhd = type { i64, i32, %struct.TYPE_3__*, i32, %struct.fsg_buffhd* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fsg_lun = type { i64, i32, i32, i32, i32, i8*, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@SS_WRITE_PROTECTED = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i8* null, align 8
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i8* null, align 8
@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@FSG_BUFLEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SS_COMMUNICATION_FAILURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"write %u @ %llu beyond end %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"file write %u @ %llu -> %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"error in file write: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"partial file write: %d/%u\0A\00", align 1
@SS_WRITE_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsg_buffhd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %16 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %16, i32 0, i32 7
  %18 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  store %struct.fsg_lun* %18, %struct.fsg_lun** %4, align 8
  %19 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i8*, i8** @SS_WRITE_PROTECTED, align 8
  %25 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %26 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %391

29:                                               ; preds = %1
  %30 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %31 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %30, i32 0, i32 7
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* @O_SYNC, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %38 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %37, i32 0, i32 7
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %44 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %43, i32 0, i32 7
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %49 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WRITE_6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %29
  %56 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %57 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i64 @get_unaligned_be24(i32* %59)
  store i64 %60, i64* %5, align 8
  br label %112

61:                                               ; preds = %29
  %62 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %63 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = call i64 @get_unaligned_be32(i32* %65)
  store i64 %66, i64* %5, align 8
  %67 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %68 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -25
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %61
  %75 = load i8*, i8** @SS_INVALID_FIELD_IN_CDB, align 8
  %76 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %77 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %391

80:                                               ; preds = %61
  %81 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %82 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %80
  %86 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %87 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %85
  %94 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %95 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %94, i32 0, i32 7
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @spin_lock(i32* %97)
  %99 = load i32, i32* @O_SYNC, align 4
  %100 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %101 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %100, i32 0, i32 7
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %107 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %106, i32 0, i32 7
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  br label %111

111:                                              ; preds = %93, %85, %80
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %115 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %120 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %121 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %391

124:                                              ; preds = %112
  store i32 1, i32* %7, align 4
  %125 = load i64, i64* %5, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %128 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %126, %129
  store i32 %130, i32* %10, align 4
  store i32 %130, i32* %11, align 4
  %131 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %132 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  %134 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %135 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %387, %203, %162, %124
  %138 = load i64, i64* %9, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %388

140:                                              ; preds = %137
  %141 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %142 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %141, i32 0, i32 6
  %143 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %142, align 8
  store %struct.fsg_buffhd* %143, %struct.fsg_buffhd** %6, align 8
  %144 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %145 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %209

149:                                              ; preds = %140
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %149
  %153 = load i64, i64* %8, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @FSG_BUFLEN, align 4
  %156 = call i32 @min(i32 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %159 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp uge i32 %157, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  %163 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %164 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %165 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %168 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = lshr i32 %166, %169
  %171 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %172 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %174 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %173, i32 0, i32 4
  store i32 1, i32* %174, align 4
  br label %137

175:                                              ; preds = %152
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add i32 %177, %176
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %181 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sub i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* %13, align 4
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %8, align 8
  %187 = sub nsw i64 %186, %185
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %190, %175
  %192 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %193 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @set_bulk_out_req_length(%struct.fsg_common* %192, %struct.fsg_buffhd* %193, i32 %194)
  %196 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %197 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %198 = call i32 @start_out_transfer(%struct.fsg_common* %196, %struct.fsg_buffhd* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %191
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %391

203:                                              ; preds = %191
  %204 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %205 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %204, i32 0, i32 4
  %206 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %205, align 8
  %207 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %208 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %207, i32 0, i32 6
  store %struct.fsg_buffhd* %206, %struct.fsg_buffhd** %208, align 8
  br label %137

209:                                              ; preds = %149, %140
  %210 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %211 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %210, i32 0, i32 5
  %212 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %211, align 8
  store %struct.fsg_buffhd* %212, %struct.fsg_buffhd** %6, align 8
  %213 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %214 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %209
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  br label %388

222:                                              ; preds = %218, %209
  %223 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %224 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %225 = call i32 @sleep_thread(%struct.fsg_common* %223, i32 0, %struct.fsg_buffhd* %224)
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i32, i32* %15, align 4
  store i32 %229, i32* %2, align 4
  br label %391

230:                                              ; preds = %222
  %231 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %232 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %231, i32 0, i32 4
  %233 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %232, align 8
  %234 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %235 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %234, i32 0, i32 5
  store %struct.fsg_buffhd* %233, %struct.fsg_buffhd** %235, align 8
  %236 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %237 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %238 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %240 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %239, i32 0, i32 2
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %230
  %246 = load i8*, i8** @SS_COMMUNICATION_FAILURE, align 8
  %247 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %248 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %247, i32 0, i32 5
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %251 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = lshr i32 %249, %252
  %254 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %255 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 8
  %256 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %257 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %256, i32 0, i32 4
  store i32 1, i32* %257, align 4
  br label %388

258:                                              ; preds = %230
  %259 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %260 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %259, i32 0, i32 2
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %13, align 4
  %264 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %265 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %11, align 4
  %268 = sub i32 %266, %267
  %269 = load i32, i32* %13, align 4
  %270 = icmp ult i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %258
  %272 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %11, align 4
  %275 = zext i32 %274 to i64
  %276 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %277 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  %280 = call i32 @LERROR(%struct.fsg_lun* %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %273, i64 %275, i64 %279)
  %281 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %282 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %11, align 4
  %285 = sub i32 %283, %284
  store i32 %285, i32* %13, align 4
  br label %286

286:                                              ; preds = %271, %258
  %287 = load i32, i32* %13, align 4
  %288 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %289 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @min(i32 %287, i32 %290)
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %294 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @round_down(i32 %292, i32 %295)
  store i32 %296, i32* %13, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  br label %374

300:                                              ; preds = %286
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %12, align 4
  %302 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %303 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %302, i32 0, i32 7
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %306 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @kernel_write(%struct.TYPE_4__* %304, i32 %307, i32 %308, i32* %12)
  store i32 %309, i32* %14, align 4
  %310 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %11, align 4
  %313 = zext i32 %312 to i64
  %314 = load i32, i32* %14, align 4
  %315 = call i32 @VLDBG(%struct.fsg_lun* %310, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %311, i64 %313, i32 %314)
  %316 = load i32, i32* @current, align 4
  %317 = call i64 @signal_pending(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %300
  %320 = load i32, i32* @EINTR, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %2, align 4
  br label %391

322:                                              ; preds = %300
  %323 = load i32, i32* %14, align 4
  %324 = icmp ult i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %327 = load i32, i32* %14, align 4
  %328 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %326, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %327)
  store i32 0, i32* %14, align 4
  br label %344

329:                                              ; preds = %322
  %330 = load i32, i32* %14, align 4
  %331 = load i32, i32* %13, align 4
  %332 = icmp ult i32 %330, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %329
  %334 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %13, align 4
  %337 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %335, i32 %336)
  %338 = load i32, i32* %14, align 4
  %339 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %340 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @round_down(i32 %338, i32 %341)
  store i32 %342, i32* %14, align 4
  br label %343

343:                                              ; preds = %333, %329
  br label %344

344:                                              ; preds = %343, %325
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* %11, align 4
  %347 = add i32 %346, %345
  store i32 %347, i32* %11, align 4
  %348 = load i32, i32* %14, align 4
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* %9, align 8
  %351 = sub nsw i64 %350, %349
  store i64 %351, i64* %9, align 8
  %352 = load i32, i32* %14, align 4
  %353 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %354 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = sub i32 %355, %352
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* %13, align 4
  %359 = icmp ult i32 %357, %358
  br i1 %359, label %360, label %373

360:                                              ; preds = %344
  %361 = load i8*, i8** @SS_WRITE_ERROR, align 8
  %362 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %363 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %362, i32 0, i32 5
  store i8* %361, i8** %363, align 8
  %364 = load i32, i32* %11, align 4
  %365 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %366 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = lshr i32 %364, %367
  %369 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %370 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %369, i32 0, i32 3
  store i32 %368, i32* %370, align 8
  %371 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %372 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %371, i32 0, i32 4
  store i32 1, i32* %372, align 4
  br label %388

373:                                              ; preds = %344
  br label %374

374:                                              ; preds = %373, %299
  %375 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %376 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %375, i32 0, i32 2
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %381 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = icmp ult i32 %379, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %374
  %385 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %386 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %385, i32 0, i32 4
  store i32 1, i32* %386, align 8
  br label %388

387:                                              ; preds = %374
  br label %137

388:                                              ; preds = %384, %360, %245, %221, %137
  %389 = load i32, i32* @EIO, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %388, %319, %228, %200, %118, %74, %23
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @get_unaligned_be24(i32*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @set_bulk_out_req_length(%struct.fsg_common*, %struct.fsg_buffhd*, i32) #1

declare dso_local i32 @start_out_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @LERROR(%struct.fsg_lun*, i8*, i32, i64, i64) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @kernel_write(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @VLDBG(%struct.fsg_lun*, i8*, i32, i64, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
