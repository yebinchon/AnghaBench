; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fb_info = type { %struct.w100fb_par* }
%struct.w100fb_par = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_PIXEL = common dso_local global i32 0, align 4
@MEM_INT_SIZE = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @w100fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.w100fb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.w100fb_par*, %struct.w100fb_par** %8, align 8
  store %struct.w100fb_par* %9, %struct.w100fb_par** %6, align 8
  %10 = load %struct.w100fb_par*, %struct.w100fb_par** %6, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = call i32 @w100fb_get_mode(%struct.w100fb_par* %10, i32* %12, i32* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %143

20:                                               ; preds = %2
  %21 = load %struct.w100fb_par*, %struct.w100fb_par** %6, align 8
  %22 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = load i32, i32* @BITS_PER_PIXEL, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 8
  %38 = load %struct.w100fb_par*, %struct.w100fb_par** %6, align 8
  %39 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp sgt i32 %37, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %143

50:                                               ; preds = %27, %20
  %51 = load %struct.w100fb_par*, %struct.w100fb_par** %6, align 8
  %52 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %50
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* @BITS_PER_PIXEL, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 8
  %68 = load i32, i32* @MEM_INT_SIZE, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %143

74:                                               ; preds = %57, %50
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 14
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @max(i8* %77, i32 %80)
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 14
  store i8* %81, i8** %83, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 13
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @max(i8* %86, i32 %89)
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BITS_PER_PIXEL, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %74
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %143

101:                                              ; preds = %74
  %102 = load i32, i32* @BITS_PER_PIXEL, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 12
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32 11, i32* %108, align 8
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i32 5, i32* %111, align 4
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 11
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i32 5, i32* %114, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 11
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 6, i32* %117, align 4
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 5, i32* %123, align 8
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 8
  store i64 0, i64* %131, align 8
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 3
  store i32 -1, i32* %133, align 4
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 4
  store i32 -1, i32* %135, align 8
  %136 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 6
  store i64 0, i64* %140, align 8
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 5
  store i32 4, i32* %142, align 4
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %105, %98, %71, %47, %17
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @w100fb_get_mode(%struct.w100fb_par*, i32*, i32*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
