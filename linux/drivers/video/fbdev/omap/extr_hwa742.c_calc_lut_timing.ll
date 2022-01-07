; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_calc_lut_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_calc_lut_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.extif_timings, i32 }
%struct.TYPE_5__ = type { i32 (%struct.extif_timings*)* }
%struct.TYPE_4__ = type { i32 }
%struct.extif_timings = type { i32, i32, i32, i32, i64, i32, i64, i32, i64, i8*, i8* }

@hwa742 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [61 x i8] c"HWA742 systim %lu ps extif_clk_period %u psextif_clk_div %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[lut]cson %d csoff %d reon %d reoff %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[lut]weon %d weoff %d recyc %d wecyc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"[lut]rdaccess %d cspulse %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @calc_lut_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_lut_timing(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extif_timings*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = udiv i64 %7, 1000
  %9 = udiv i64 1000000000, %8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 3), align 8
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %15, i32 %16)
  store %struct.extif_timings* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 2), %struct.extif_timings** %5, align 8
  %18 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %19 = call i32 @memset(%struct.extif_timings* %18, i32 0, i32 72)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %22 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %24 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %26 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2000
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @round_to_extif_ticks(i32 %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %33 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %35 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2000
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @round_to_extif_ticks(i32 %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %42 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %44 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = mul i64 4, %47
  %49 = add i64 %46, %48
  %50 = add i64 %49, 26000
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = call i8* @round_to_extif_ticks(i32 %51, i32 %52)
  %54 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %55 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %57 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1000
  %60 = load i32, i32* %4, align 4
  %61 = call i8* @round_to_extif_ticks(i32 %59, i32 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %64 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %66 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = mul i64 4, %69
  %71 = add i64 %68, %70
  %72 = add i64 %71, 26000
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %4, align 4
  %75 = call i8* @round_to_extif_ticks(i32 %73, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %78 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %80 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1000
  %83 = load i32, i32* %4, align 4
  %84 = call i8* @round_to_extif_ticks(i32 %82, i32 %83)
  %85 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %86 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %6, align 8
  %88 = mul i64 2, %87
  %89 = add i64 %88, 2000
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = call i8* @round_to_extif_ticks(i32 %90, i32 %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %95 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %94, i32 0, i32 6
  store i64 %93, i64* %95, align 8
  %96 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %97 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %100 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %2
  %104 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %105 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %108 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %107, i32 0, i32 6
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %2
  %110 = load i64, i64* %6, align 8
  %111 = mul i64 4, %110
  %112 = add i64 2000, %111
  %113 = add i64 %112, 26000
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %4, align 4
  %116 = call i8* @round_to_extif_ticks(i32 %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %119 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %121 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %124 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %109
  %128 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %129 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %132 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %109
  %134 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %135 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %134, i32 0, i32 8
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 1), align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %140 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %144 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %143, i32 0, i32 10
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %148 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %151 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %142, i64 %146, i32 %149, i32 %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 1), align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %158 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %162 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %165 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %168 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %160, i64 %163, i32 %166, i64 %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 1), align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %175 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %174, i32 0, i32 9
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %179 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %178, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %177, i64 %180)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hwa742, i32 0, i32 0), align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32 (%struct.extif_timings*)*, i32 (%struct.extif_timings*)** %183, align 8
  %185 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %186 = call i32 %184(%struct.extif_timings* %185)
  ret i32 %186
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @memset(%struct.extif_timings*, i32, i32) #1

declare dso_local i8* @round_to_extif_ticks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
