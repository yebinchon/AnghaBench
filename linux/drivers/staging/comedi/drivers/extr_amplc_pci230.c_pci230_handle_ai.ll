; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci230_private* }
%struct.pci230_private = type { i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@PCI230_ADC_FIFOLEVEL_HALFFULL = common dso_local global i32 0, align 4
@PCI230_ADCCON = common dso_local global i64 0, align 8
@PCI230_ADC_FIFO_FULL_LATCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AI FIFO overrun\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_EMPTY = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_HALF = common dso_local global i32 0, align 4
@PCI230P_ADCFFLEV = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_handle_ai(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pci230_private*, %struct.pci230_private** %14, align 8
  store %struct.pci230_private* %15, %struct.pci230_private** %5, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %6, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 2
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %7, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %22 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %23 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %134

27:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %120, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %123

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %32
  %36 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %37 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI230_ADCCON, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inw(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCI230_ADC_FIFO_FULL_LATCHED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %52 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %123

56:                                               ; preds = %35
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCI230_ADC_FIFO_EMPTY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %123

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PCI230_ADC_FIFO_HALF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %68, i32* %11, align 4
  br label %87

69:                                               ; preds = %62
  %70 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %71 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %76 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI230P_ADCFFLEV, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inw(i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %123

84:                                               ; preds = %74
  br label %86

85:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %32
  %91 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %92 = call zeroext i16 @pci230_ai_read(%struct.comedi_device* %91)
  store i16 %92, i16* %12, align 2
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %94 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %93, i16* %12, i32 1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %123

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %11, align 4
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TRIG_COUNT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  %106 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @COMEDI_CB_EOA, align 4
  %115 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %116 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %123

119:                                              ; preds = %105, %97
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %28

123:                                              ; preds = %113, %96, %83, %61, %46, %28
  %124 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %132 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %133 = call i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %131, %struct.comedi_subdevice* %132)
  br label %134

134:                                              ; preds = %26, %130, %123
  ret void
}

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local zeroext i16 @pci230_ai_read(%struct.comedi_device*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
