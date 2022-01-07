; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }

@UDE_CFG_DST8 = common dso_local global i32 0, align 4
@UDE_CFG_DST16 = common dso_local global i32 0, align 4
@UDE_CFG_DST24 = common dso_local global i32 0, align 4
@UDE_CFG_DST32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UDE_FSA = common dso_local global i32 0, align 4
@UDE_LS = common dso_local global i32 0, align 4
@UDE_PS = common dso_local global i32 0, align 4
@UDE_HAT = common dso_local global i32 0, align 4
@UDE_HBT = common dso_local global i32 0, align 4
@UDE_HST = common dso_local global i32 0, align 4
@UDE_VAT = common dso_local global i32 0, align 4
@UDE_VBT = common dso_local global i32 0, align 4
@UDE_VST = common dso_local global i32 0, align 4
@UDE_CFG_GDEN_ENABLE = common dso_local global i32 0, align 4
@UDE_CFG_TIMEUP_ENABLE = common dso_local global i32 0, align 4
@UDE_CFG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@unifb_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@unifb_fix = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@unifb_modes = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @unifb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unifb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_line_length(i32 %14, i32 %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %53, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %5, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %77 [
    i32 8, label %69
    i32 16, label %71
    i32 24, label %73
    i32 32, label %75
  ]

69:                                               ; preds = %1
  %70 = load i32, i32* @UDE_CFG_DST8, align 4
  store i32 %70, i32* %10, align 4
  br label %80

71:                                               ; preds = %1
  %72 = load i32, i32* @UDE_CFG_DST16, align 4
  store i32 %72, i32* %10, align 4
  br label %80

73:                                               ; preds = %1
  %74 = load i32, i32* @UDE_CFG_DST24, align 4
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %1
  %76 = load i32, i32* @UDE_CFG_DST32, align 4
  store i32 %76, i32* %10, align 4
  br label %80

77:                                               ; preds = %1
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %169

80:                                               ; preds = %75, %73, %71, %69
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UDE_FSA, align 4
  %86 = call i32 @writel(i32 %84, i32 %85)
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UDE_LS, align 4
  %92 = call i32 @writel(i32 %90, i32 %91)
  %93 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @get_line_length(i32 %96, i32 %100)
  %102 = ashr i32 %101, 3
  %103 = load i32, i32* @UDE_PS, align 4
  %104 = call i32 @writel(i32 %102, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = shl i32 %105, 16
  %107 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %106, %110
  %112 = load i32, i32* @UDE_HAT, align 4
  %113 = call i32 @writel(i32 %111, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = sub nsw i32 %114, 1
  %116 = shl i32 %115, 16
  %117 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = or i32 %116, %121
  %123 = load i32, i32* @UDE_HBT, align 4
  %124 = call i32 @writel(i32 %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 1
  %130 = or i32 %127, %129
  %131 = load i32, i32* @UDE_HST, align 4
  %132 = call i32 @writel(i32 %130, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = shl i32 %133, 16
  %135 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %136 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %134, %138
  %140 = load i32, i32* @UDE_VAT, align 4
  %141 = call i32 @writel(i32 %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 %143, 16
  %145 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = or i32 %144, %149
  %151 = load i32, i32* @UDE_VBT, align 4
  %152 = call i32 @writel(i32 %150, i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = shl i32 %154, 16
  %156 = load i32, i32* %8, align 4
  %157 = sub nsw i32 %156, 1
  %158 = or i32 %155, %157
  %159 = load i32, i32* @UDE_VST, align 4
  %160 = call i32 @writel(i32 %158, i32 %159)
  %161 = load i32, i32* @UDE_CFG_GDEN_ENABLE, align 4
  %162 = load i32, i32* @UDE_CFG_TIMEUP_ENABLE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %163, %164
  %166 = or i32 %165, -1073741823
  %167 = load i32, i32* @UDE_CFG, align 4
  %168 = call i32 @writel(i32 %166, i32 %167)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %80, %77
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @get_line_length(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
