; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, i64, i32, %struct.fsg_buffhd*, %struct.fsg_lun* }
%struct.fsg_buffhd = type { %struct.fsg_buffhd*, %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.fsg_lun = type { i64, i32, i32, i32, i8*, i32, i32, i64 }

@READ_6 = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@FSG_BUFLEN = common dso_local global i64 0, align 8
@BUF_STATE_FULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"file read %u @ %llu -> %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"error in file read: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"partial file read: %d/%u\0A\00", align 1
@SS_UNRECOVERED_READ_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsg_buffhd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %13 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %14 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %13, i32 0, i32 4
  %15 = load %struct.fsg_lun*, %struct.fsg_lun** %14, align 8
  store %struct.fsg_lun* %15, %struct.fsg_lun** %4, align 8
  %16 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @READ_6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %25 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = call i64 @get_unaligned_be24(i32* %27)
  store i64 %28, i64* %5, align 8
  br label %49

29:                                               ; preds = %1
  %30 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %31 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = call i64 @get_unaligned_be32(i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %36 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -25
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load i8*, i8** @SS_INVALID_FIELD_IN_CDB, align 8
  %44 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %45 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %232

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %52 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %57 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %58 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %232

61:                                               ; preds = %49
  %62 = load i64, i64* %5, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %65 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %63, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %69 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %232

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %223, %79
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* @FSG_BUFLEN, align 8
  %84 = call i32 @min(i32 %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %87 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = call i32 @min(i32 %85, i64 %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %94 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %93, i32 0, i32 3
  %95 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %94, align 8
  store %struct.fsg_buffhd* %95, %struct.fsg_buffhd** %6, align 8
  %96 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %97 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %98 = call i32 @sleep_thread(%struct.fsg_common* %96, i32 0, %struct.fsg_buffhd* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %80
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %232

103:                                              ; preds = %80
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %108 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %109 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %112 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = lshr i32 %110, %113
  %115 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %116 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %118 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  %119 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %120 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load i8*, i8** @BUF_STATE_FULL, align 8
  %124 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %125 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %229

126:                                              ; preds = %103
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %10, align 4
  %128 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %129 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %132 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @kernel_read(i32 %130, i32 %133, i32 %134, i32* %10)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @VLDBG(%struct.fsg_lun* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %137, i64 %139, i32 %140)
  %142 = load i32, i32* @current, align 4
  %143 = call i64 @signal_pending(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %126
  %146 = load i32, i32* @EINTR, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %232

148:                                              ; preds = %126
  %149 = load i32, i32* %12, align 4
  %150 = icmp ult i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  store i32 0, i32* %12, align 4
  br label %170

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %166 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @round_down(i32 %164, i32 %167)
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %159, %155
  br label %170

170:                                              ; preds = %169, %151
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %12, align 4
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %8, align 8
  %177 = sub nsw i64 %176, %175
  store i64 %177, i64* %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %180 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sub i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %185 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load i8*, i8** @BUF_STATE_FULL, align 8
  %189 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %190 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %170
  %195 = load i8*, i8** @SS_UNRECOVERED_READ_ERROR, align 8
  %196 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %197 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %196, i32 0, i32 4
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %200 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = lshr i32 %198, %201
  %203 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %204 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %206 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %205, i32 0, i32 3
  store i32 1, i32* %206, align 8
  br label %229

207:                                              ; preds = %170
  %208 = load i64, i64* %8, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %229

211:                                              ; preds = %207
  %212 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %213 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %217 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %218 = call i32 @start_in_transfer(%struct.fsg_common* %216, %struct.fsg_buffhd* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %211
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %2, align 4
  br label %232

223:                                              ; preds = %211
  %224 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %225 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %224, i32 0, i32 0
  %226 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %225, align 8
  %227 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %228 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %227, i32 0, i32 3
  store %struct.fsg_buffhd* %226, %struct.fsg_buffhd** %228, align 8
  br label %80

229:                                              ; preds = %210, %194, %106
  %230 = load i32, i32* @EIO, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %229, %220, %145, %101, %76, %55, %42
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i64 @get_unaligned_be24(i32*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @kernel_read(i32, i32, i32, i32*) #1

declare dso_local i32 @VLDBG(%struct.fsg_lun*, i8*, i32, i64, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*, i32, ...) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @start_in_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
