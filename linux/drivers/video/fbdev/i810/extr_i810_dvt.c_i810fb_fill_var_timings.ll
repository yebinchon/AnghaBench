; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_fill_var_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_fill_var_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i64, i64, i32, i64, i32, i64, i64, i32, i64, i32 }

@std_modes = common dso_local global %struct.TYPE_2__* null, align 8
@FB_SYNC_ON_GREEN = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810fb_fill_var_timings(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 1000000000, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @i810fb_find_best_mode(i64 %19, i64 %20, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = shl i32 %33, 8
  %35 = or i32 %27, %34
  %36 = add nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = shl i64 %38, 3
  store i64 %39, i64* %3, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 1000000000, %44
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 31
  %71 = sub nsw i32 %64, %70
  %72 = shl i32 %71, 3
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = sub i64 %75, %85
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @FB_SYNC_ON_GREEN, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 64
  %98 = xor i32 %97, -1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %1
  %101 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 128
  %113 = xor i32 %112, -1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %106
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = shl i32 %132, 8
  %134 = or i32 %126, %133
  %135 = add nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %3, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 15
  %148 = shl i32 %147, 8
  %149 = or i32 %141, %148
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %5, align 8
  %152 = sub i64 %150, %151
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 6
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = sext i32 %160 to i64
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, 15
  %166 = sub i64 %161, %165
  %167 = trunc i64 %166 to i32
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* %5, align 8
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %171, %174
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = add i64 %175, %179
  %181 = sub i64 %170, %180
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 8
  store i64 %181, i64* %183, align 8
  ret void
}

declare dso_local i64 @i810fb_find_best_mode(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
