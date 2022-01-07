; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_cpr_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_cpr_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_cpr_coefs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.omap_dss_cpr_coefs*)* @dispc_mgr_set_cpr_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_set_cpr_coef(i32 %0, %struct.omap_dss_cpr_coefs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_cpr_coefs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.omap_dss_cpr_coefs* %1, %struct.omap_dss_cpr_coefs** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dss_mgr_is_lcd(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FLD_VAL(i32 %15, i32 31, i32 22)
  %17 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %18 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FLD_VAL(i32 %19, i32 20, i32 11)
  %21 = or i32 %16, %20
  %22 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @FLD_VAL(i32 %24, i32 9, i32 0)
  %26 = or i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %28 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FLD_VAL(i32 %29, i32 31, i32 22)
  %31 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %32 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FLD_VAL(i32 %33, i32 20, i32 11)
  %35 = or i32 %30, %34
  %36 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %37 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FLD_VAL(i32 %38, i32 9, i32 0)
  %40 = or i32 %35, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %42 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FLD_VAL(i32 %43, i32 31, i32 22)
  %45 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %46 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FLD_VAL(i32 %47, i32 20, i32 11)
  %49 = or i32 %44, %48
  %50 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %4, align 8
  %51 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FLD_VAL(i32 %52, i32 9, i32 0)
  %54 = or i32 %49, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @DISPC_CPR_COEF_R(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dispc_write_reg(i32 %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @DISPC_CPR_COEF_G(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dispc_write_reg(i32 %60, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @DISPC_CPR_COEF_B(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dispc_write_reg(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @DISPC_CPR_COEF_R(i32) #1

declare dso_local i32 @DISPC_CPR_COEF_G(i32) #1

declare dso_local i32 @DISPC_CPR_COEF_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
