; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das16cs_private* }
%struct.das16cs_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS16CS_AI_MUX_REG = common dso_local global i64 0, align 8
@DAS16CS_MISC1_INTE = common dso_local global i32 0, align 4
@DAS16CS_MISC1_INT_SRC_MASK = common dso_local global i32 0, align 4
@DAS16CS_MISC1_AI_CONV_MASK = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@DAS16CS_MISC1_SEDIFF = common dso_local global i32 0, align 4
@DAS16CS_MISC1_REG = common dso_local global i64 0, align 8
@DAS16CS_MISC2_BME = common dso_local global i32 0, align 4
@DAS16CS_MISC2_AI_GAIN_MASK = common dso_local global i32 0, align 4
@DAS16CS_MISC2_AI_GAIN_1 = common dso_local global i32 0, align 4
@DAS16CS_MISC2_AI_GAIN_2 = common dso_local global i32 0, align 4
@DAS16CS_MISC2_AI_GAIN_4 = common dso_local global i32 0, align 4
@DAS16CS_MISC2_AI_GAIN_8 = common dso_local global i32 0, align 4
@DAS16CS_MISC2_REG = common dso_local global i64 0, align 8
@DAS16CS_AI_DATA_REG = common dso_local global i64 0, align 8
@das16cs_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16cs_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16cs_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.das16cs_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.das16cs_private*, %struct.das16cs_private** %17, align 8
  store %struct.das16cs_private* %18, %struct.das16cs_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_RANGE(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CR_AREF(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @DAS16CS_AI_MUX_SINGLE_CHAN(i32 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DAS16CS_AI_MUX_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 %32, i64 %37)
  %39 = load i32, i32* @DAS16CS_MISC1_INTE, align 4
  %40 = load i32, i32* @DAS16CS_MISC1_INT_SRC_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DAS16CS_MISC1_AI_CONV_MASK, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %46 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @AREF_DIFF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %4
  %53 = load i32, i32* @DAS16CS_MISC1_SEDIFF, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %56 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %65

59:                                               ; preds = %4
  %60 = load i32, i32* @DAS16CS_MISC1_SEDIFF, align 4
  %61 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %62 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %67 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outw(i32 %68, i64 %73)
  %75 = load i32, i32* @DAS16CS_MISC2_BME, align 4
  %76 = load i32, i32* @DAS16CS_MISC2_AI_GAIN_MASK, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %80 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %12, align 4
  switch i32 %83, label %108 [
    i32 0, label %84
    i32 1, label %90
    i32 2, label %96
    i32 3, label %102
  ]

84:                                               ; preds = %65
  %85 = load i32, i32* @DAS16CS_MISC2_AI_GAIN_1, align 4
  %86 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %87 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %108

90:                                               ; preds = %65
  %91 = load i32, i32* @DAS16CS_MISC2_AI_GAIN_2, align 4
  %92 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %93 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %108

96:                                               ; preds = %65
  %97 = load i32, i32* @DAS16CS_MISC2_AI_GAIN_4, align 4
  %98 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %99 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %65
  %103 = load i32, i32* @DAS16CS_MISC2_AI_GAIN_8, align 4
  %104 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %105 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %65, %102, %96, %90, %84
  %109 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %110 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DAS16CS_MISC2_REG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outw(i32 %111, i64 %116)
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %151, %108
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %121 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %118
  %125 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %126 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DAS16CS_AI_DATA_REG, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outw(i32 0, i64 %129)
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %133 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %134 = load i32, i32* @das16cs_ai_eoc, align 4
  %135 = call i32 @comedi_timeout(%struct.comedi_device* %131, %struct.comedi_subdevice* %132, %struct.comedi_insn* %133, i32 %134, i32 0)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %5, align 4
  br label %156

140:                                              ; preds = %124
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DAS16CS_AI_DATA_REG, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @inw(i64 %145)
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %118

154:                                              ; preds = %118
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %138
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @DAS16CS_AI_MUX_SINGLE_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
