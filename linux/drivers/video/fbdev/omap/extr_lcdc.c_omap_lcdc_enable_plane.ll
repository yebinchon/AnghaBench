; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_enable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_enable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@lcdc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"plane %d enable %d update_mode %d ext_mode %d\0A\00", align 1
@OMAPFB_PLANE_GFX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @omap_lcdc_enable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_lcdc_enable_plane(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %13 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OMAPFB_PLANE_GFX, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
