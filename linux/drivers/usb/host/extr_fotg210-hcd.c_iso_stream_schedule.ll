; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32, i64, i32, i64 }
%struct.urb = type { i32, i32, %struct.fotg210_iso_sched* }
%struct.fotg210_iso_sched = type { i32 }
%struct.fotg210_iso_stream = type { i32, i32, i32, i32 }

@SCHEDULE_SLOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"iso request %p too long\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"request %p would overflow (%d+%d >= %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"iso resched full %p (now %d max %d)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, %struct.urb*, %struct.fotg210_iso_stream*)* @iso_stream_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso_stream_schedule(%struct.fotg210_hcd* %0, %struct.urb* %1, %struct.fotg210_iso_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.fotg210_iso_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fotg210_iso_sched*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.fotg210_iso_stream* %2, %struct.fotg210_iso_stream** %7, align 8
  %18 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 3
  store i32 %21, i32* %14, align 4
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 2
  %24 = load %struct.fotg210_iso_sched*, %struct.fotg210_iso_sched** %23, align 8
  store %struct.fotg210_iso_sched* %24, %struct.fotg210_iso_sched** %15, align 8
  %25 = load %struct.urb*, %struct.urb** %6, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.fotg210_iso_sched*, %struct.fotg210_iso_sched** %15, align 8
  %29 = getelementptr inbounds %struct.fotg210_iso_sched, %struct.fotg210_iso_sched* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @SCHEDULE_SLOP, align 4
  %34 = sub i32 %32, %33
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 (%struct.fotg210_hcd*, i8*, %struct.urb*, ...) @fotg210_dbg(%struct.fotg210_hcd* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.urb* %38)
  %40 = load i32, i32* @EFBIG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %242

42:                                               ; preds = %3
  %43 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %44 = call i32 @fotg210_read_frame_index(%struct.fotg210_hcd* %43)
  %45 = load i32, i32* %14, align 4
  %46 = sub i32 %45, 1
  %47 = and i32 %44, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %49 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %48, i32 0, i32 3
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %131

56:                                               ; preds = %42
  %57 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %58 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %63 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %69 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %67, %70
  store i32 %71, i32* %9, align 4
  br label %74

72:                                               ; preds = %61, %56
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %76 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %79, %80
  %82 = load i32, i32* %14, align 4
  %83 = sub i32 %82, 1
  %84 = and i32 %81, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @SCHEDULE_SLOP, align 4
  %88 = mul i32 2, %87
  %89 = sub i32 %86, %88
  %90 = icmp uge i32 %85, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %16, align 4
  %94 = add i32 %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = sub i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @DIV_ROUND_UP(i32 %100, i32 %101)
  %103 = mul i32 %97, %102
  %104 = add i32 %96, %103
  store i32 %104, i32* %10, align 4
  br label %111

105:                                              ; preds = %74
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %108, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %105, %91
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = icmp uge i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %119 = load %struct.urb*, %struct.urb** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sub i32 %120, %121
  %123 = load i32, i32* %11, align 4
  %124 = sub i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 (%struct.fotg210_hcd*, i8*, %struct.urb*, ...) @fotg210_dbg(%struct.fotg210_hcd* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %119, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @EFBIG, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %242

130:                                              ; preds = %111
  br label %178

131:                                              ; preds = %42
  store i32 0, i32* %17, align 4
  %132 = load i32, i32* @SCHEDULE_SLOP, align 4
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, -8
  %135 = add i32 %132, %134
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %162, %131
  %141 = load i32, i32* %10, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %10, align 4
  %143 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %147 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @itd_slot_ok(%struct.fotg210_hcd* %143, i32 %144, i32 %145, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  store i32 1, i32* %17, align 4
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ugt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i1 [ false, %154 ], [ %161, %158 ]
  br i1 %163, label %140, label %164

164:                                              ; preds = %162
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %164
  %168 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %169 = load %struct.urb*, %struct.urb** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add i32 %171, %172
  %174 = call i32 (%struct.fotg210_hcd*, i8*, %struct.urb*, ...) @fotg210_dbg(%struct.fotg210_hcd* %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %169, i32 %170, i32 %173)
  %175 = load i32, i32* @ENOSPC, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %13, align 4
  br label %242

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %130
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %8, align 4
  %181 = sub i32 %179, %180
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %181, %182
  %184 = load i32, i32* %11, align 4
  %185 = sub i32 %183, %184
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @SCHEDULE_SLOP, align 4
  %188 = mul i32 2, %187
  %189 = sub i32 %186, %188
  %190 = icmp uge i32 %185, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %178
  %195 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %196 = load %struct.urb*, %struct.urb** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %8, align 4
  %199 = sub i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sub i32 %200, %201
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @SCHEDULE_SLOP, align 4
  %205 = mul i32 2, %204
  %206 = sub i32 %203, %205
  %207 = call i32 (%struct.fotg210_hcd*, i8*, %struct.urb*, ...) @fotg210_dbg(%struct.fotg210_hcd* %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %196, i32 %199, i32 %202, i32 %206)
  %208 = load i32, i32* @EFBIG, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %13, align 4
  br label %242

210:                                              ; preds = %178
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %14, align 4
  %213 = sub i32 %212, 1
  %214 = and i32 %211, %213
  %215 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %216 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  %217 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %218 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.urb*, %struct.urb** %6, align 8
  %221 = getelementptr inbounds %struct.urb, %struct.urb* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %223 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %210
  %227 = load %struct.urb*, %struct.urb** %6, align 8
  %228 = getelementptr inbounds %struct.urb, %struct.urb* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = lshr i32 %229, 3
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %226, %210
  %232 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %233 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* %8, align 4
  %238 = lshr i32 %237, 3
  %239 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %240 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %236, %231
  store i32 0, i32* %4, align 4
  br label %249

242:                                              ; preds = %194, %167, %117, %36
  %243 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %244 = load %struct.fotg210_iso_sched*, %struct.fotg210_iso_sched** %15, align 8
  %245 = call i32 @iso_sched_free(%struct.fotg210_iso_stream* %243, %struct.fotg210_iso_sched* %244)
  %246 = load %struct.urb*, %struct.urb** %6, align 8
  %247 = getelementptr inbounds %struct.urb, %struct.urb* %246, i32 0, i32 2
  store %struct.fotg210_iso_sched* null, %struct.fotg210_iso_sched** %247, align 8
  %248 = load i32, i32* %13, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %242, %241
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, %struct.urb*, ...) #1

declare dso_local i32 @fotg210_read_frame_index(%struct.fotg210_hcd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @itd_slot_ok(%struct.fotg210_hcd*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iso_sched_free(%struct.fotg210_iso_stream*, %struct.fotg210_iso_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
