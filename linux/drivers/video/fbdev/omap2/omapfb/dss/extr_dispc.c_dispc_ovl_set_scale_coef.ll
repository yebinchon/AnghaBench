; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scale_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_scale_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_coef = type { i32, i32, i32, i32, i32 }

@DISPC_COLOR_COMPONENT_RGB_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @dispc_ovl_set_scale_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_scale_coef(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dispc_coef*, align 8
  %12 = alloca %struct.dispc_coef*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.dispc_coef* @dispc_ovl_get_scale_coef(i32 %17, i32 1)
  store %struct.dispc_coef* %18, %struct.dispc_coef** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.dispc_coef* @dispc_ovl_get_scale_coef(i32 %19, i32 %20)
  store %struct.dispc_coef* %21, %struct.dispc_coef** %12, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %110, %5
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %113

25:                                               ; preds = %22
  %26 = load %struct.dispc_coef*, %struct.dispc_coef** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %26, i64 %28
  %30 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FLD_VAL(i32 %31, i32 7, i32 0)
  %33 = load %struct.dispc_coef*, %struct.dispc_coef** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %33, i64 %35
  %37 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FLD_VAL(i32 %38, i32 15, i32 8)
  %40 = or i32 %32, %39
  %41 = load %struct.dispc_coef*, %struct.dispc_coef** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %41, i64 %43
  %45 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FLD_VAL(i32 %46, i32 23, i32 16)
  %48 = or i32 %40, %47
  %49 = load %struct.dispc_coef*, %struct.dispc_coef** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %49, i64 %51
  %53 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FLD_VAL(i32 %54, i32 31, i32 24)
  %56 = or i32 %48, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.dispc_coef*, %struct.dispc_coef** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %57, i64 %59
  %61 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @FLD_VAL(i32 %62, i32 7, i32 0)
  %64 = load %struct.dispc_coef*, %struct.dispc_coef** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %64, i64 %66
  %68 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @FLD_VAL(i32 %69, i32 15, i32 8)
  %71 = or i32 %63, %70
  %72 = load %struct.dispc_coef*, %struct.dispc_coef** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %72, i64 %74
  %76 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FLD_VAL(i32 %77, i32 23, i32 16)
  %79 = or i32 %71, %78
  %80 = load %struct.dispc_coef*, %struct.dispc_coef** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %80, i64 %82
  %84 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @FLD_VAL(i32 %85, i32 31, i32 24)
  %87 = or i32 %79, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @DISPC_COLOR_COMPONENT_RGB_Y, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %25
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @dispc_ovl_write_firh_reg(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @dispc_ovl_write_firhv_reg(i32 %96, i32 %97, i32 %98)
  br label %109

100:                                              ; preds = %25
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @dispc_ovl_write_firh2_reg(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @dispc_ovl_write_firhv2_reg(i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %91
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %22

113:                                              ; preds = %22
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %150, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 8
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load %struct.dispc_coef*, %struct.dispc_coef** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %121, i64 %123
  %125 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @FLD_VAL(i32 %126, i32 7, i32 0)
  %128 = load %struct.dispc_coef*, %struct.dispc_coef** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %128, i64 %130
  %132 = getelementptr inbounds %struct.dispc_coef, %struct.dispc_coef* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @FLD_VAL(i32 %133, i32 15, i32 8)
  %135 = or i32 %127, %134
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @DISPC_COLOR_COMPONENT_RGB_Y, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %120
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @dispc_ovl_write_firv_reg(i32 %140, i32 %141, i32 %142)
  br label %149

144:                                              ; preds = %120
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @dispc_ovl_write_firv2_reg(i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %117

153:                                              ; preds = %117
  br label %154

154:                                              ; preds = %153, %113
  ret void
}

declare dso_local %struct.dispc_coef* @dispc_ovl_get_scale_coef(i32, i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firh_reg(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firhv_reg(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firh2_reg(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firhv2_reg(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firv_reg(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_write_firv2_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
