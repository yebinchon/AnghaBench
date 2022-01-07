; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_best_pll_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_best_pll_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.via_pll_config = type { i32 }

@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@cle266_pll_limits = common dso_local global i32 0, align 4
@k800_pll_limits = common dso_local global i32 0, align 4
@cx700_pll_limits = common dso_local global i32 0, align 4
@vx855_pll_limits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_best_pll_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_best_pll_config(i32 %0) #0 {
  %2 = alloca %struct.via_pll_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.via_pll_config, align 4
  %5 = alloca %struct.via_pll_config, align 4
  %6 = alloca %struct.via_pll_config, align 4
  %7 = alloca %struct.via_pll_config, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %49 [
    i32 140, label %13
    i32 136, label %13
    i32 135, label %22
    i32 131, label %22
    i32 139, label %22
    i32 137, label %31
    i32 138, label %31
    i32 134, label %31
    i32 133, label %31
    i32 132, label %31
    i32 130, label %31
    i32 129, label %40
    i32 128, label %40
  ]

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @cle266_pll_limits, align 4
  %15 = load i32, i32* @cle266_pll_limits, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_pll_config(i32 %14, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.via_pll_config* %2 to i8*
  %21 = bitcast %struct.via_pll_config* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %49

22:                                               ; preds = %1, %1, %1
  %23 = load i32, i32* @k800_pll_limits, align 4
  %24 = load i32, i32* @k800_pll_limits, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @get_pll_config(i32 %23, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.via_pll_config* %2 to i8*
  %30 = bitcast %struct.via_pll_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %49

31:                                               ; preds = %1, %1, %1, %1, %1, %1
  %32 = load i32, i32* @cx700_pll_limits, align 4
  %33 = load i32, i32* @cx700_pll_limits, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @get_pll_config(i32 %32, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.via_pll_config* %2 to i8*
  %39 = bitcast %struct.via_pll_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %49

40:                                               ; preds = %1, %1
  %41 = load i32, i32* @vx855_pll_limits, align 4
  %42 = load i32, i32* @vx855_pll_limits, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @get_pll_config(i32 %41, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.via_pll_config* %2 to i8*
  %48 = bitcast %struct.via_pll_config* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  br label %49

49:                                               ; preds = %1, %40, %31, %22, %13
  %50 = getelementptr inbounds %struct.via_pll_config, %struct.via_pll_config* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local i32 @get_pll_config(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
