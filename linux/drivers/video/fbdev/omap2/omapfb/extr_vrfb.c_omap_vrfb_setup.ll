; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.vrfb = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"omapfb_set_vrfb(%d, %lx, %dx%d, %d, %d)\0A\00", align 1
@VRFB_PAGE_WIDTH = common dso_local global i32 0, align 4
@VRFB_PAGE_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"vrfb w %u, h %u bytespp %d\0A\00", align 1
@SMS_IMAGEWIDTH_OFFSET = common dso_local global i32 0, align 4
@SMS_IMAGEHEIGHT_OFFSET = common dso_local global i32 0, align 4
@SMS_PS_OFFSET = common dso_local global i32 0, align 4
@VRFB_PAGE_WIDTH_EXP = common dso_local global i32 0, align 4
@SMS_PW_OFFSET = common dso_local global i32 0, align 4
@VRFB_PAGE_HEIGHT_EXP = common dso_local global i32 0, align 4
@SMS_PH_OFFSET = common dso_local global i32 0, align 4
@ctxs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"vrfb offset pixels %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vrfb_setup(%struct.vrfb* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vrfb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vrfb* %0, %struct.vrfb** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %20 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %34, 2
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 2, i32* %13, align 4
  br label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %13, align 4
  br label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @BUG()
  br label %138

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul i32 %50, %51
  %53 = load i32, i32* @VRFB_PAGE_WIDTH, align 4
  %54 = call i32 @ALIGN(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = udiv i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @VRFB_PAGE_HEIGHT, align 4
  %59 = call i32 @ALIGN(i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @SMS_IMAGEWIDTH_OFFSET, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SMS_IMAGEHEIGHT_OFFSET, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %17, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SMS_PS_OFFSET, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* @VRFB_PAGE_WIDTH_EXP, align 4
  %76 = load i32, i32* @SMS_PW_OFFSET, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %18, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* @VRFB_PAGE_HEIGHT_EXP, align 4
  %81 = load i32, i32* @SMS_PH_OFFSET, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %18, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %18, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctxs, align 8
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctxs, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctxs, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @omap2_sms_write_rot_physical_ba(i64 %100, i64 %101)
  %103 = load i32, i32* %17, align 4
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @omap2_sms_write_rot_size(i32 %103, i64 %104)
  %106 = load i32, i32* %18, align 4
  %107 = load i64, i64* %16, align 8
  %108 = call i32 @omap2_sms_write_rot_control(i32 %106, i64 %107)
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %118 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %121 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %126 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %131 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %134 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.vrfb*, %struct.vrfb** %7, align 8
  %137 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %49, %46
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @omap2_sms_write_rot_physical_ba(i64, i64) #1

declare dso_local i32 @omap2_sms_write_rot_size(i32, i64) #1

declare dso_local i32 @omap2_sms_write_rot_control(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
