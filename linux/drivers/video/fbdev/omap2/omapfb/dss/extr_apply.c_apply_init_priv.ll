; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_apply_init_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_apply_init_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mgr_priv_data*, %struct.ovl_priv_data* }
%struct.mgr_priv_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ovl_priv_data = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@data_lock = common dso_local global i32 0, align 4
@dss_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@OMAP_DSS_COLOR_RGB16 = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_DMA = common dso_local global i32 0, align 4
@FEAT_ALPHA_FREE_ZORDER = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apply_init_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_init_priv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mgr_priv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_priv_data*, align 8
  %5 = call i32 (...) @dss_feat_get_num_ovls()
  store i32 %5, i32* %1, align 4
  %6 = call i32 @spin_lock_init(i32* @data_lock)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %66, %0
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %7
  %12 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dss_data, i32 0, i32 1), align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %12, i64 %14
  store %struct.ovl_priv_data* %15, %struct.ovl_priv_data** %4, align 8
  %16 = load i32, i32* @OMAP_DSS_COLOR_RGB16, align 4
  %17 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %18 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @OMAP_DSS_ROT_DMA, align 4
  %21 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %22 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %25 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 255, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %59 [
    i32 0, label %28
    i32 1, label %32
    i32 2, label %41
    i32 3, label %50
  ]

28:                                               ; preds = %11
  %29 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %30 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %59

32:                                               ; preds = %11
  %33 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %34 = call i32 @dss_has_feature(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 3, i32 0
  %38 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %39 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  br label %59

41:                                               ; preds = %11
  %42 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %43 = call i32 @dss_has_feature(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 0
  %47 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %48 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  br label %59

50:                                               ; preds = %11
  %51 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %52 = call i32 @dss_has_feature(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %57 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %11, %50, %41, %32, %28
  %60 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %61 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %60, i32 0, i32 1
  %62 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %63 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %62, i32 0, i32 0
  %64 = bitcast %struct.TYPE_5__* %61 to i8*
  %65 = bitcast %struct.TYPE_5__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 16, i1 false)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %7

69:                                               ; preds = %7
  %70 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dss_data, i32 0, i32 0), align 8
  %71 = load i64, i64* @OMAP_DSS_CHANNEL_DIGIT, align 8
  %72 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %70, i64 %71
  store %struct.mgr_priv_data* %72, %struct.mgr_priv_data** %2, align 8
  %73 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %2, align 8
  %74 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 24, i32* %75, align 4
  %76 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %2, align 8
  %77 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %2, align 8
  %81 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  ret void
}

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dss_has_feature(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
