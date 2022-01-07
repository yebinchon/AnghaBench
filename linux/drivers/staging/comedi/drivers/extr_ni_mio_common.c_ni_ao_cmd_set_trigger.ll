; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32 }
%struct.comedi_cmd = type { i64, i64, i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@NISTC_AO_MODE1_CONTINUOUS = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_TRIGGER_ONCE = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_REG = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@NISTC_AO_TRIG_START1_EDGE = common dso_local global i32 0, align 4
@NISTC_AO_TRIG_START1_SYNC = common dso_local global i32 0, align 4
@NI_AO_StartTrigger = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@NISTC_AO_TRIG_START1_POLARITY = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@NISTC_AO_TRIG_SEL_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_TRIG_LEN = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @ni_ao_cmd_set_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_trigger(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
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
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TRIG_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @NISTC_AO_MODE1_CONTINUOUS, align 4
  %21 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %22 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @NISTC_AO_MODE1_TRIGGER_ONCE, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* @NISTC_AO_MODE1_CONTINUOUS, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %35 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @NISTC_AO_MODE1_TRIGGER_ONCE, align 4
  %39 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %40 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %31, %19
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NISTC_AO_MODE1_REG, align 4
  %49 = call i32 @ni_stc_writew(%struct.comedi_device* %44, i32 %47, i32 %48)
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TRIG_INT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @NISTC_AO_TRIG_START1_EDGE, align 4
  %57 = load i32, i32* @NISTC_AO_TRIG_START1_SYNC, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %6, align 4
  br label %91

59:                                               ; preds = %43
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @CR_CHAN(i32 %62)
  %64 = load i32, i32* @NI_AO_StartTrigger, align 4
  %65 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %66 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %65, i32 0, i32 2
  %67 = call i32 @ni_get_reg_value_roffs(i32 %63, i32 %64, i32* %66, i32 1)
  %68 = call i32 @NISTC_AO_TRIG_START1_SEL(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CR_INVERT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %59
  %76 = load i32, i32* @NISTC_AO_TRIG_START1_POLARITY, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CR_EDGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @NISTC_AO_TRIG_START1_EDGE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NISTC_AO_TRIG_SEL_REG, align 4
  %95 = call i32 @ni_stc_writew(%struct.comedi_device* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @NISTC_AO_MODE3_TRIG_LEN, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %99 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %103 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %104 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NISTC_AO_MODE3_REG, align 4
  %107 = call i32 @ni_stc_writew(%struct.comedi_device* %102, i32 %105, i32 %106)
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %110 = load i32, i32* @NISTC_RESET_REG, align 4
  %111 = call i32 @ni_stc_writew(%struct.comedi_device* %108, i32 %109, i32 %110)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AO_TRIG_START1_SEL(i32) #1

declare dso_local i32 @ni_get_reg_value_roffs(i32, i32, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
