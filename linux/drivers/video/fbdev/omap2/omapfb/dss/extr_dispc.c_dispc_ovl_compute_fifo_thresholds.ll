; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_compute_fifo_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_compute_fifo_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FEAT_OMAP3_DSI_FIFO_BUG = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_ovl_compute_fifo_thresholds(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = call i32 (...) @dss_feat_get_buffer_size_unit()
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dispc_ovl_get_burst_size(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dispc_ovl_get_fifo_size(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %15, align 4
  %26 = call i32 (...) @dss_feat_get_num_ovls()
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @dispc_ovl_get_fifo_size(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %24

36:                                               ; preds = %24
  br label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* @FEAT_OMAP3_DSI_FIFO_BUG, align 4
  %44 = call i64 @dss_has_feature(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = mul i32 %48, 2
  %50 = sub i32 %47, %49
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub i32 %52, %53
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %74

56:                                               ; preds = %42, %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @OMAP_DSS_WB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub i32 %65, %66
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub i32 %69, %70
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %60
  br label %74

74:                                               ; preds = %73, %46
  ret void
}

declare dso_local i32 @dss_feat_get_buffer_size_unit(...) #1

declare dso_local i32 @dispc_ovl_get_burst_size(i32) #1

declare dso_local i32 @dispc_ovl_get_fifo_size(i32) #1

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i64 @dss_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
