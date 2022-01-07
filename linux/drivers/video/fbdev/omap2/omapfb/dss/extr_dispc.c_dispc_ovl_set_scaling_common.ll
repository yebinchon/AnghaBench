; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scaling_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scaling_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_COLOR_COMPONENT_RGB_Y = common dso_local global i32 0, align 4
@FEAT_RESIZECONF = common dso_local global i32 0, align 4
@FEAT_LINEBUFFERSPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i32, i32, i32, i32, i32)* @dispc_ovl_set_scaling_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_scaling_common(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %15, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* @DISPC_COLOR_COMPONENT_RGB_Y, align 4
  %32 = call i32 @dispc_ovl_set_scale_param(i32 %24, i64 %25, i64 %26, i64 %27, i64 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %33)
  %35 = call i32 @dispc_read_reg(i32 %34)
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %23, align 4
  %37 = and i32 %36, -2097249
  store i32 %37, i32* %23, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 32, i32 0
  %43 = load i32, i32* %23, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %23, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 64, i32 0
  %50 = load i32, i32* %23, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2097152, i32 0
  %56 = load i32, i32* %23, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* @FEAT_RESIZECONF, align 4
  %59 = call i64 @dss_has_feature(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %10
  %62 = load i32, i32* %23, align 4
  %63 = and i32 %62, -385
  store i32 %63, i32* %23, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp sle i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 128
  %69 = load i32, i32* %23, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %23, align 4
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp sle i64 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 256
  %76 = load i32, i32* %23, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %23, align 4
  br label %78

78:                                               ; preds = %61, %10
  %79 = load i32, i32* @FEAT_LINEBUFFERSPLIT, align 4
  %80 = call i64 @dss_has_feature(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %23, align 4
  %84 = and i32 %83, -4194305
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 4194304, i32 0
  %89 = load i32, i32* %23, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %82, %78
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %92)
  %94 = load i32, i32* %23, align 4
  %95 = call i32 @dispc_write_reg(i32 %93, i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %91
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  store i32 0, i32* %22, align 4
  %102 = load i64, i64* %13, align 8
  %103 = mul nsw i64 1024, %102
  %104 = load i64, i64* %15, align 8
  %105 = sdiv i64 %103, %104
  %106 = sdiv i64 %105, 2
  %107 = and i64 %106, 1023
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp sge i32 %109, 512
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  store i32 512, i32* %22, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %21, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %21, align 4
  br label %115

115:                                              ; preds = %111, %101
  br label %116

116:                                              ; preds = %115, %98, %91
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @dispc_ovl_set_vid_accu0(i32 %117, i32 0, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @dispc_ovl_set_vid_accu1(i32 %120, i32 0, i32 %121)
  ret void
}

declare dso_local i32 @dispc_ovl_set_scale_param(i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu0(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
