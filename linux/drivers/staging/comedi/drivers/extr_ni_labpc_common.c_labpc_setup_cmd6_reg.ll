; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_setup_cmd6_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_setup_cmd6_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private*, %struct.labpc_boardinfo* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.labpc_boardinfo = type { i32 }
%struct.comedi_subdevice = type { i32 }

@AREF_GROUND = common dso_local global i32 0, align 4
@CMD6_NRSE = common dso_local global i32 0, align 4
@CMD6_ADCUNI = common dso_local global i32 0, align 4
@fifo_half_full_transfer = common dso_local global i32 0, align 4
@CMD6_HFINTEN = common dso_local global i32 0, align 4
@CMD6_DQINTEN = common dso_local global i32 0, align 4
@MODE_MULT_CHAN_UP = common dso_local global i32 0, align 4
@CMD6_SCANUP = common dso_local global i32 0, align 4
@CMD6_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32, i32)* @labpc_setup_cmd6_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_setup_cmd6_reg(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.labpc_boardinfo*, align 8
  %16 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %8, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %18, align 8
  store %struct.labpc_boardinfo* %19, %struct.labpc_boardinfo** %15, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load %struct.labpc_private*, %struct.labpc_private** %21, align 8
  store %struct.labpc_private* %22, %struct.labpc_private** %16, align 8
  %23 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %15, align 8
  %24 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  br label %124

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @AREF_GROUND, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @CMD6_NRSE, align 4
  %34 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %35 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %45

38:                                               ; preds = %28
  %39 = load i32, i32* @CMD6_NRSE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %42 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @CMD6_ADCUNI, align 4
  %52 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %53 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %63

56:                                               ; preds = %45
  %57 = load i32, i32* @CMD6_ADCUNI, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %60 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @fifo_half_full_transfer, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @CMD6_HFINTEN, align 4
  %69 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %70 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %80

73:                                               ; preds = %63
  %74 = load i32, i32* @CMD6_HFINTEN, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %77 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %67
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @CMD6_DQINTEN, align 4
  %85 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %86 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %96

89:                                               ; preds = %80
  %90 = load i32, i32* @CMD6_DQINTEN, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %93 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @MODE_MULT_CHAN_UP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @CMD6_SCANUP, align 4
  %102 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %103 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %113

106:                                              ; preds = %96
  %107 = load i32, i32* @CMD6_SCANUP, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %110 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %115 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %114, i32 0, i32 1
  %116 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %115, align 8
  %117 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %118 = bitcast %struct.comedi_device* %117 to %struct.comedi_device.0*
  %119 = load %struct.labpc_private*, %struct.labpc_private** %16, align 8
  %120 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CMD6_REG, align 4
  %123 = call i32 %116(%struct.comedi_device.0* %118, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %27
  ret void
}

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
