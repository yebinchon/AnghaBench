; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_get_src_cc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_get_src_cc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i64 }

@ra_mda_value = common dso_local global i32* null, align 8
@rd_mda_value = common dso_local global i32* null, align 8
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC1_PU_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_MEAS_CC1 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_CC2_PU_EN = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0_MEAS_CC2 = common dso_local global i32 0, align 4
@FUSB_REG_SWITCHES0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"get_src_cc_status switches: 0x%0x\00", align 1
@FUSB_REG_MEASURE = common dso_local global i32 0, align 4
@FUSB_REG_STATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"get_src_cc_status rd_mda status0: 0x%0x\00", align 1
@FUSB_REG_STATUS0_COMP = common dso_local global i32 0, align 4
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"get_src_cc_status ra_mda status0: 0x%0x\00", align 1
@TYPEC_CC_RD = common dso_local global i32 0, align 4
@TYPEC_CC_RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32, i32*)* @fusb302_get_src_cc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_get_src_cc_status(%struct.fusb302_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fusb302_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** @ra_mda_value, align 8
  %14 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %15 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** @rd_mda_value, align 8
  %20 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %21 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @FUSB_REG_SWITCHES0_CC1_PU_EN, align 4
  %30 = load i32, i32* @FUSB_REG_SWITCHES0_MEAS_CC1, align 4
  %31 = or i32 %29, %30
  br label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @FUSB_REG_SWITCHES0_CC2_PU_EN, align 4
  %34 = load i32, i32* @FUSB_REG_SWITCHES0_MEAS_CC2, align 4
  %35 = or i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %10, align 4
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %39 = load i32, i32* @FUSB_REG_SWITCHES0, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %36
  %47 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %48 = load i32, i32* @FUSB_REG_SWITCHES0, align 4
  %49 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %47, i32 %48, i32* %11)
  %50 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @fusb302_log(%struct.fusb302_chip* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %54 = load i32, i32* @FUSB_REG_MEASURE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %53, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %114

61:                                               ; preds = %46
  %62 = call i32 @usleep_range(i32 50, i32 100)
  %63 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %64 = load i32, i32* @FUSB_REG_STATUS0, align 4
  %65 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %63, i32 %64, i32* %11)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %114

70:                                               ; preds = %61
  %71 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @fusb302_log(%struct.fusb302_chip* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @FUSB_REG_STATUS0_COMP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %114

81:                                               ; preds = %70
  %82 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %83 = load i32, i32* @FUSB_REG_MEASURE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %82, i32 %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %114

90:                                               ; preds = %81
  %91 = call i32 @usleep_range(i32 50, i32 100)
  %92 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %93 = load i32, i32* @FUSB_REG_STATUS0, align 4
  %94 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %92, i32 %93, i32* %11)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %114

99:                                               ; preds = %90
  %100 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @fusb302_log(%struct.fusb302_chip* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @FUSB_REG_STATUS0_COMP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @TYPEC_CC_RD, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %113

110:                                              ; preds = %99
  %111 = load i32, i32* @TYPEC_CC_RA, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %97, %88, %78, %68, %59, %44
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_read(%struct.fusb302_chip*, i32, i32*) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
