; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_init_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_init_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@FEAT_REG_FIFOSIZE = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DISPC_GLOBAL_BUFFER = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i64 0, align 8
@OMAP_DSS_GFX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_init_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_init_fifos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = call i32 (...) @dss_feat_get_buffer_size_unit()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @FEAT_REG_FIFOSIZE, align 4
  %18 = call i32 @dss_feat_get_reg_field(i32 %17, i32* %3, i32* %4)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %44, %0
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @DISPC_OVL_FIFO_SIZE_STATUS(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @REG_GET(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %1, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i32, i32* @DISPC_GLOBAL_BUFFER, align 4
  %54 = call i32 @dispc_read_reg(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @FLD_MOD(i32 %55, i32 4, i32 2, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @FLD_MOD(i32 %57, i32 4, i32 5, i32 3)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @FLD_MOD(i32 %59, i32 0, i32 26, i32 24)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @FLD_MOD(i32 %61, i32 0, i32 29, i32 27)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @DISPC_GLOBAL_BUFFER, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dispc_write_reg(i32 %63, i32 %64)
  %66 = load i64, i64* @OMAP_DSS_WB, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %69 = load i64, i64* @OMAP_DSS_GFX, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i64, i64* @OMAP_DSS_GFX, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %74 = load i64, i64* @OMAP_DSS_WB, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %52, %47
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (...) @dss_feat_get_num_ovls()
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @dispc_ovl_compute_fifo_thresholds(i64 %83, i32* %8, i32* %9, i32 0, i32 0)
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dispc_ovl_set_fifo_threshold(i64 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %77

93:                                               ; preds = %77
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %99 = load i64, i64* @OMAP_DSS_WB, align 8
  %100 = call i32 @dispc_ovl_compute_fifo_thresholds(i64 %99, i32* %12, i32* %13, i32 0, i32 0)
  %101 = load i64, i64* @OMAP_DSS_WB, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @dispc_ovl_set_fifo_threshold(i64 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %93
  ret void
}

declare dso_local i32 @dss_feat_get_buffer_size_unit(...) #1

declare dso_local i32 @dss_feat_get_reg_field(i32, i32*, i32*) #1

declare dso_local i32 @REG_GET(i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_FIFO_SIZE_STATUS(i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i32 @dispc_ovl_compute_fifo_thresholds(i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_fifo_threshold(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
