; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i32, i32, i32 }
%struct.ni_board_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NI_M_CFG_BYPASS_AI_CAL_MASK = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_REG = common dso_local global i32 0, align 4
@NI611X_CAL_GAIN_SEL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ai_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_board_struct*, align 8
  %11 = alloca %struct.ni_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.ni_board_struct*, %struct.ni_board_struct** %16, align 8
  store %struct.ni_board_struct* %17, %struct.ni_board_struct** %10, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.ni_private*, %struct.ni_private** %19, align 8
  store %struct.ni_private* %20, %struct.ni_private** %11, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %133

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %129 [
    i32 129, label %32
    i32 128, label %102
  ]

32:                                               ; preds = %28
  %33 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %34 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NI_M_CFG_BYPASS_AI_CAL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %133

48:                                               ; preds = %37
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %53 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %101

54:                                               ; preds = %32
  %55 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %56 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %66 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %70 = call i32 @ni_writew(%struct.comedi_device* %67, i32 %68, i32 %69)
  br label %100

71:                                               ; preds = %54
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %13, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = lshr i32 %78, 4
  %80 = and i32 %79, 255
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp uge i32 %81, 8
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %133

86:                                               ; preds = %71
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %89 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %91 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @NI611X_CAL_GAIN_SEL_REG, align 4
  %98 = call i32 @ni_writeb(%struct.comedi_device* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %86
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100, %48
  store i32 2, i32* %5, align 4
  br label %133

102:                                              ; preds = %28
  %103 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ni_min_ai_scan_period_ns(%struct.comedi_device* %103, i32 %106)
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %111 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %102
  %115 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %116 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %102
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 0, i32* %121, align 4
  br label %128

122:                                              ; preds = %114
  %123 = load %struct.ni_board_struct*, %struct.ni_board_struct** %10, align 8
  %124 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %119
  store i32 0, i32* %5, align 4
  br label %133

129:                                              ; preds = %28
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %128, %101, %83, %45, %25
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_min_ai_scan_period_ns(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
