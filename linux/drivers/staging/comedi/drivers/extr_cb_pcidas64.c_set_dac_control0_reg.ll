; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_control0_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_dac_control0_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }
%struct.comedi_cmd = type { i64, i32, i64, i32 }

@DAC_ENABLE_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_ENABLE_BIT = common dso_local global i32 0, align 4
@WAVEFORM_GATE_SELECT_BIT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@WAVEFORM_TRIG_EXT_BITS = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@WAVEFORM_TRIG_FALLING_BIT = common dso_local global i32 0, align 4
@WAVEFORM_TRIG_SOFT_BITS = common dso_local global i32 0, align 4
@DAC_EXT_UPDATE_ENABLE_BIT = common dso_local global i32 0, align 4
@DAC_EXT_UPDATE_FALLING_BIT = common dso_local global i32 0, align 4
@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @set_dac_control0_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dac_control0_reg(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  store %struct.pcidas64_private* %9, %struct.pcidas64_private** %5, align 8
  %10 = load i32, i32* @DAC_ENABLE_BIT, align 4
  %11 = load i32, i32* @WAVEFORM_GATE_LEVEL_BIT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAVEFORM_GATE_ENABLE_BIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAVEFORM_GATE_SELECT_BIT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRIG_EXT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @WAVEFORM_TRIG_EXT_BITS, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CR_INVERT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @WAVEFORM_TRIG_FALLING_BIT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %22
  br label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @WAVEFORM_TRIG_SOFT_BITS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRIG_EXT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i32, i32* @DAC_EXT_UPDATE_ENABLE_BIT, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CR_INVERT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @DAC_EXT_UPDATE_FALLING_BIT, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writew(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
