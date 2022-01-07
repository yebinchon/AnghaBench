; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"alarm rollover: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"alarm rollover not handled\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"invalid alarm value: %ptR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtc_read_alarm(%struct.rtc_device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time, align 8
  %8 = alloca %struct.rtc_time, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %15 = call i32 @rtc_read_time(%struct.rtc_device* %14, %struct.rtc_time* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %282

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %76, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @memcpy(%struct.rtc_time* %7, %struct.rtc_time* %8, i32 40)
  br label %26

26:                                               ; preds = %24, %21
  store i32 0, i32* %9, align 4
  %27 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = call i32 @rtc_read_alarm_internal(%struct.rtc_device* %27, %struct.rtc_wkalrm* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %282

34:                                               ; preds = %26
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 0
  %37 = call i32 @rtc_valid_tm(%struct.rtc_time* %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = call i32 @rtc_add_offset(%struct.rtc_device* %40, %struct.rtc_time* %42)
  store i32 0, i32* %3, align 4
  br label %282

44:                                               ; preds = %34
  %45 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %46 = call i32 @rtc_read_time(%struct.rtc_device* %45, %struct.rtc_time* %8)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %282

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %72, %74
  br label %76

76:                                               ; preds = %70, %64, %58, %52
  %77 = phi i1 [ true, %64 ], [ true, %58 ], [ true, %52 ], [ %75, %70 ]
  br i1 %77, label %21, label %78

78:                                               ; preds = %76
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %92 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, -1
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %100 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, -1
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %122 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 31
  br i1 %125, label %126, label %132

126:                                              ; preds = %120, %114
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %130 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 4
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = icmp uge i32 %137, 12
  br i1 %138, label %139, label %149

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %143 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 2
  store i64 %141, i64* %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 2, i32* %12, align 4
  br label %148

148:                                              ; preds = %147, %139
  br label %149

149:                                              ; preds = %148, %132
  %150 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %151 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, -1
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %159 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %159, i32 0, i32 3
  store i64 %157, i64* %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 3, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %155
  br label %165

165:                                              ; preds = %164, %149
  %166 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %167 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %166, i32 0, i32 0
  %168 = call i32 @rtc_valid_tm(%struct.rtc_time* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %271

172:                                              ; preds = %165
  %173 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %8)
  store i64 %173, i64* %10, align 8
  %174 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %175 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %174, i32 0, i32 0
  %176 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %175)
  store i64 %176, i64* %11, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %271

181:                                              ; preds = %172
  %182 = load i32, i32* %12, align 4
  switch i32 %182, label %263 [
    i32 1, label %183
    i32 2, label %193
    i32 3, label %237
  ]

183:                                              ; preds = %181
  %184 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %185 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %184, i32 0, i32 0
  %186 = call i32 @dev_dbg(i32* %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i64, i64* %11, align 8
  %188 = add nsw i64 %187, 86400
  store i64 %188, i64* %11, align 8
  %189 = load i64, i64* %11, align 8
  %190 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %191 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %190, i32 0, i32 0
  %192 = call i32 @rtc_time64_to_tm(i64 %189, %struct.rtc_time* %191)
  br label %267

193:                                              ; preds = %181
  %194 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %195 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %194, i32 0, i32 0
  %196 = call i32 @dev_dbg(i32* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %197

197:                                              ; preds = %229, %193
  %198 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %199 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %201, 11
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %205 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %206, align 8
  br label %218

209:                                              ; preds = %197
  %210 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %211 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  %213 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %214 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %209, %203
  %219 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %220 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %225 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @rtc_month_days(i32 %223, i64 %227)
  store i32 %228, i32* %13, align 4
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %232 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = icmp ult i32 %230, %234
  br i1 %235, label %197, label %236

236:                                              ; preds = %229
  br label %267

237:                                              ; preds = %181
  %238 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %239 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %238, i32 0, i32 0
  %240 = call i32 @dev_dbg(i32* %239, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %241

241:                                              ; preds = %260, %237
  %242 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %243 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %244, align 8
  br label %247

247:                                              ; preds = %241
  %248 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %249 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1900
  %253 = call i32 @is_leap_year(i64 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %247
  %256 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %257 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %256, i32 0, i32 0
  %258 = call i32 @rtc_valid_tm(%struct.rtc_time* %257)
  %259 = icmp ne i32 %258, 0
  br label %260

260:                                              ; preds = %255, %247
  %261 = phi i1 [ false, %247 ], [ %259, %255 ]
  br i1 %261, label %241, label %262

262:                                              ; preds = %260
  br label %267

263:                                              ; preds = %181
  %264 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %265 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %264, i32 0, i32 0
  %266 = call i32 (i32*, i8*, ...) @dev_warn(i32* %265, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %267

267:                                              ; preds = %263, %262, %236, %183
  %268 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %269 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %268, i32 0, i32 0
  %270 = call i32 @rtc_valid_tm(%struct.rtc_time* %269)
  store i32 %270, i32* %6, align 4
  br label %271

271:                                              ; preds = %267, %180, %171
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %276 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %275, i32 0, i32 0
  %277 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %278 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %277, i32 0, i32 0
  %279 = call i32 (i32*, i8*, ...) @dev_warn(i32* %276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.rtc_time* %278)
  br label %280

280:                                              ; preds = %274, %271
  %281 = load i32, i32* %6, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %49, %39, %32, %18
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @rtc_read_time(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @memcpy(%struct.rtc_time*, %struct.rtc_time*, i32) #1

declare dso_local i32 @rtc_read_alarm_internal(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i32 @rtc_add_offset(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_month_days(i32, i64) #1

declare dso_local i32 @is_leap_year(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
