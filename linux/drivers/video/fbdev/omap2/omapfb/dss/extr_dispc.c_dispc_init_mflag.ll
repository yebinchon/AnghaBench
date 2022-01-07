; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_init_mflag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_init_mflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DISPC_GLOBAL_MFLAG_ATTRIBUTE = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_init_mflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_init_mflag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @DISPC_GLOBAL_MFLAG_ATTRIBUTE, align 4
  %11 = call i32 @dispc_write_reg(i32 %10, i32 1)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %36, %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (...) @dss_feat_get_num_ovls()
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @dispc_ovl_get_fifo_size(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = call i32 (...) @dss_feat_get_buffer_size_unit()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @dispc_ovl_set_mflag(i32 %20, i32 1)
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sdiv i32 %23, 8
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = mul nsw i32 %27, 5
  %29 = sdiv i32 %28, 8
  %30 = load i32, i32* %3, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dispc_ovl_set_mflag_threshold(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i32, i32* @OMAP_DSS_WB, align 4
  %46 = call i32 @dispc_ovl_get_fifo_size(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = call i32 (...) @dss_feat_get_buffer_size_unit()
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @OMAP_DSS_WB, align 4
  %49 = call i32 @dispc_ovl_set_mflag(i32 %48, i32 1)
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sdiv i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 5
  %57 = sdiv i32 %56, 8
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @OMAP_DSS_WB, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @dispc_ovl_set_mflag_threshold(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i32 @dispc_ovl_get_fifo_size(i32) #1

declare dso_local i32 @dss_feat_get_buffer_size_unit(...) #1

declare dso_local i32 @dispc_ovl_set_mflag(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_mflag_threshold(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
