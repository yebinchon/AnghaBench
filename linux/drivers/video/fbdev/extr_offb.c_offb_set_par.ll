; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_offb.c_offb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_offb.c_offb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.offb_par = type { i64, i64 }

@cmap_avivo = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_CONTROL = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTB_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_SELECT = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_MODE = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @offb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.offb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.offb_par*
  store %struct.offb_par* %7, %struct.offb_par** %3, align 8
  %8 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %9 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @cmap_avivo, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %134

13:                                               ; preds = %1
  %14 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %15 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AVIVO_DC_LUTA_CONTROL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %21 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_BLUE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %27 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_GREEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %33 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_RED, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %39 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_BLUE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 65535, i64 %42)
  %44 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %45 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_GREEN, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 65535, i64 %48)
  %50 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %51 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_RED, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 65535, i64 %54)
  %56 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %57 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AVIVO_DC_LUTB_CONTROL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 0, i64 %60)
  %62 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %63 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AVIVO_DC_LUTB_BLACK_OFFSET_BLUE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  %68 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %69 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AVIVO_DC_LUTB_BLACK_OFFSET_GREEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  %74 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %75 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AVIVO_DC_LUTB_BLACK_OFFSET_RED, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 0, i64 %78)
  %80 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %81 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AVIVO_DC_LUTB_WHITE_OFFSET_BLUE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 65535, i64 %84)
  %86 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %87 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVIVO_DC_LUTB_WHITE_OFFSET_GREEN, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 65535, i64 %90)
  %92 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %93 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AVIVO_DC_LUTB_WHITE_OFFSET_RED, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 65535, i64 %96)
  %98 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %99 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AVIVO_DC_LUT_RW_SELECT, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 1, i64 %102)
  %104 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %105 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AVIVO_DC_LUT_RW_MODE, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 0, i64 %108)
  %110 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %111 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AVIVO_DC_LUT_WRITE_EN_MASK, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 63, i64 %114)
  %116 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %117 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AVIVO_DC_LUT_RW_SELECT, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 0, i64 %120)
  %122 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %123 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AVIVO_DC_LUT_RW_MODE, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 0, i64 %126)
  %128 = load %struct.offb_par*, %struct.offb_par** %3, align 8
  %129 = getelementptr inbounds %struct.offb_par, %struct.offb_par* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AVIVO_DC_LUT_WRITE_EN_MASK, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 63, i64 %132)
  br label %134

134:                                              ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
