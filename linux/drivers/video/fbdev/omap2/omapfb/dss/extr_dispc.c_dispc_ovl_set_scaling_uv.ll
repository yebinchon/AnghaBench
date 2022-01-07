; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scaling_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scaling_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@FEAT_HANDLE_UV_SEPARATE = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_0 = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_180 = common dso_local global i32 0, align 4
@DISPC_COLOR_COMPONENT_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i32, i32, i32, i32, i32)* @dispc_ovl_set_scaling_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_scaling_uv(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %21, align 4
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @OMAP_DSS_WB, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %38 = call i32 @dss_has_feature(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %10
  br label %161

41:                                               ; preds = %10
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 128
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 129
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 130
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @OMAP_DSS_WB, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %55)
  %57 = call i32 @REG_FLD_MOD(i32 %56, i32 0, i32 8, i32 8)
  br label %58

58:                                               ; preds = %54, %50
  br label %161

59:                                               ; preds = %47, %44, %41
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @dispc_ovl_set_accu_uv(i32 %60, i64 %61, i64 %62, i64 %63, i64 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %19, align 4
  switch i32 %69, label %108 [
    i32 130, label %70
    i32 128, label %84
    i32 129, label %84
  ]

70:                                               ; preds = %59
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* %13, align 8
  %75 = ashr i64 %74, 1
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = ashr i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %83

78:                                               ; preds = %70
  %79 = load i64, i64* %13, align 8
  %80 = shl i64 %79, 1
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = shl i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %110

84:                                               ; preds = %59, %59
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* @OMAP_DSS_ROT_0, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* @OMAP_DSS_ROT_180, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* %12, align 8
  %97 = ashr i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %101

98:                                               ; preds = %92
  %99 = load i64, i64* %12, align 8
  %100 = shl i64 %99, 1
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @OMAP_DSS_ROT_0, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %22, align 4
  store i32 1, i32* %21, align 4
  br label %107

107:                                              ; preds = %106, %102
  br label %110

108:                                              ; preds = %59
  %109 = call i32 (...) @BUG()
  br label %161

110:                                              ; preds = %107, %83
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %21, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %22, align 4
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i32, i32* %11, align 4
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* @DISPC_COLOR_COMPONENT_UV, align 4
  %129 = call i32 @dispc_ovl_set_scale_param(i32 %121, i64 %122, i64 %123, i64 %124, i64 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @OMAP_DSS_WB, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %120
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %134)
  %136 = load i32, i32* %21, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i1 [ true, %133 ], [ %140, %138 ]
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = call i32 @REG_FLD_MOD(i32 %135, i32 %144, i32 8, i32 8)
  br label %146

146:                                              ; preds = %141, %120
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %147)
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = call i32 @REG_FLD_MOD(i32 %148, i32 %152, i32 5, i32 5)
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %154)
  %156 = load i32, i32* %22, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = call i32 @REG_FLD_MOD(i32 %155, i32 %159, i32 6, i32 6)
  br label %161

161:                                              ; preds = %146, %108, %58, %40
  ret void
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES2(i32) #1

declare dso_local i32 @dispc_ovl_set_accu_uv(i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_ovl_set_scale_param(i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
