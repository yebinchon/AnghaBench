; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.comedi_subdevice = type { i32 }

@NISTC_RESET_AO = common dso_local global i64 0, align 8
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_START = common dso_local global i64 0, align 8
@NISTC_AO_CMD1_DISARM = common dso_local global i64 0, align 8
@NISTC_AO_CMD1_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_LAST_GATE_DISABLE = common dso_local global i64 0, align 8
@NISTC_AO_PERSONAL_REG = common dso_local global i32 0, align 4
@NISTC_AO_CMD2_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AO_OUT_CTRL_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_REG = common dso_local global i32 0, align 4
@NISTC_AO_START_SEL_REG = common dso_local global i32 0, align 4
@NISTC_AO_TRIG_SEL_REG = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_REG = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_BC_SRC_SEL = common dso_local global i64 0, align 8
@NISTC_INTB_ACK_AO_ALL = common dso_local global i64 0, align 8
@NISTC_INTB_ACK_REG = common dso_local global i32 0, align 4
@NI671X_AO_IMMEDIATE_REG = common dso_local global i32 0, align 4
@NI611X_AO_MISC_CLEAR_WG = common dso_local global i32 0, align 4
@NI611X_AO_MISC_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_reset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  store %struct.ni_private* %8, %struct.ni_private** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = call i32 @ni_release_ao_mite_channel(%struct.comedi_device* %9)
  %11 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %12 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = load i64, i64* @NISTC_RESET_AO, align 8
  %18 = load i32, i32* @NISTC_RESET_REG, align 4
  %19 = call i32 @ni_stc_writew(%struct.comedi_device* %16, i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = load i64, i64* @NISTC_RESET_AO_CFG_START, align 8
  %23 = load i32, i32* @NISTC_RESET_REG, align 4
  %24 = call i32 @ni_stc_writew(%struct.comedi_device* %21, i64 %22, i32 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = load i64, i64* @NISTC_AO_CMD1_DISARM, align 8
  %27 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %28 = call i32 @ni_stc_writew(%struct.comedi_device* %25, i64 %26, i32 %27)
  %29 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %32 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %34 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %36 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %38 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i64, i64* @NISTC_AO_MODE3_LAST_GATE_DISABLE, align 8
  %43 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %44 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %48

45:                                               ; preds = %20
  %46 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %47 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load i32, i32* @NISTC_AO_PERSONAL_REG, align 4
  %51 = call i32 @ni_stc_writew(%struct.comedi_device* %49, i64 0, i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = load i32, i32* @NISTC_AO_CMD1_REG, align 4
  %54 = call i32 @ni_stc_writew(%struct.comedi_device* %52, i64 0, i32 %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = load i32, i32* @NISTC_AO_CMD2_REG, align 4
  %57 = call i32 @ni_stc_writew(%struct.comedi_device* %55, i64 0, i32 %56)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %59 = load i32, i32* @NISTC_AO_MODE1_REG, align 4
  %60 = call i32 @ni_stc_writew(%struct.comedi_device* %58, i64 0, i32 %59)
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = load i32, i32* @NISTC_AO_MODE2_REG, align 4
  %63 = call i32 @ni_stc_writew(%struct.comedi_device* %61, i64 0, i32 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = load i32, i32* @NISTC_AO_OUT_CTRL_REG, align 4
  %66 = call i32 @ni_stc_writew(%struct.comedi_device* %64, i64 0, i32 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %69 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @NISTC_AO_MODE3_REG, align 4
  %72 = call i32 @ni_stc_writew(%struct.comedi_device* %67, i64 %70, i32 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = load i32, i32* @NISTC_AO_START_SEL_REG, align 4
  %75 = call i32 @ni_stc_writew(%struct.comedi_device* %73, i64 0, i32 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = load i32, i32* @NISTC_AO_TRIG_SEL_REG, align 4
  %78 = call i32 @ni_stc_writew(%struct.comedi_device* %76, i64 0, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load i32, i32* @NISTC_INTB_ENA_REG, align 4
  %81 = call i32 @ni_set_bits(%struct.comedi_device* %79, i32 %80, i32 -1, i32 0)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = load i64, i64* @NISTC_AO_PERSONAL_BC_SRC_SEL, align 8
  %84 = load i32, i32* @NISTC_AO_PERSONAL_REG, align 4
  %85 = call i32 @ni_stc_writew(%struct.comedi_device* %82, i64 %83, i32 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = load i64, i64* @NISTC_INTB_ACK_AO_ALL, align 8
  %88 = load i32, i32* @NISTC_INTB_ACK_REG, align 4
  %89 = call i32 @ni_stc_writew(%struct.comedi_device* %86, i64 %87, i32 %88)
  %90 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %91 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %48
  %95 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 1, %98
  %100 = sub i32 %99, 1
  %101 = load i32, i32* @NI671X_AO_IMMEDIATE_REG, align 4
  %102 = call i32 @ni_ao_win_outw(%struct.comedi_device* %95, i32 %100, i32 %101)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = load i32, i32* @NI611X_AO_MISC_CLEAR_WG, align 4
  %105 = load i32, i32* @NI611X_AO_MISC_REG, align 4
  %106 = call i32 @ni_ao_win_outw(%struct.comedi_device* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %94, %48
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = load i64, i64* @NISTC_RESET_AO_CFG_END, align 8
  %110 = load i32, i32* @NISTC_RESET_REG, align 4
  %111 = call i32 @ni_stc_writew(%struct.comedi_device* %108, i64 %109, i32 %110)
  ret i32 0
}

declare dso_local i32 @ni_release_ao_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_ao_win_outw(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
