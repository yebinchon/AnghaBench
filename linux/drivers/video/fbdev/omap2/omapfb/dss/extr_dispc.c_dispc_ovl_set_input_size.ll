; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_input_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_set_input_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dispc_ovl_set_input_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_input_size(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @FLD_VAL(i32 %9, i32 26, i32 16)
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @FLD_VAL(i32 %12, i32 10, i32 0)
  %14 = or i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OMAP_DSS_GFX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OMAP_DSS_WB, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DISPC_OVL_SIZE(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dispc_write_reg(i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @DISPC_OVL_PICTURE_SIZE(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dispc_write_reg(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @DISPC_OVL_SIZE(i32) #1

declare dso_local i32 @DISPC_OVL_PICTURE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
