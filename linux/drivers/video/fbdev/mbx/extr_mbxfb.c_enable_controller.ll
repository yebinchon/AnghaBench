; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@SYSRST_RST = common dso_local global i32 0, align 4
@SYSRST = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global i32 0, align 4
@SHCTRL = common dso_local global i32 0, align 4
@SHCTRL_HINITIAL = common dso_local global i32 0, align 4
@SVCTRL = common dso_local global i32 0, align 4
@SPOCTRL_H_SC_BP = common dso_local global i32 0, align 4
@SPOCTRL_V_SC_BP = common dso_local global i32 0, align 4
@SPOCTRL_VORDER_4TAP = common dso_local global i32 0, align 4
@SPOCTRL = common dso_local global i32 0, align 4
@VSCOEFF0 = common dso_local global i32 0, align 4
@VSCOEFF1 = common dso_local global i32 0, align 4
@VSCOEFF2 = common dso_local global i32 0, align 4
@VSCOEFF3 = common dso_local global i32 0, align 4
@VSCOEFF4 = common dso_local global i32 0, align 4
@HSCOEFF0 = common dso_local global i32 0, align 4
@HSCOEFF1 = common dso_local global i32 0, align 4
@HSCOEFF2 = common dso_local global i32 0, align 4
@HSCOEFF3 = common dso_local global i32 0, align 4
@HSCOEFF4 = common dso_local global i32 0, align 4
@HSCOEFF5 = common dso_local global i32 0, align 4
@HSCOEFF6 = common dso_local global i32 0, align 4
@HSCOEFF7 = common dso_local global i32 0, align 4
@HSCOEFF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_controller(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load i32, i32* @SYSRST_RST, align 4
  %6 = load i32, i32* @SYSRST, align 4
  %7 = call i32 @write_reg_dly(i32 %5, i32 %6)
  %8 = load i32, i32* @SYSCFG, align 4
  %9 = call i32 @write_reg_dly(i32 -244, i32 %8)
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = call i32 @enable_clocks(%struct.fb_info* %10)
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = call i32 @setup_memc(%struct.fb_info* %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = call i32 @setup_graphics(%struct.fb_info* %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = call i32 @setup_display(%struct.fb_info* %16)
  %18 = load i32, i32* @SHCTRL, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @SHCTRL_HINITIAL, align 4
  %21 = call i32 @FMsk(i32 %20)
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = call i32 @Shctrl_Hinitial(i32 8192)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SHCTRL, align 4
  %30 = call i32 @writel(i32 %28, i32 %29)
  %31 = call i32 @Svctrl_Initial1(i32 1024)
  %32 = call i32 @Svctrl_Initial2(i32 1024)
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SVCTRL, align 4
  %36 = call i32 @writel(i32 %34, i32 %35)
  %37 = load i32, i32* @SPOCTRL_H_SC_BP, align 4
  %38 = load i32, i32* @SPOCTRL_V_SC_BP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SPOCTRL_VORDER_4TAP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPOCTRL, align 4
  %43 = call i32 @writel(i32 %41, i32 %42)
  %44 = load i32, i32* @VSCOEFF0, align 4
  %45 = call i32 @write_reg(i32 -16776960, i32 %44)
  %46 = load i32, i32* @VSCOEFF1, align 4
  %47 = call i32 @write_reg(i32 -33751554, i32 %46)
  %48 = load i32, i32* @VSCOEFF2, align 4
  %49 = call i32 @write_reg(i32 386729216, i32 %48)
  %50 = load i32, i32* @VSCOEFF3, align 4
  %51 = call i32 @write_reg(i32 1027026210, i32 %50)
  %52 = load i32, i32* @VSCOEFF4, align 4
  %53 = call i32 @write_reg(i32 64, i32 %52)
  %54 = load i32, i32* @HSCOEFF0, align 4
  %55 = call i32 @write_reg(i32 -16711424, i32 %54)
  %56 = load i32, i32* @HSCOEFF1, align 4
  %57 = call i32 @write_reg(i32 0, i32 %56)
  %58 = load i32, i32* @HSCOEFF2, align 4
  %59 = call i32 @write_reg(i32 33619968, i32 %58)
  %60 = load i32, i32* @HSCOEFF3, align 4
  %61 = call i32 @write_reg(i32 16909058, i32 %60)
  %62 = load i32, i32* @HSCOEFF4, align 4
  %63 = call i32 @write_reg(i32 -100925952, i32 %62)
  %64 = load i32, i32* @HSCOEFF5, align 4
  %65 = call i32 @write_reg(i32 -67635465, i32 %64)
  %66 = load i32, i32* @HSCOEFF6, align 4
  %67 = call i32 @write_reg(i32 470877952, i32 %66)
  %68 = load i32, i32* @HSCOEFF7, align 4
  %69 = call i32 @write_reg(i32 1043935527, i32 %68)
  %70 = load i32, i32* @HSCOEFF8, align 4
  %71 = call i32 @write_reg(i32 64, i32 %70)
  ret void
}

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @enable_clocks(%struct.fb_info*) #1

declare dso_local i32 @setup_memc(%struct.fb_info*) #1

declare dso_local i32 @setup_graphics(%struct.fb_info*) #1

declare dso_local i32 @setup_display(%struct.fb_info*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FMsk(i32) #1

declare dso_local i32 @Shctrl_Hinitial(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @Svctrl_Initial1(i32) #1

declare dso_local i32 @Svctrl_Initial2(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
