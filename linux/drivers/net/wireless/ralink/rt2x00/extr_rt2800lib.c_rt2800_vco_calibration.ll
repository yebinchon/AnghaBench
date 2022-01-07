; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_vco_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_vco_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TX_PIN_CFG = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_DISABLE = common dso_local global i32 0, align 4
@RFCSR7_RF_TUNING = common dso_local global i32 0, align 4
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@RFCSR4_VCOCAL_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Not supported RF chipset %x for VCO recalibration\00", align 1
@TX_PIN_CFG_PA_PE_G2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A0_EN = common dso_local global i32 0, align 4
@RT6352 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_vco_calibration(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = load i32, i32* @TX_PIN_CFG, align 4
  %8 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @TX_PIN_CFG_PA_PE_DISABLE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = load i32, i32* @TX_PIN_CFG, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %48 [
    i32 146, label %20
    i32 145, label %20
    i32 144, label %20
    i32 143, label %20
    i32 138, label %20
    i32 142, label %20
    i32 141, label %28
    i32 140, label %28
    i32 139, label %28
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 134, label %28
    i32 133, label %28
    i32 132, label %28
    i32 131, label %28
    i32 130, label %28
    i32 129, label %28
    i32 128, label %36
  ]

20:                                               ; preds = %1, %1, %1, %1, %1, %1
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %21, i32 7)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @RFCSR7_RF_TUNING, align 4
  %24 = call i32 @rt2x00_set_field8(i32* %4, i32 %23, i32 1)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 7, i32 %26)
  br label %54

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %29, i32 3)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %32 = call i32 @rt2x00_set_field8(i32* %4, i32 %31, i32 1)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 3, i32 %34)
  store i64 1000, i64* %5, align 8
  br label %54

36:                                               ; preds = %1
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 5, i32 64)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %39, i32 4, i32 12)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %41, i32 4)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @RFCSR4_VCOCAL_EN, align 4
  %44 = call i32 @rt2x00_set_field8(i32* %4, i32 %43, i32 1)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %45, i32 4, i32 %46)
  store i64 2000, i64* %5, align 8
  br label %54

48:                                               ; preds = %1
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %170

54:                                               ; preds = %36, %28, %20
  %55 = load i64, i64* %5, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %5, align 8
  %61 = mul i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = call i32 @usleep_range(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = load i32, i32* @TX_PIN_CFG, align 4
  %67 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %70, 14
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %84 [
    i32 3, label %77
    i32 2, label %80
    i32 1, label %83
  ]

77:                                               ; preds = %72
  %78 = load i32, i32* @TX_PIN_CFG_PA_PE_G2_EN, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %3, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %72, %77
  %81 = load i32, i32* @TX_PIN_CFG_PA_PE_G1_EN, align 4
  %82 = call i32 @rt2x00_set_field32(i32* %3, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %72, %80
  br label %84

84:                                               ; preds = %72, %83
  %85 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %86 = call i32 @rt2x00_set_field32(i32* %3, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %84
  br label %104

88:                                               ; preds = %64
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %100 [
    i32 3, label %93
    i32 2, label %96
    i32 1, label %99
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* @TX_PIN_CFG_PA_PE_A2_EN, align 4
  %95 = call i32 @rt2x00_set_field32(i32* %3, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %88, %93
  %97 = load i32, i32* @TX_PIN_CFG_PA_PE_A1_EN, align 4
  %98 = call i32 @rt2x00_set_field32(i32* %3, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %88, %96
  br label %100

100:                                              ; preds = %88, %99
  %101 = load i32, i32* @TX_PIN_CFG_PA_PE_A0_EN, align 4
  %102 = call i32 @rt2x00_set_field32(i32* %3, i32 %101, i32 1)
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = load i32, i32* @TX_PIN_CFG, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %105, i32 %106, i32 %107)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %110 = load i32, i32* @RT6352, align 4
  %111 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %170

113:                                              ; preds = %104
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %115 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %121 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %120, i32 91, i32 7)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %123 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %122, i32 95, i32 26)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %125 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %124, i32 195, i32 128)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %127 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %126, i32 196, i32 160)
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %129 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %128, i32 195, i32 170)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %131 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %130, i32 196, i32 18)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %133 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %132, i32 195, i32 171)
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %135 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %134, i32 196, i32 16)
  br label %153

136:                                              ; preds = %113
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %137, i32 91, i32 6)
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %140 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %139, i32 95, i32 154)
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %141, i32 195, i32 128)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %144 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %143, i32 196, i32 224)
  %145 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %146 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %145, i32 195, i32 170)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %148 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %147, i32 196, i32 48)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %150 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %149, i32 195, i32 171)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %152 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %151, i32 196, i32 48)
  br label %153

153:                                              ; preds = %136, %119
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %155 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %159 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %158, i32 75, i32 104)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %161 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %160, i32 76, i32 76)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %163 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %162, i32 79, i32 28)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %165 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %164, i32 80, i32 12)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %167 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %166, i32 82, i32 182)
  br label %168

168:                                              ; preds = %157, %153
  %169 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %170

170:                                              ; preds = %48, %168, %104
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
