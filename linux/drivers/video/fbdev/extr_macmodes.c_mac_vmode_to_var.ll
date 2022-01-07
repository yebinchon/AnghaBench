; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_vmode_to_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_vmode_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_map = type { i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@mac_modes = common dso_local global %struct.mode_map* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vmode_to_var(i32 %0, i32 %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_videomode*, align 8
  %9 = alloca %struct.mode_map*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %7, align 8
  store %struct.fb_videomode* null, %struct.fb_videomode** %8, align 8
  %10 = load %struct.mode_map*, %struct.mode_map** @mac_modes, align 8
  store %struct.mode_map* %10, %struct.mode_map** %9, align 8
  br label %11

11:                                               ; preds = %27, %3
  %12 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %13 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %18 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %24 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %23, i32 0, i32 1
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %24, align 8
  store %struct.fb_videomode* %25, %struct.fb_videomode** %8, align 8
  br label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.mode_map*, %struct.mode_map** %9, align 8
  %29 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %28, i32 1
  store %struct.mode_map* %29, %struct.mode_map** %9, align 8
  br label %11

30:                                               ; preds = %22, %11
  %31 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %32 = icmp ne %struct.fb_videomode* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %182

36:                                               ; preds = %30
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %38 = call i32 @memset(%struct.fb_var_screeninfo* %37, i32 0, i32 96)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %109 [
    i32 128, label %40
    i32 130, label %61
    i32 129, label %82
  ]

40:                                               ; preds = %36
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  store i32 8, i32* %42, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 19
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 19
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 18
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 8, i32* %54, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 17
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 8, i32* %60, align 4
  br label %112

61:                                               ; preds = %36
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 0
  store i32 16, i32* %63, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 19
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 10, i32* %66, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 19
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 5, i32* %69, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 18
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 5, i32* %72, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 18
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 5, i32* %75, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 17
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 17
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 5, i32* %81, align 4
  br label %112

82:                                               ; preds = %36
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 0
  store i32 32, i32* %84, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 19
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 16, i32* %87, align 4
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 19
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 8, i32* %90, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 18
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 8, i32* %93, align 4
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 18
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 8, i32* %96, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 17
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 17
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 8, i32* %102, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 16
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 24, i32* %105, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 16
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 8, i32* %108, align 4
  br label %112

109:                                              ; preds = %36
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %182

112:                                              ; preds = %82, %61, %40
  %113 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %114 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 15
  store i32 %115, i32* %117, align 4
  %118 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %119 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 14
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %124 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 4
  %128 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %129 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 12
  store i32 %130, i32* %132, align 4
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 2
  store i32 -1, i32* %136, align 4
  %137 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %138 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 4
  %142 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %143 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 10
  store i32 %144, i32* %146, align 4
  %147 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %148 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %153 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 4
  %157 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %158 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %163 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 4
  %167 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %168 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  %172 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %173 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %178 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %112, %109, %33
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
