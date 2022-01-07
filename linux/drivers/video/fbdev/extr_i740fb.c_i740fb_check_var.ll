; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @i740fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %114 [
    i32 8, label %9
    i32 16, label %28
    i32 24, label %70
    i32 32, label %89
  ]

9:                                                ; preds = %2
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 8, i32* %21, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 8, i32* %24, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  br label %117

28:                                               ; preds = %2
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %33 [
    i32 5, label %34
    i32 6, label %53
  ]

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %28, %33
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 10, i32* %37, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 5, i32* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 5, i32* %46, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 5, i32* %49, align 4
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 5, i32* %52, align 4
  br label %69

53:                                               ; preds = %28
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 11, i32* %56, align 8
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 5, i32* %59, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 5, i32* %65, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 5, i32* %68, align 4
  br label %69

69:                                               ; preds = %53, %34
  br label %117

70:                                               ; preds = %2
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 16, i32* %73, align 8
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 8, i32* %76, align 8
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 8, i32* %82, align 4
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 8, i32* %85, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 8, i32* %88, align 4
  br label %117

89:                                               ; preds = %2
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 24, i32* %92, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 16, i32* %95, align 8
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 8, i32* %98, align 8
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 8, i32* %104, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32 8, i32* %107, align 4
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 8, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 8, i32* %113, align 4
  br label %117

114:                                              ; preds = %2
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %172

117:                                              ; preds = %89, %70, %69, %9
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %117
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %131
  %146 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %145
  %152 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %166 = call i64 @fb_validate_mode(%struct.fb_var_screeninfo* %164, %struct.fb_info* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %172

171:                                              ; preds = %163, %157, %151, %145
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %168, %114
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @fb_validate_mode(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
