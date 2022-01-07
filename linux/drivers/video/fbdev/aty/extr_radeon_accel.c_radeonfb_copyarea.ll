; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_2__, %struct.radeonfb_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.radeonfb_info = type { i32 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.radeonfb_info*, align 8
  %6 = alloca %struct.fb_copyarea, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = load %struct.radeonfb_info*, %struct.radeonfb_info** %10, align 8
  store %struct.radeonfb_info* %11, %struct.radeonfb_info** %5, align 8
  %12 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %13 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %17 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  store i64 %26, i64* %27, align 8
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  store i64 %30, i64* %31, align 8
  %32 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %33 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  store i64 %34, i64* %35, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %151

42:                                               ; preds = %2
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %52 = call i32 @cfb_copyarea(%struct.fb_info* %50, %struct.fb_copyarea* %51)
  br label %151

53:                                               ; preds = %42
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %55 = call i32 @radeon_fixup_offset(%struct.radeonfb_info* %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %8, align 8
  %64 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %81, %76, %71, %67, %53
  br label %151

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %94, %96
  %98 = load i64, i64* %7, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %101, %103
  %105 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %100, %92
  %107 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %108, %110
  %112 = load i64, i64* %7, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %115, %117
  %119 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %114, %106
  %121 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %122, %124
  %126 = load i64, i64* %8, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %129, %131
  %133 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %120
  %135 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %136, %138
  %140 = load i64, i64* %8, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %143, %145
  %147 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %150 = call i32 @radeonfb_prim_copyarea(%struct.radeonfb_info* %149, %struct.fb_copyarea* %6)
  br label %151

151:                                              ; preds = %148, %91, %49, %41
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @radeon_fixup_offset(%struct.radeonfb_info*) #1

declare dso_local i32 @radeonfb_prim_copyarea(%struct.radeonfb_info*, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
