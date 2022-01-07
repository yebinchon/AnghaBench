; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone_snk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone_snk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32, i32, i32, i32, i32 }

@FUSB_REG_STATUS1A_TOGSS_SNK1 = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot set cc polarity %s, ret=%d\00", align 1
@cc_polarity_name = common dso_local global i32* null, align 8
@FUSB_REG_STATUS0 = common dso_local global i32 0, align 4
@FUSB_REG_STATUS0_BC_LVL_MASK = common dso_local global i64 0, align 8
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"restart toggling as CC_OPEN detected\00", align 1
@TOGGLING_MODE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot set toggling mode off, ret=%d\00", align 1
@FUSB_REG_MASK = common dso_local global i32 0, align 4
@FUSB_REG_MASK_BC_LVL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot unmask bc_lcl interrupt, ret=%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"detected cc1=%s, cc2=%s\00", align 1
@typec_cc_status_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i64)* @fusb302_handle_togdone_snk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_handle_togdone_snk(%struct.fusb302_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @FUSB_REG_STATUS1A_TOGSS_SNK1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @fusb302_set_cc_polarity_and_pull(%struct.fusb302_chip* %22, i32 %23, i32 0, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %29 = load i32*, i32** @cc_polarity_name, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %20
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %39 = load i32, i32* @FUSB_REG_STATUS0, align 4
  %40 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %38, i32 %39, i64* %7)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %143

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @FUSB_REG_STATUS0_BC_LVL_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @fusb302_bc_lvl_to_cc(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %56 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %58 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %59 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %143

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @TYPEC_CC_OPEN, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @TYPEC_CC_OPEN, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %12, align 4
  %82 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %83 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %89 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87, %80
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %96 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %99 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %101 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tcpm_cc_change(i32 %102)
  br label %104

104:                                              ; preds = %93, %87
  %105 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %106 = load i32, i32* @TOGGLING_MODE_OFF, align 4
  %107 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %143

115:                                              ; preds = %104
  %116 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %117 = load i32, i32* @FUSB_REG_MASK, align 4
  %118 = load i32, i32* @FUSB_REG_MASK_BC_LVL, align 4
  %119 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %116, i32 %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %143

127:                                              ; preds = %115
  %128 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %129 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  %130 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %131 = load i32*, i32** @typec_cc_status_name, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @typec_cc_status_name, align 8
  %137 = load i32, i32* %12, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %140)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %127, %122, %110, %54, %43, %27
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @fusb302_set_cc_polarity_and_pull(%struct.fusb302_chip*, i32, i32, i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, ...) #1

declare dso_local i32 @fusb302_i2c_read(%struct.fusb302_chip*, i32, i64*) #1

declare dso_local i32 @fusb302_bc_lvl_to_cc(i64) #1

declare dso_local i32 @fusb302_set_toggling(%struct.fusb302_chip*, i32) #1

declare dso_local i32 @tcpm_cc_change(i32) #1

declare dso_local i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
