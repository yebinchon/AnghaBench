; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_cc_polarity_and_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_cc_polarity_and_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32, i64 }

@FUSB_REG_SWITCHES1_TXCC1_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES1_TXCC2_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC1_PD_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC2_PD_EN = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_MEAS_CC1 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_VCONN_CC2 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC1_PU_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_MEAS_CC2 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_VCONN_CC1 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC2_PU_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32, i32, i32)* @fusb302_set_cc_polarity_and_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_set_cc_polarity_and_pull(%struct.fusb302_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fusb302_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @FUSB_REG_SWITCHES1_TXCC1_EN, align 4
  %15 = load i32, i32* @FUSB_REG_SWITCHES1_TXCC2_EN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* @FUSB_REG_SWITCHES0_CC1_PD_EN, align 4
  %21 = load i32, i32* @FUSB_REG_SWITCHES0_CC2_PD_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %19, %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, i32* @FUSB_REG_SWITCHES0_MEAS_CC1, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %34 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @FUSB_REG_SWITCHES0_VCONN_CC2, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @FUSB_REG_SWITCHES0_CC1_PU_EN, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @FUSB_REG_SWITCHES1_TXCC1_EN, align 4
  store i32 %49, i32* %13, align 4
  br label %71

50:                                               ; preds = %25
  %51 = load i32, i32* @FUSB_REG_SWITCHES0_MEAS_CC2, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %55 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @FUSB_REG_SWITCHES0_VCONN_CC1, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @FUSB_REG_SWITCHES0_CC2_PU_EN, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @FUSB_REG_SWITCHES1_TXCC2_EN, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %48
  %72 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %73 = load i32, i32* @FUSB_REG_SWITCHES0, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %95

80:                                               ; preds = %71
  %81 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %82 = load i32, i32* @FUSB_REG_SWITCHES1, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %93 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %88, %78
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_mask_write(%struct.fusb302_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
