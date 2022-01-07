; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_atyfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_atyfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.atyfb_par = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@FRGD_SRC_BLIT = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@SRC_HEIGHT1_WIDTH1 = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atyfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.atyfb_par*
  store %struct.atyfb_par* %16, %struct.atyfb_par** %5, align 8
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @DST_LAST_PEL, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %33 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %34 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %167

38:                                               ; preds = %2
  %39 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %40 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %38
  br label %167

49:                                               ; preds = %43
  %50 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %51 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %57 = call i32 @cfb_copyarea(%struct.fb_info* %55, %struct.fb_copyarea* %56)
  br label %167

58:                                               ; preds = %49
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 24
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %65, 3
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %67, 3
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, 3
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %73 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %76 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %81 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %87 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %96

92:                                               ; preds = %71
  %93 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %79
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %113

109:                                              ; preds = %96
  %110 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %100
  %114 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 24
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @rotation24bpp(i32 %120, i32 %121)
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %125 = call i32 @wait_for_fifo(i32 5, %struct.atyfb_par* %124)
  %126 = load i32, i32* @DP_PIX_WIDTH, align 4
  %127 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %128 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %132 = call i32 @aty_st_le32(i32 %126, i32 %130, %struct.atyfb_par* %131)
  %133 = load i32, i32* @DP_SRC, align 4
  %134 = load i32, i32* @FRGD_SRC_BLIT, align 4
  %135 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %136 = call i32 @aty_st_le32(i32 %133, i32 %134, %struct.atyfb_par* %135)
  %137 = load i32, i32* @SRC_Y_X, align 4
  %138 = load i32, i32* %9, align 4
  %139 = shl i32 %138, 16
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %143 = call i32 @aty_st_le32(i32 %137, i32 %141, %struct.atyfb_par* %142)
  %144 = load i32, i32* @SRC_HEIGHT1_WIDTH1, align 4
  %145 = load i32, i32* %11, align 4
  %146 = shl i32 %145, 16
  %147 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %148 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %146, %149
  %151 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %152 = call i32 @aty_st_le32(i32 %144, i32 %150, %struct.atyfb_par* %151)
  %153 = load i32, i32* @DST_CNTL, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %158 = call i32 @aty_st_le32(i32 %153, i32 %156, %struct.atyfb_par* %157)
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %163 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %166 = call i32 @draw_rect(i32 %159, i32 %160, i32 %161, i32 %164, %struct.atyfb_par* %165)
  br label %167

167:                                              ; preds = %123, %54, %48, %37
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @rotation24bpp(i32, i32) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @draw_rect(i32, i32, i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
