; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c___iss_subclk_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c___iss_subclk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@OMAP4_ISS_SUBCLK_CSI2_A = common dso_local global i32 0, align 4
@ISS_CLKCTRL_CSI2_A = common dso_local global i32 0, align 4
@OMAP4_ISS_SUBCLK_CSI2_B = common dso_local global i32 0, align 4
@ISS_CLKCTRL_CSI2_B = common dso_local global i32 0, align 4
@OMAP4_ISS_SUBCLK_ISP = common dso_local global i32 0, align 4
@ISS_CLKCTRL_ISP = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@ISS_CLKCTRL = common dso_local global i32 0, align 4
@ISS_CLKCTRL_MASK = common dso_local global i32 0, align 4
@ISS_CLKSTAT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @__iss_subclk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iss_subclk_update(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %6 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %7 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @OMAP4_ISS_SUBCLK_CSI2_A, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ISS_CLKCTRL_CSI2_A, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %18 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OMAP4_ISS_SUBCLK_CSI2_B, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @ISS_CLKCTRL_CSI2_B, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %29 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP4_ISS_SUBCLK_ISP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @ISS_CLKCTRL_ISP, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %40 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %41 = load i32, i32* @ISS_CLKCTRL, align 4
  %42 = load i32, i32* @ISS_CLKCTRL_MASK, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @iss_reg_update(%struct.iss_device* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %60, %38
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %52 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %53 = load i32, i32* @ISS_CLKSTAT, align 4
  %54 = call i32 @iss_reg_read(%struct.iss_device* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @ISS_CLKCTRL_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %49
  br label %45

61:                                               ; preds = %59, %45
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @iss_reg_update(%struct.iss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
