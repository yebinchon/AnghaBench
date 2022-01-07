; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_analyse_hdrive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_analyse_hdrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"gdth_analyse_hdrive() hanum %d drive %d\0A\00", align 1
@MAX_HDRIVES = common dso_local global i64 0, align 8
@CACHESERVICE = common dso_local global i32 0, align 4
@GDT_INFO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SECS32 = common dso_local global i32 0, align 4
@GDT_64BIT = common dso_local global i32 0, align 4
@GDT_X_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"gdth_search_dr() cdr. %d size %d hds %d scs %d\0A\00", align 1
@GDT_DEVTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"gdth_search_dr() cache drive %d devtype %d\0A\00", align 1
@GDT_CLUST_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"gdth_search_dr() cache drive %d cluster info %d\0A\00", align 1
@shared_access = common dso_local global i32 0, align 4
@GDT_RW_ATTRIBS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"gdth_search_dr() cache drive %d r/w attrib. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @gdth_analyse_hdrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdth_analyse_hdrive(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @TRACE(i8* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAX_HDRIVES, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %247

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i32, i32* @CACHESERVICE, align 4
  %22 = load i32, i32* @GDT_INFO, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @gdth_internal_cmd(%struct.TYPE_6__* %20, i32 %21, i32 %22, i64 %23, i32 0, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %247

27:                                               ; preds = %19
  %28 = load i32, i32* @TRUE, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i32 %28, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 8
  %44 = load i32, i32* @SECS32, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %45
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %27
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gdth_eval_mapping(i32 %65, i32* %6, i32* %7, i32* %8)
  br label %88

67:                                               ; preds = %27
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %67, %58
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  store i8* %91, i8** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i8* %100, i8** %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @GDT_64BIT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %88
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = load i32, i32* @CACHESERVICE, align 4
  %127 = load i32, i32* @GDT_X_INFO, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @gdth_internal_cmd(%struct.TYPE_6__* %125, i32 %126, i32 %127, i64 %128, i32 0, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 32
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %140, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 %144, i32* %150, align 8
  br label %151

151:                                              ; preds = %136, %131, %124
  br label %152

152:                                              ; preds = %151, %88
  %153 = load i64, i64* %5, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 @TRACE2(i8* %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = load i32, i32* @CACHESERVICE, align 4
  %168 = load i32, i32* @GDT_DEVTYPE, align 4
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @gdth_internal_cmd(%struct.TYPE_6__* %166, i32 %167, i32 %168, i64 %169, i32 0, i32 0)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %152
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @TRACE2(i8* %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i64 %183, i64* %189, align 8
  br label %190

190:                                              ; preds = %172, %152
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = load i32, i32* @CACHESERVICE, align 4
  %193 = load i32, i32* @GDT_CLUST_INFO, align 4
  %194 = load i64, i64* %5, align 8
  %195 = call i64 @gdth_internal_cmd(%struct.TYPE_6__* %191, i32 %192, i32 %193, i64 %194, i32 0, i32 0)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %190
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @TRACE2(i8* %203)
  %205 = load i32, i32* @shared_access, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %197
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = load i64, i64* %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  store i8* %212, i8** %218, align 8
  br label %219

219:                                              ; preds = %207, %197
  br label %220

220:                                              ; preds = %219, %190
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = load i32, i32* @CACHESERVICE, align 4
  %223 = load i32, i32* @GDT_RW_ATTRIBS, align 4
  %224 = load i64, i64* %5, align 8
  %225 = call i64 @gdth_internal_cmd(%struct.TYPE_6__* %221, i32 %222, i32 %223, i64 %224, i32 0, i32 0)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %220
  %228 = load i64, i64* %5, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 @TRACE2(i8* %233)
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i8*
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i64, i64* %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  store i8* %239, i8** %245, align 8
  br label %246

246:                                              ; preds = %227, %220
  store i32 1, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %26, %18
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @gdth_internal_cmd(%struct.TYPE_6__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @gdth_eval_mapping(i32, i32*, i32*, i32*) #1

declare dso_local i32 @TRACE2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
