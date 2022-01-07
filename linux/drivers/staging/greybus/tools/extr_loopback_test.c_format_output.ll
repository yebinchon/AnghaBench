; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_format_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_format_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i8*, i32, i32, i64, i64 }
%struct.loopback_results = type { i32, i32, i32, double, i32, i32, i32, double, i32, i32, i32, double, i32, i32, i32, double, i32, i32, i32, double, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%u-%u-%u %u:%u:%u\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"\0A test:\09\09\09%s\0A path:\09\09\09%s\0A size:\09\09\09%u\0A iterations:\09\09%u\0A errors:\09\09%u\0A async:\09\09\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c" requests per-sec:\09min=%u, max=%u, average=%f, jitter=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c" ap-throughput B/s:\09min=%u max=%u average=%f jitter=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c" ap-latency usec:\09min=%u max=%u average=%f jitter=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c" apbridge-latency usec:\09min=%u max=%u average=%f jitter=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c" gbphy-latency usec:\09min=%u max=%u average=%f jitter=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c",%s,%s,%u,%u,%u\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c",%u,%u,%f,%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_output(%struct.loopback_test* %0, %struct.loopback_results* %1, i8* %2, i8* %3, i32 %4, %struct.tm* %5) #0 {
  %7 = alloca %struct.loopback_test*, align 8
  %8 = alloca %struct.loopback_results*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %7, align 8
  store %struct.loopback_results* %1, %struct.loopback_results** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.tm* %5, %struct.tm** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.tm*, %struct.tm** %12, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1900
  %23 = load %struct.tm*, %struct.tm** %12, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.tm*, %struct.tm** %12, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tm*, %struct.tm** %12, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tm*, %struct.tm** %12, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tm*, %struct.tm** %12, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %41 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %184

44:                                               ; preds = %6
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %53 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %57 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %60 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %63 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %66 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55, i32 %58, i32 %61, i32 %64, i8* %70)
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %82 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %85 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %88 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %87, i32 0, i32 3
  %89 = load double, double* %88, align 8
  %90 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %91 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 %80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %86, double %89, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %104 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %107 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %110 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %109, i32 0, i32 7
  %111 = load double, double* %110, align 8
  %112 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %113 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %99, i32 %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %108, double %111, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %126 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %129 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %132 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %131, i32 0, i32 11
  %133 = load double, double* %132, align 8
  %134 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %135 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %124, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %130, double %133, i32 %136)
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %148 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %151 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %154 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %153, i32 0, i32 15
  %155 = load double, double* %154, align 8
  %156 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %157 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %156, i32 0, i32 16
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %143, i32 %146, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %152, double %155, i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %170 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %169, i32 0, i32 17
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %173 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %172, i32 0, i32 18
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %176 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %175, i32 0, i32 19
  %177 = load double, double* %176, align 8
  %178 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %179 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %178, i32 0, i32 20
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %165, i32 %168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %174, double %177, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %13, align 4
  br label %318

184:                                              ; preds = %6
  %185 = load i8*, i8** %10, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %193 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %197 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.loopback_test*, %struct.loopback_test** %7, align 8
  %200 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %203 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %188, i32 %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %194, i8* %195, i32 %198, i32 %201, i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %13, align 4
  %208 = load i8*, i8** %10, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %13, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %216 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %219 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %222 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %221, i32 0, i32 3
  %223 = load double, double* %222, align 8
  %224 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %225 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %211, i32 %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %217, i32 %220, double %223, i32 %226)
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %13, align 4
  %230 = load i8*, i8** %10, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %13, align 4
  %236 = sub nsw i32 %234, %235
  %237 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %238 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %241 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %244 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %243, i32 0, i32 11
  %245 = load double, double* %244, align 8
  %246 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %247 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %246, i32 0, i32 12
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %233, i32 %236, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %239, i32 %242, double %245, i32 %248)
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %13, align 4
  %252 = load i8*, i8** %10, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %260 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %263 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %266 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %265, i32 0, i32 7
  %267 = load double, double* %266, align 8
  %268 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %269 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %255, i32 %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %261, i32 %264, double %267, i32 %270)
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %13, align 4
  %274 = load i8*, i8** %10, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %13, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %282 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %281, i32 0, i32 13
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %285 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %284, i32 0, i32 14
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %288 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %287, i32 0, i32 15
  %289 = load double, double* %288, align 8
  %290 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %291 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %290, i32 0, i32 16
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %277, i32 %280, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %283, i32 %286, double %289, i32 %292)
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %13, align 4
  %296 = load i8*, i8** %10, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %13, align 4
  %302 = sub nsw i32 %300, %301
  %303 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %304 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %303, i32 0, i32 17
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %307 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %306, i32 0, i32 18
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %310 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %309, i32 0, i32 19
  %311 = load double, double* %310, align 8
  %312 = load %struct.loopback_results*, %struct.loopback_results** %8, align 8
  %313 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %312, i32 0, i32 20
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %299, i32 %302, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %305, i32 %308, double %311, i32 %314)
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %13, align 4
  br label %318

318:                                              ; preds = %184, %44
  %319 = load i8*, i8** %10, align 8
  %320 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %319)
  %321 = load i32, i32* %13, align 4
  ret i32 %321
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
