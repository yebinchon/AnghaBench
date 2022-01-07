; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_fir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_COLOR_COMPONENT_RGB_Y = common dso_local global i32 0, align 4
@FEAT_REG_FIRHINC = common dso_local global i32 0, align 4
@FEAT_REG_FIRVINC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @dispc_ovl_set_fir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_fir(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DISPC_COLOR_COMPONENT_RGB_Y, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load i32, i32* @FEAT_REG_FIRHINC, align 4
  %19 = call i32 @dss_feat_get_reg_field(i32 %18, i32* %10, i32* %11)
  %20 = load i32, i32* @FEAT_REG_FIRVINC, align 4
  %21 = call i32 @dss_feat_get_reg_field(i32 %20, i32* %12, i32* %13)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @FLD_VAL(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @FLD_VAL(i32 %26, i32 %27, i32 %28)
  %30 = or i32 %25, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DISPC_OVL_FIR(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dispc_write_reg(i32 %32, i32 %33)
  br label %45

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @FLD_VAL(i32 %36, i32 28, i32 16)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @FLD_VAL(i32 %38, i32 12, i32 0)
  %40 = or i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @DISPC_OVL_FIR2(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dispc_write_reg(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %17
  ret void
}

declare dso_local i32 @dss_feat_get_reg_field(i32, i32*, i32*) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @DISPC_OVL_FIR(i32) #1

declare dso_local i32 @DISPC_OVL_FIR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
