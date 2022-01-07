; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i64, i32, i32, i32, i32, i32 }

@rd_mda_value = common dso_local global i64* null, align 8
@FUSB_REG_STATUS1A_TOGSS_SRC1 = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC2 = common dso_local global i32 0, align 4
@TOGGLING_MODE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot set toggling mode off, ret=%d\00", align 1
@TYPEC_CC_RD = common dso_local global i32 0, align 4
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@TYPEC_CC_RA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"unexpected CC status cc1=%s, cc2=%s, restarting toggling\00", align 1
@typec_cc_status_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot set cc polarity %s, ret=%d\00", align 1
@cc_polarity_name = common dso_local global i32* null, align 8
@FUSB_REG_MEASURE = common dso_local global i32 0, align 4
@FUSB_REG_MASK = common dso_local global i32 0, align 4
@FUSB_REG_MASK_COMP_CHNG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot unmask comp_chng interrupt, ret=%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"detected cc1=%s, cc2=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i64)* @fusb302_handle_togdone_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_handle_togdone_src(%struct.fusb302_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i64*, i64** @rd_mda_value, align 8
  %13 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %14 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %19 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @FUSB_REG_STATUS1A_TOGSS_SRC1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %26 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %27 = call i32 @fusb302_get_src_cc_status(%struct.fusb302_chip* %25, i32 %26, i32* %10)
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %30 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %31 = call i32 @fusb302_get_src_cc_status(%struct.fusb302_chip* %29, i32 %30, i32* %11)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %186

37:                                               ; preds = %32
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %39 = load i32, i32* @TOGGLING_MODE_OFF, align 4
  %40 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (%struct.fusb302_chip*, i8*, i32, ...) @fusb302_log(%struct.fusb302_chip* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %186

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @FUSB_REG_STATUS1A_TOGSS_SRC1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %54 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %55 = call i32 @fusb302_get_src_cc_status(%struct.fusb302_chip* %53, i32 %54, i32* %11)
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %58 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %59 = call i32 @fusb302_get_src_cc_status(%struct.fusb302_chip* %57, i32 %58, i32* %10)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %186

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @TYPEC_CC_RD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @TYPEC_CC_RA, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69
  %78 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  store i32 %78, i32* %9, align 4
  br label %110

79:                                               ; preds = %73, %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @TYPEC_CC_RD, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @TYPEC_CC_OPEN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @TYPEC_CC_RA, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  store i32 %92, i32* %9, align 4
  br label %109

93:                                               ; preds = %87, %79
  %94 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %95 = load i32*, i32** @typec_cc_status_name, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @typec_cc_status_name, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.fusb302_chip*, i8*, i32, ...) @fusb302_log(%struct.fusb302_chip* %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %104)
  %106 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %186

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %77
  %111 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @fusb302_set_cc_polarity_and_pull(%struct.fusb302_chip* %111, i32 %112, i32 1, i32 0)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %118 = load i32*, i32** @cc_polarity_name, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (%struct.fusb302_chip*, i8*, i32, ...) @fusb302_log(%struct.fusb302_chip* %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %186

126:                                              ; preds = %110
  %127 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %128 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %134 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132, %126
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %141 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %144 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %146 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @tcpm_cc_change(i32 %147)
  br label %149

149:                                              ; preds = %138, %132
  %150 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %151 = load i32, i32* @FUSB_REG_MEASURE, align 4
  %152 = load i64, i64* %7, align 8
  %153 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %150, i32 %151, i64 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %186

158:                                              ; preds = %149
  %159 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %160 = load i32, i32* @FUSB_REG_MASK, align 4
  %161 = load i32, i32* @FUSB_REG_MASK_COMP_CHNG, align 4
  %162 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %159, i32 %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 (%struct.fusb302_chip*, i8*, i32, ...) @fusb302_log(%struct.fusb302_chip* %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %186

170:                                              ; preds = %158
  %171 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %172 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %171, i32 0, i32 4
  store i32 1, i32* %172, align 4
  %173 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %174 = load i32*, i32** @typec_cc_status_name, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** @typec_cc_status_name, align 8
  %180 = load i32, i32* %11, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (%struct.fusb302_chip*, i8*, i32, ...) @fusb302_log(%struct.fusb302_chip* %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %170, %165, %156, %116, %93, %63, %43, %35
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @fusb302_get_src_cc_status(%struct.fusb302_chip*, i32, i32*) #1

declare dso_local i32 @fusb302_set_toggling(%struct.fusb302_chip*, i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, i32, ...) #1

declare dso_local i32 @fusb302_set_cc_polarity_and_pull(%struct.fusb302_chip*, i32, i32, i32) #1

declare dso_local i32 @tcpm_cc_change(i32) #1

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i64) #1

declare dso_local i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
