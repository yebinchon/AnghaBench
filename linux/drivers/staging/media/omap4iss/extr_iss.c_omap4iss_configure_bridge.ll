; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_configure_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_configure_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@ISS_CTRL = common dso_local global i32 0, align 4
@ISS_CTRL_INPUT_SEL_MASK = common dso_local global i32 0, align 4
@ISS_CTRL_CLK_DIV_MASK = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_ISP_SYS1 = common dso_local global i32 0, align 4
@ISP5_CTRL = common dso_local global i32 0, align 4
@ISS_CTRL_INPUT_SEL_CSI2A = common dso_local global i32 0, align 4
@ISS_CTRL_INPUT_SEL_CSI2B = common dso_local global i32 0, align 4
@ISS_CTRL_SYNC_DETECT_VS_RAISING = common dso_local global i32 0, align 4
@ISP5_CTRL_VD_PULSE_EXT = common dso_local global i32 0, align 4
@ISP5_CTRL_PSYNC_CLK_SEL = common dso_local global i32 0, align 4
@ISP5_CTRL_SYNC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4iss_configure_bridge(%struct.iss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %8 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %9 = load i32, i32* @ISS_CTRL, align 4
  %10 = call i32 @iss_reg_read(%struct.iss_device* %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ISS_CTRL_INPUT_SEL_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @ISS_CTRL_CLK_DIV_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %21 = load i32, i32* @ISP5_CTRL, align 4
  %22 = call i32 @iss_reg_read(%struct.iss_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @ISS_CTRL_INPUT_SEL_CSI2A, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @ISS_CTRL_INPUT_SEL_CSI2B, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %2
  br label %54

33:                                               ; preds = %28, %24
  %34 = load i32, i32* @ISS_CTRL_SYNC_DETECT_VS_RAISING, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @ISP5_CTRL_VD_PULSE_EXT, align 4
  %38 = load i32, i32* @ISP5_CTRL_PSYNC_CLK_SEL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ISP5_CTRL_SYNC_ENABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %45 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %46 = load i32, i32* @ISS_CTRL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @iss_reg_write(%struct.iss_device* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %50 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %51 = load i32, i32* @ISP5_CTRL, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @iss_reg_write(%struct.iss_device* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
