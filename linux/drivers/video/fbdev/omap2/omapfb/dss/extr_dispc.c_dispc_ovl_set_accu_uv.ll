; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_accu_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_accu_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accu = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@dispc_ovl_set_accu_uv.accu_nv12 = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -1, i32 2, i32 0, i32 1 }, %struct.accu { i32 1, i32 2, i32 -3, i32 4, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 -1, i32 2, i32 0, i32 1 }, %struct.accu { i32 -1, i32 2, i32 -1, i32 2, i32 -1, i32 1, i32 0, i32 1 }], align 16
@dispc_ovl_set_accu_uv.accu_nv12_ilace = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -3, i32 4, i32 -1, i32 4 }, %struct.accu { i32 -1, i32 4, i32 -3, i32 4, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 -1, i32 4, i32 -3, i32 4 }, %struct.accu { i32 -3, i32 4, i32 -3, i32 4, i32 -1, i32 1, i32 0, i32 1 }], align 16
@dispc_ovl_set_accu_uv.accu_yuv = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -1, i32 1, i32 0, i32 1 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32)* @dispc_ovl_set_accu_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_accu_uv(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.accu*, align 8
  %25 = alloca %struct.accu*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  switch i32 %26, label %31 [
    i32 131, label %27
    i32 128, label %28
    i32 130, label %29
    i32 129, label %30
  ]

27:                                               ; preds = %8
  store i32 0, i32* %23, align 4
  br label %33

28:                                               ; preds = %8
  store i32 1, i32* %23, align 4
  br label %33

29:                                               ; preds = %8
  store i32 2, i32* %23, align 4
  br label %33

30:                                               ; preds = %8
  store i32 3, i32* %23, align 4
  br label %33

31:                                               ; preds = %8
  %32 = call i32 (...) @BUG()
  br label %105

33:                                               ; preds = %30, %29, %28, %27
  %34 = load i32, i32* %15, align 4
  switch i32 %34, label %42 [
    i32 134, label %35
    i32 132, label %41
    i32 133, label %41
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_nv12_ilace, i64 0, i64 0), %struct.accu** %24, align 8
  br label %40

39:                                               ; preds = %35
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_nv12, i64 0, i64 0), %struct.accu** %24, align 8
  br label %40

40:                                               ; preds = %39, %38
  br label %44

41:                                               ; preds = %33, %33
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_yuv, i64 0, i64 0), %struct.accu** %24, align 8
  br label %44

42:                                               ; preds = %33
  %43 = call i32 (...) @BUG()
  br label %105

44:                                               ; preds = %41, %40
  %45 = load %struct.accu*, %struct.accu** %24, align 8
  %46 = load i32, i32* %23, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.accu, %struct.accu* %45, i64 %47
  store %struct.accu* %48, %struct.accu** %25, align 8
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 1024, %49
  %51 = load i32, i32* %12, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 1024, %53
  %55 = load i32, i32* %13, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %22, align 4
  %57 = load %struct.accu*, %struct.accu** %25, align 8
  %58 = getelementptr inbounds %struct.accu, %struct.accu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %21, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load %struct.accu*, %struct.accu** %25, align 8
  %63 = getelementptr inbounds %struct.accu, %struct.accu* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  %66 = srem i32 %65, 1024
  store i32 %66, i32* %17, align 4
  %67 = load %struct.accu*, %struct.accu** %25, align 8
  %68 = getelementptr inbounds %struct.accu, %struct.accu* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load %struct.accu*, %struct.accu** %25, align 8
  %73 = getelementptr inbounds %struct.accu, %struct.accu* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %71, %74
  %76 = srem i32 %75, 1024
  store i32 %76, i32* %18, align 4
  %77 = load %struct.accu*, %struct.accu** %25, align 8
  %78 = getelementptr inbounds %struct.accu, %struct.accu* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %22, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.accu*, %struct.accu** %25, align 8
  %83 = getelementptr inbounds %struct.accu, %struct.accu* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %81, %84
  %86 = srem i32 %85, 1024
  store i32 %86, i32* %19, align 4
  %87 = load %struct.accu*, %struct.accu** %25, align 8
  %88 = getelementptr inbounds %struct.accu, %struct.accu* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %22, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load %struct.accu*, %struct.accu** %25, align 8
  %93 = getelementptr inbounds %struct.accu, %struct.accu* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  %96 = srem i32 %95, 1024
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @dispc_ovl_set_vid_accu2_0(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @dispc_ovl_set_vid_accu2_1(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %44, %42, %31
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_ovl_set_vid_accu2_0(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu2_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
