; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32, i32, i32 }
%struct.comedi_cmd = type { i64, i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_UI_SRC_MASK = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_UI_SRC_POLARITY = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_UPDATE_SRC_MASK = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_UPDATE_SRC_POLARITY = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@NISTC_AO_CMD2_BC_GATE_ENA = common dso_local global i32 0, align 4
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@NISTC_AO_UI_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_UI_LOAD = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_REG = common dso_local global i32 0, align 4
@NI_AO_SampleClock = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@NISTC_AO_CMD2_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_UI_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_DAC1_UPDATE_MODE = common dso_local global i32 0, align 4
@NISTC_AO_CMD1_DAC0_UPDATE_MODE = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @ni_ao_cmd_set_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_update(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  store %struct.ni_private* %9, %struct.ni_private** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %12 = load i32, i32* @NISTC_RESET_REG, align 4
  %13 = call i32 @ni_stc_writew(%struct.comedi_device* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @NISTC_AO_MODE1_UI_SRC_MASK, align 4
  %15 = load i32, i32* @NISTC_AO_MODE1_UI_SRC_POLARITY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NISTC_AO_MODE1_UPDATE_SRC_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NISTC_AO_MODE1_UPDATE_SRC_POLARITY, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %23 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRIG_TIMER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %2
  %32 = load i32, i32* @NISTC_AO_CMD2_BC_GATE_ENA, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %35 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %43 = call i32 @ni_ns_to_timer(%struct.comedi_device* %38, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load i32, i32* @NISTC_AO_UI_LOADA_REG, align 4
  %46 = call i32 @ni_stc_writel(%struct.comedi_device* %44, i32 1, i32 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = load i32, i32* @NISTC_AO_CMD1_UI_LOAD, align 4
  %49 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %50 = call i32 @ni_stc_writew(%struct.comedi_device* %47, i32 %48, i32 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NISTC_AO_UI_LOADA_REG, align 4
  %54 = call i32 @ni_stc_writel(%struct.comedi_device* %51, i32 %52, i32 %53)
  br label %87

55:                                               ; preds = %2
  %56 = load i32, i32* @NISTC_AO_CMD2_BC_GATE_ENA, align 4
  %57 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %58 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @CR_CHAN(i32 %63)
  %65 = load i32, i32* @NI_AO_SampleClock, align 4
  %66 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %67 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %66, i32 0, i32 4
  %68 = call i32 @ni_get_reg_value(i32 %64, i32 %65, i32* %67)
  %69 = call i32 @NISTC_AO_MODE1_UPDATE_SRC(i32 %68)
  %70 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %71 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CR_INVERT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %55
  %81 = load i32, i32* @NISTC_AO_MODE1_UPDATE_SRC_POLARITY, align 4
  %82 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %83 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %55
  br label %87

87:                                               ; preds = %86, %31
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %90 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NISTC_AO_CMD2_REG, align 4
  %93 = call i32 @ni_stc_writew(%struct.comedi_device* %88, i32 %91, i32 %92)
  %94 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %95 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %96 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NISTC_AO_MODE1_REG, align 4
  %99 = call i32 @ni_stc_writew(%struct.comedi_device* %94, i32 %97, i32 %98)
  %100 = call i32 @NISTC_AO_MODE2_UI_RELOAD_MODE(i32 3)
  %101 = load i32, i32* @NISTC_AO_MODE2_UI_INIT_LOAD_SRC, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %105 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %110 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NISTC_AO_MODE2_REG, align 4
  %113 = call i32 @ni_stc_writew(%struct.comedi_device* %108, i32 %111, i32 %112)
  %114 = load i32, i32* @NISTC_AO_CMD1_DAC1_UPDATE_MODE, align 4
  %115 = load i32, i32* @NISTC_AO_CMD1_DAC0_UPDATE_MODE, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %118 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %122 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %123 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %126 = call i32 @ni_stc_writew(%struct.comedi_device* %121, i32 %124, i32 %125)
  %127 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %128 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %129 = load i32, i32* @NISTC_RESET_REG, align 4
  %130 = call i32 @ni_stc_writew(%struct.comedi_device* %127, i32 %128, i32 %129)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AO_MODE1_UPDATE_SRC(i32) #1

declare dso_local i32 @ni_get_reg_value(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NISTC_AO_MODE2_UI_RELOAD_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
