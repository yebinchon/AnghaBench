; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_fifo_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_fifo_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@FEAT_REG_FIFOHIGHTHRESHOLD = common dso_local global i32 0, align 4
@FEAT_REG_FIFOLOWTHRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fifo(%d) threshold (bytes), old %u/%u, new %u/%u\0A\00", align 1
@FEAT_PRELOAD = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_DSS_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_ovl_set_fifo_threshold(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i32 (...) @dss_feat_get_buffer_size_unit()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %11, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %11, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @FEAT_REG_FIFOHIGHTHRESHOLD, align 4
  %32 = call i32 @dss_feat_get_reg_field(i32 %31, i32* %7, i32* %8)
  %33 = load i32, i32* @FEAT_REG_FIFOLOWTHRESHOLD, align 4
  %34 = call i32 @dss_feat_get_reg_field(i32 %33, i32* %9, i32* %10)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @REG_GET(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @REG_GET(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @DSSDBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %42, i32 %49, i32 %52, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @DISPC_OVL_FIFO_THRESHOLD(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @FLD_VAL(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @FLD_VAL(i32 %63, i32 %64, i32 %65)
  %67 = or i32 %62, %66
  %68 = call i32 @dispc_write_reg(i32 %58, i32 %67)
  %69 = load i32, i32* @FEAT_PRELOAD, align 4
  %70 = call i64 @dss_has_feature(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @OMAP_DSS_WB, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @DISPC_OVL_PRELOAD(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @min(i32 %84, i32 4095)
  %86 = call i32 @dispc_write_reg(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %81, %77, %72, %3
  ret void
}

declare dso_local i32 @dss_feat_get_buffer_size_unit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dss_feat_get_reg_field(i32, i32*, i32*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_FIFO_THRESHOLD(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @DISPC_OVL_PRELOAD(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
