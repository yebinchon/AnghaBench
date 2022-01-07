; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i64, %struct.TYPE_5__, %struct.riva_par* }
%struct.TYPE_5__ = type { i32 }
%struct.riva_par = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@NV_ARCH_03 = common dso_local global i64 0, align 8
@Bitmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @rivafb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rivafb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.riva_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 3
  %10 = load %struct.riva_par*, %struct.riva_par** %9, align 8
  store %struct.riva_par* %10, %struct.riva_par** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %20 = call i32 @cfb_fillrect(%struct.fb_info* %18, %struct.fb_fillrect* %19)
  br label %134

21:                                               ; preds = %2
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %29 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %33 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NV_ARCH_03, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %59

49:                                               ; preds = %31
  %50 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %51 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %54 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %49, %38
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %62 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %66 [
    i32 128, label %64
    i32 129, label %65
  ]

64:                                               ; preds = %60
  store i32 102, i32* %7, align 4
  br label %67

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %60, %65
  store i32 204, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @riva_set_rop_solid(%struct.riva_par* %68, i32 %69)
  %71 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %72 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %71, i32 0, i32 1
  %73 = load i32, i32* @Bitmap, align 4
  %74 = bitcast %struct.TYPE_8__* %72 to { i64, %struct.TYPE_7__* }*
  %75 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %74, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @RIVA_FIFO_FREE(i64 %76, %struct.TYPE_7__* %78, i32 %73, i32 1)
  %80 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %81 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @NV_WR32(i32* %84, i32 0, i32 %85)
  %87 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %88 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %87, i32 0, i32 1
  %89 = load i32, i32* @Bitmap, align 4
  %90 = bitcast %struct.TYPE_8__* %88 to { i64, %struct.TYPE_7__* }*
  %91 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %90, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = call i32 @RIVA_FIFO_FREE(i64 %92, %struct.TYPE_7__* %94, i32 %89, i32 2)
  %96 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %97 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %105 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 16
  %108 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %109 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  %112 = call i32 @NV_WR32(i32* %103, i32 0, i32 %111)
  %113 = call i32 (...) @mb()
  %114 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %115 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %123 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 16
  %126 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %127 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  %130 = call i32 @NV_WR32(i32* %121, i32 0, i32 %129)
  %131 = call i32 (...) @mb()
  %132 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %133 = call i32 @riva_set_rop_solid(%struct.riva_par* %132, i32 204)
  br label %134

134:                                              ; preds = %67, %17
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @riva_set_rop_solid(%struct.riva_par*, i32) #1

declare dso_local i32 @RIVA_FIFO_FREE(i64, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @NV_WR32(i32*, i32, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
