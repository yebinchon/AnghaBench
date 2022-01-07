; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_write_color_conv_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_write_color_conv_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_conv_coef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.color_conv_coef*)* @dispc_ovl_write_color_conv_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_write_color_conv_coef(i32 %0, %struct.color_conv_coef* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.color_conv_coef*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.color_conv_coef* %1, %struct.color_conv_coef** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @DISPC_OVL_CONV_COEF(i32 %5, i32 0)
  %7 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %8 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %9, i32 26, i32 16)
  %11 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %12 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %13, i32 10, i32 0)
  %15 = or i32 %10, %14
  %16 = call i32 @dispc_write_reg(i32 %6, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DISPC_OVL_CONV_COEF(i32 %17, i32 1)
  %19 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %20 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %21, i32 26, i32 16)
  %23 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %24 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %25, i32 10, i32 0)
  %27 = or i32 %22, %26
  %28 = call i32 @dispc_write_reg(i32 %18, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @DISPC_OVL_CONV_COEF(i32 %29, i32 2)
  %31 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %32 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %33, i32 26, i32 16)
  %35 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %36 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %37, i32 10, i32 0)
  %39 = or i32 %34, %38
  %40 = call i32 @dispc_write_reg(i32 %30, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @DISPC_OVL_CONV_COEF(i32 %41, i32 3)
  %43 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %44 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %45, i32 26, i32 16)
  %47 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %48 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %49, i32 10, i32 0)
  %51 = or i32 %46, %50
  %52 = call i32 @dispc_write_reg(i32 %42, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @DISPC_OVL_CONV_COEF(i32 %53, i32 4)
  %55 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 0, i32 26, i32 16)
  %56 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %57 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %58, i32 10, i32 0)
  %60 = or i32 %55, %59
  %61 = call i32 @dispc_write_reg(i32 %54, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %62)
  %64 = load %struct.color_conv_coef*, %struct.color_conv_coef** %4, align 8
  %65 = getelementptr inbounds %struct.color_conv_coef, %struct.color_conv_coef* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_FLD_MOD(i32 %63, i32 %66, i32 11, i32 11)
  ret void
}

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @DISPC_OVL_CONV_COEF(i32, i32) #1

declare dso_local i32 @FLD_VAL(...) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
