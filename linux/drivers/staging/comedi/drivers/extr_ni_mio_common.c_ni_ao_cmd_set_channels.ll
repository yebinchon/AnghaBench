; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32* }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NI611X_AO_WAVEFORM_GEN_REG = common dso_local global i32 0, align 4
@NI611X_AO_TIMED_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_MULTI_CHAN = common dso_local global i32 0, align 4
@NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ = common dso_local global i32 0, align 4
@NISTC_AO_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AO_OUT_CTRL_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_cmd_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_channels(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  store %struct.ni_private* %12, %struct.ni_private** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %19 = load i32, i32* @NISTC_RESET_REG, align 4
  %20 = call i32 @ni_stc_writew(%struct.comedi_device* %17, i32 %18, i32 %19)
  %21 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %22 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_CHAN(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @NI611X_AO_WAVEFORM_GEN_REG, align 4
  %48 = call i32 @ni_ao_win_outw(%struct.comedi_device* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NI611X_AO_TIMED_REG, align 4
  %56 = call i32 @ni_ao_win_outw(%struct.comedi_device* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %2
  %58 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ni_ao_config_chanlist(%struct.comedi_device* %58, %struct.comedi_subdevice* %59, i32* %62, i32 %65, i32 1)
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %84

71:                                               ; preds = %57
  %72 = load i32, i32* @NISTC_AO_MODE1_MULTI_CHAN, align 4
  %73 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %74 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @NISTC_AO_OUT_CTRL_CHANS(i32 %80)
  %82 = load i32, i32* @NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %115

84:                                               ; preds = %57
  %85 = load i32, i32* @NISTC_AO_MODE1_MULTI_CHAN, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %88 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ, align 4
  store i32 %91, i32* %7, align 4
  %92 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %93 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %96 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %84
  %101 = call i32 @NISTC_AO_OUT_CTRL_CHANS(i32 0)
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %114

104:                                              ; preds = %84
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CR_CHAN(i32 %109)
  %111 = call i32 @NISTC_AO_OUT_CTRL_CHANS(i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %104, %100
  br label %115

115:                                              ; preds = %114, %71
  %116 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %117 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %118 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NISTC_AO_MODE1_REG, align 4
  %121 = call i32 @ni_stc_writew(%struct.comedi_device* %116, i32 %119, i32 %120)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @NISTC_AO_OUT_CTRL_REG, align 4
  %125 = call i32 @ni_stc_writew(%struct.comedi_device* %122, i32 %123, i32 %124)
  %126 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %127 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %128 = load i32, i32* @NISTC_RESET_REG, align 4
  %129 = call i32 @ni_stc_writew(%struct.comedi_device* %126, i32 %127, i32 %128)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_ao_win_outw(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_ao_config_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @NISTC_AO_OUT_CTRL_CHANS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
