; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_clock_src_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_clock_src_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32** }

@NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@GI_SRC_SUBSEL = common dso_local global i32 0, align 4
@NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_PXI10_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_TC_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_M_MAX_RTSI_CHAN = common dso_local global i32 0, align 4
@NI_M_MAX_PFI_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32*)* @ni_m_series_clock_src_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_clock_src_select(%struct.ni_gpct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ni_gpct_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 2
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %6, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @NITIO_GATE2_REG(i32 %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @NITIO_INPUT_SEL_REG(i32 %25)
  %27 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %24, i32 %26)
  %28 = call i32 @GI_BITS_TO_SRC(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %80 [
    i32 130, label %30
    i32 129, label %32
    i32 128, label %34
    i32 134, label %54
    i32 133, label %56
    i32 131, label %76
    i32 132, label %78
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* @NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS, align 4
  store i32 %31, i32* %10, align 4
  br label %127

32:                                               ; preds = %2
  %33 = load i32, i32* @NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS, align 4
  store i32 %33, i32* %10, align 4
  br label %127

34:                                               ; preds = %2
  %35 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %36 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GI_SRC_SUBSEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS, align 4
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %127

54:                                               ; preds = %2
  %55 = load i32, i32* @NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS, align 4
  store i32 %55, i32* %10, align 4
  br label %127

56:                                               ; preds = %2
  %57 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %58 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GI_SRC_SUBSEL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS, align 4
  store i32 %72, i32* %10, align 4
  br label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %127

76:                                               ; preds = %2
  %77 = load i32, i32* @NI_GPCT_PXI10_CLOCK_SRC_BITS, align 4
  store i32 %77, i32* %10, align 4
  br label %127

78:                                               ; preds = %2
  %79 = load i32, i32* @NI_GPCT_NEXT_TC_CLOCK_SRC_BITS, align 4
  store i32 %79, i32* %10, align 4
  br label %127

80:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %84 = icmp ule i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @NI_M_RTSI_CLK(i32 %87)
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %91)
  store i32 %92, i32* %10, align 4
  br label %97

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %81

97:                                               ; preds = %90, %81
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @NI_M_MAX_RTSI_CHAN, align 4
  %100 = icmp ule i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %127

102:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %106 = icmp ule i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @NI_M_PFI_CLK(i32 %109)
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32 %113)
  store i32 %114, i32* %10, align 4
  br label %119

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %103

119:                                              ; preds = %112, %103
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @NI_M_MAX_PFI_CHAN, align 4
  %122 = icmp ule i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %134

127:                                              ; preds = %123, %101, %78, %76, %75, %54, %53, %32, %30
  %128 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %129 = call i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct* %128)
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @NITIO_GATE2_REG(i32) #1

declare dso_local i32 @GI_BITS_TO_SRC(i32) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_INPUT_SEL_REG(i32) #1

declare dso_local i32 @NI_M_RTSI_CLK(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_PFI_CLK(i32) #1

declare dso_local i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
