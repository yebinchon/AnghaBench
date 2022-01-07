; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_rotation_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_rotation_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_COLOR_YUV2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_UYVY = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_NV12 = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@FEAT_ROWREPEATENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @dispc_ovl_set_rotation_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_rotation_attrs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %30 [
    i32 131, label %26
    i32 128, label %27
    i32 130, label %28
    i32 129, label %29
  ]

26:                                               ; preds = %24
  store i32 2, i32* %12, align 4
  br label %30

27:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %30

28:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %30

29:                                               ; preds = %24
  store i32 3, i32* %12, align 4
  br label %30

30:                                               ; preds = %24, %29, %28, %27, %26
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %37 [
    i32 131, label %33
    i32 128, label %34
    i32 130, label %35
    i32 129, label %36
  ]

33:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %37

34:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %37

35:                                               ; preds = %31
  store i32 2, i32* %12, align 4
  br label %37

36:                                               ; preds = %31
  store i32 3, i32* %12, align 4
  br label %37

37:                                               ; preds = %31, %36, %35, %34, %33
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 129
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 1, i32* %11, align 4
  br label %46

45:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @OMAP_DSS_COLOR_NV12, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @REG_FLD_MOD(i32 %58, i32 %59, i32 13, i32 12)
  %61 = load i32, i32* @FEAT_ROWREPEATENABLE, align 4
  %62 = call i64 @dss_has_feature(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32 @REG_FLD_MOD(i32 %66, i32 %70, i32 18, i32 18)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @OMAP_DSS_COLOR_NV12, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 131
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 130
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ true, %80 ], [ %85, %83 ]
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi i1 [ false, %76 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @REG_FLD_MOD(i32 %92, i32 %93, i32 22, i32 22)
  br label %95

95:                                               ; preds = %88, %72
  ret void
}

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
