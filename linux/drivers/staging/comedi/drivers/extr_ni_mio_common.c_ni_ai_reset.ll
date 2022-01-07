; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64, i64, i64 }
%struct.comedi_subdevice = type { i32 }

@NISTC_RESET_AI_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_AI = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_REG = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_AI_MASK = common dso_local global i32 0, align 4
@NI_E_MISC_CMD_EXT_ATRIG = common dso_local global i32 0, align 4
@NI_E_MISC_CMD_REG = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_DISARM = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_START_STOP = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_RSVD = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE3_FIFO_MODE_NE = common dso_local global i32 0, align 4
@NISTC_AI_MODE3_REG = common dso_local global i32 0, align 4
@NISTC_AI_PERSONAL_SHIFTIN_PW = common dso_local global i32 0, align 4
@NISTC_AI_PERSONAL_SOC_POLARITY = common dso_local global i32 0, align 4
@NISTC_AI_PERSONAL_LOCALMUX_CLK_PW = common dso_local global i32 0, align 4
@NISTC_AI_OUT_CTRL_CONVERT_HIGH = common dso_local global i32 0, align 4
@NISTC_AI_OUT_CTRL_CONVERT_LOW = common dso_local global i32 0, align 4
@NISTC_AI_PERSONAL_CONVERT_PW = common dso_local global i32 0, align 4
@NISTC_AI_PERSONAL_REG = common dso_local global i32 0, align 4
@NISTC_AI_OUT_CTRL_REG = common dso_local global i32 0, align 4
@NISTC_INTA_ACK_AI_ALL = common dso_local global i32 0, align 4
@NISTC_INTA_ACK_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AI_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ai_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_reset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = call i32 @ni_release_ai_mite_channel(%struct.comedi_device* %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = load i32, i32* @NISTC_RESET_AI_CFG_START, align 4
  %15 = load i32, i32* @NISTC_RESET_AI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NISTC_RESET_REG, align 4
  %18 = call i32 @ni_stc_writew(%struct.comedi_device* %13, i32 %16, i32 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = load i32, i32* @NISTC_INTA_ENA_REG, align 4
  %21 = load i32, i32* @NISTC_INTA_ENA_AI_MASK, align 4
  %22 = call i32 @ni_set_bits(%struct.comedi_device* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %23)
  %25 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %26 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load i32, i32* @NI_E_MISC_CMD_EXT_ATRIG, align 4
  %32 = load i32, i32* @NI_E_MISC_CMD_REG, align 4
  %33 = call i32 @ni_writeb(%struct.comedi_device* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = load i32, i32* @NISTC_AI_CMD1_DISARM, align 4
  %37 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %38 = call i32 @ni_stc_writew(%struct.comedi_device* %35, i32 %36, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = load i32, i32* @NISTC_AI_MODE1_START_STOP, align 4
  %41 = load i32, i32* @NISTC_AI_MODE1_RSVD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NISTC_AI_MODE1_REG, align 4
  %44 = call i32 @ni_stc_writew(%struct.comedi_device* %39, i32 %42, i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %47 = call i32 @ni_stc_writew(%struct.comedi_device* %45, i32 0, i32 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = load i32, i32* @NISTC_AI_MODE3_FIFO_MODE_NE, align 4
  %50 = load i32, i32* @NISTC_AI_MODE3_REG, align 4
  %51 = call i32 @ni_stc_writew(%struct.comedi_device* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @NISTC_AI_PERSONAL_SHIFTIN_PW, align 4
  %53 = load i32, i32* @NISTC_AI_PERSONAL_SOC_POLARITY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NISTC_AI_PERSONAL_LOCALMUX_CLK_PW, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = call i32 @NISTC_AI_OUT_CTRL_SCAN_IN_PROG_SEL(i32 3)
  %58 = call i32 @NISTC_AI_OUT_CTRL_EXTMUX_CLK_SEL(i32 0)
  %59 = or i32 %57, %58
  %60 = call i32 @NISTC_AI_OUT_CTRL_LOCALMUX_CLK_SEL(i32 2)
  %61 = or i32 %59, %60
  %62 = call i32 @NISTC_AI_OUT_CTRL_SC_TC_SEL(i32 3)
  %63 = or i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %65 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %34
  %69 = load i32, i32* @NISTC_AI_OUT_CTRL_CONVERT_HIGH, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %99

72:                                               ; preds = %34
  %73 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %74 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @NISTC_AI_OUT_CTRL_CONVERT_LOW, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %98

81:                                               ; preds = %72
  %82 = load i32, i32* @NISTC_AI_PERSONAL_CONVERT_PW, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %86 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @NISTC_AI_OUT_CTRL_CONVERT_HIGH, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %97

93:                                               ; preds = %81
  %94 = load i32, i32* @NISTC_AI_OUT_CTRL_CONVERT_LOW, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %68
  %100 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NISTC_AI_PERSONAL_REG, align 4
  %103 = call i32 @ni_stc_writew(%struct.comedi_device* %100, i32 %101, i32 %102)
  %104 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @NISTC_AI_OUT_CTRL_REG, align 4
  %107 = call i32 @ni_stc_writew(%struct.comedi_device* %104, i32 %105, i32 %106)
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = load i32, i32* @NISTC_INTA_ACK_AI_ALL, align 4
  %110 = load i32, i32* @NISTC_INTA_ACK_REG, align 4
  %111 = call i32 @ni_stc_writew(%struct.comedi_device* %108, i32 %109, i32 %110)
  %112 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %113 = load i32, i32* @NISTC_RESET_AI_CFG_END, align 4
  %114 = load i32, i32* @NISTC_RESET_REG, align 4
  %115 = call i32 @ni_stc_writew(%struct.comedi_device* %112, i32 %113, i32 %114)
  ret i32 0
}

declare dso_local i32 @ni_release_ai_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AI_OUT_CTRL_SCAN_IN_PROG_SEL(i32) #1

declare dso_local i32 @NISTC_AI_OUT_CTRL_EXTMUX_CLK_SEL(i32) #1

declare dso_local i32 @NISTC_AI_OUT_CTRL_LOCALMUX_CLK_SEL(i32) #1

declare dso_local i32 @NISTC_AI_OUT_CTRL_SC_TC_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
