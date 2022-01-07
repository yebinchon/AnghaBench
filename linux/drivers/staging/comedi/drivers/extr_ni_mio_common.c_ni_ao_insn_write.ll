; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64, i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@NI671X_AO_IMMEDIATE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.ni_private*, %struct.ni_private** %16, align 8
  store %struct.ni_private* %17, %struct.ni_private** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_RANGE(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %27 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @NI671X_AO_IMMEDIATE_REG, align 4
  %35 = call i32 @ni_ao_win_outw(%struct.comedi_device* %31, i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @NI671X_DAC_DIRECT_DATA_REG(i32 %36)
  store i32 %37, i32* %12, align 4
  br label %50

38:                                               ; preds = %4
  %39 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %40 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @NI_M_DAC_DIRECT_DATA_REG(i32 %44)
  store i32 %45, i32* %12, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @NI_E_DAC_DIRECT_DATA_REG(i32 %47)
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %53, i32 0, i32 1
  %55 = call i32 @ni_ao_config_chanlist(%struct.comedi_device* %51, %struct.comedi_subdevice* %52, i32* %54, i32 1, i32 0)
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %113, %50
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %116

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %76 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %62
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @ni_ao_win_outw(%struct.comedi_device* %83, i32 %84, i32 %85)
  br label %112

87:                                               ; preds = %62
  %88 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %89 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ni_writew(%struct.comedi_device* %93, i32 %94, i32 %95)
  br label %111

97:                                               ; preds = %87
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %103, i32 %104)
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @ni_writew(%struct.comedi_device* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %92
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %56

116:                                              ; preds = %56
  %117 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  ret i32 %119
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @ni_ao_win_outw(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NI671X_DAC_DIRECT_DATA_REG(i32) #1

declare dso_local i32 @NI_M_DAC_DIRECT_DATA_REG(i32) #1

declare dso_local i32 @NI_E_DAC_DIRECT_DATA_REG(i32) #1

declare dso_local i32 @ni_ao_config_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
