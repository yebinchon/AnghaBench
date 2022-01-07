; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.c_wmt_ge_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.c_wmt_ge_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i64, i32, i32, i32, i32, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@regbase = common dso_local global i64 0, align 8
@GE_DEPTH_OFF = common dso_local global i64 0, align 8
@GE_HIGHCOLOR_OFF = common dso_local global i64 0, align 8
@GE_DESTBASE_OFF = common dso_local global i64 0, align 8
@GE_DESTDISPW_OFF = common dso_local global i64 0, align 8
@GE_DESTDISPH_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAX_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAY_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAW_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAH_OFF = common dso_local global i64 0, align 8
@GE_PAT0C_OFF = common dso_local global i64 0, align 8
@GE_COMMAND_OFF = common dso_local global i64 0, align 8
@ROP_XOR = common dso_local global i64 0, align 8
@GE_ROPCODE_OFF = common dso_local global i64 0, align 8
@GE_FIRE_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wmt_ge_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %175

13:                                               ; preds = %2
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20, %13
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  br label %41

37:                                               ; preds = %20
  %38 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %39 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @pixel_to_pat(i32 %45, i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %51, align 8
  %53 = icmp ne i32 (%struct.fb_info*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %58, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = call i32 %59(%struct.fb_info* %60)
  br label %62

62:                                               ; preds = %54, %41
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %77

69:                                               ; preds = %62
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 8
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  br label %77

77:                                               ; preds = %69, %68
  %78 = phi i32 [ 3, %68 ], [ %76, %69 ]
  %79 = load i64, i64* @regbase, align 8
  %80 = load i64, i64* @GE_DEPTH_OFF, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %78, i64 %81)
  %83 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 15
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load i64, i64* @regbase, align 8
  %91 = load i64, i64* @GE_HIGHCOLOR_OFF, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %89, i64 %92)
  %94 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* @regbase, align 8
  %99 = load i64, i64* @GE_DESTBASE_OFF, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %97, i64 %100)
  %102 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i64, i64* @regbase, align 8
  %108 = load i64, i64* @GE_DESTDISPW_OFF, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %106, i64 %109)
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = load i64, i64* @regbase, align 8
  %117 = load i64, i64* @GE_DESTDISPH_OFF, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %115, i64 %118)
  %120 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %121 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @regbase, align 8
  %124 = load i64, i64* @GE_DESTAREAX_OFF, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %122, i64 %125)
  %127 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %128 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @regbase, align 8
  %131 = load i64, i64* @GE_DESTAREAY_OFF, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %129, i64 %132)
  %134 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %135 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = load i64, i64* @regbase, align 8
  %139 = load i64, i64* @GE_DESTAREAW_OFF, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %137, i64 %140)
  %142 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %143 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load i64, i64* @regbase, align 8
  %147 = load i64, i64* @GE_DESTAREAH_OFF, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %145, i64 %148)
  %150 = load i64, i64* %6, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i64, i64* @regbase, align 8
  %153 = load i64, i64* @GE_PAT0C_OFF, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %151, i64 %154)
  %156 = load i64, i64* @regbase, align 8
  %157 = load i64, i64* @GE_COMMAND_OFF, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 1, i64 %158)
  %160 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %161 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ROP_XOR, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 90, i32 240
  %167 = load i64, i64* @regbase, align 8
  %168 = load i64, i64* @GE_ROPCODE_OFF, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %166, i64 %169)
  %171 = load i64, i64* @regbase, align 8
  %172 = load i64, i64* @GE_FIRE_OFF, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writel(i32 1, i64 %173)
  br label %175

175:                                              ; preds = %77, %12
  ret void
}

declare dso_local i64 @pixel_to_pat(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
