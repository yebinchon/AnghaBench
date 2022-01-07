; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_get_initial_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_get_initial_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intelfb_info = type { i32, i32, i32, i32, %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"get_initial_mode\0A\00", align 1
@screen_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Initial info: FB is 0x%x/0x%x (%d kByte)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Initial info: mode is %dx%d-%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intelfb_info*)* @get_initial_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_initial_mode(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %6 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 13), align 4
  %10 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 0), align 4
  %13 = call i32 @KB(i32 64)
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 12), align 4
  %18 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %19 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %21 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %20, i32 0, i32 4
  store %struct.fb_var_screeninfo* %21, %struct.fb_var_screeninfo** %3, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = call i32 @memset(%struct.fb_var_screeninfo* %22, i32 0, i32 80)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 1), align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 2), align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 3), align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 3), align 4
  switch i32 %33, label %40 [
    i32 15, label %34
    i32 24, label %37
  ]

34:                                               ; preds = %1
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 2
  store i32 16, i32* %36, align 4
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 2
  store i32 32, i32* %39, align 4
  br label %40

40:                                               ; preds = %1, %37, %34
  %41 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %42 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %45 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %48 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BtoKB(i32 %49)
  %51 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %50)
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %62 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 8
  %69 = and i32 %68, 248
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 4
  store i32 32, i32* %73, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 5
  store i32 16, i32* %75, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 6
  store i32 4, i32* %77, align 4
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 8
  %82 = and i32 %81, 248
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 8
  store i32 4, i32* %86, align 4
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %4, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sdiv i32 10000000, %117
  %119 = mul nsw i32 %118, 1000
  %120 = load i32, i32* %5, align 4
  %121 = sdiv i32 %119, %120
  %122 = mul nsw i32 %121, 100
  %123 = sdiv i32 %122, 60
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 10
  store i32 -1, i32* %127, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 11
  store i32 -1, i32* %129, align 4
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 8
  br i1 %133, label %134, label %167

134:                                              ; preds = %40
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 11), align 4
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 14
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 4), align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 14
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 10), align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 13
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 5), align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 13
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 9), align 4
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 12
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 6), align 4
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 12
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 8), align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @screen_info, i32 0, i32 7), align 4
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 15
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  br label %177

167:                                              ; preds = %40
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 14
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32 8, i32* %170, align 4
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 13
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 8, i32* %173, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 8, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %134
  ret void
}

declare dso_local i32 @DBG_MSG(i8*, ...) #1

declare dso_local i32 @KB(i32) #1

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

declare dso_local i32 @BtoKB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
