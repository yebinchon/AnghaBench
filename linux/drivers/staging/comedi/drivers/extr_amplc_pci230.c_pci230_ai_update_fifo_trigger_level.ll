; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_update_fifo_trigger_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_update_fifo_trigger_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private* }
%struct.pci230_private = type { i64, i32, i16, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@PCI230_ADC_FIFOLEVEL_HALFFULL = common dso_local global i32 0, align 4
@PCI230_ADC_INT_FIFO_HALF = common dso_local global i16 0, align 2
@PCI230P_ADCFFTH = common dso_local global i64 0, align 8
@PCI230P_ADC_INT_FIFO_THRESH = common dso_local global i16 0, align 2
@PCI230_ADC_INT_FIFO_NEMPTY = common dso_local global i16 0, align 2
@PCI230_ADC_INT_FIFO_MASK = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_update_fifo_trigger_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pci230_private*, %struct.pci230_private** %11, align 8
  store %struct.pci230_private* %12, %struct.pci230_private** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %6, align 8
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %26, %31
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %35 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %36 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i16, i16* @PCI230_ADC_INT_FIFO_HALF, align 2
  store i16 %42, i16* %8, align 2
  br label %74

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %48 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %53 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %60 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = trunc i32 %61 to i16
  %63 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %64 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI230P_ADCFFTH, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outw(i16 zeroext %62, i64 %67)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load i16, i16* @PCI230P_ADC_INT_FIFO_THRESH, align 2
  store i16 %70, i16* %8, align 2
  br label %73

71:                                               ; preds = %46, %43
  %72 = load i16, i16* @PCI230_ADC_INT_FIFO_NEMPTY, align 2
  store i16 %72, i16* %8, align 2
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %76 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %75, i32 0, i32 2
  %77 = load i16, i16* %76, align 4
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @PCI230_ADC_INT_FIFO_MASK, align 2
  %80 = zext i16 %79 to i32
  %81 = xor i32 %80, -1
  %82 = and i32 %78, %81
  %83 = load i16, i16* %8, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %82, %84
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %9, align 2
  %87 = load i16, i16* %9, align 2
  %88 = zext i16 %87 to i32
  %89 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %90 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %89, i32 0, i32 2
  %91 = load i16, i16* %90, align 4
  %92 = zext i16 %91 to i32
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %74
  %95 = load i16, i16* %9, align 2
  %96 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %97 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %96, i32 0, i32 2
  store i16 %95, i16* %97, align 4
  %98 = load i16, i16* %9, align 2
  %99 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %100 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PCI230_ADCCON, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outw(i16 zeroext %98, i64 %103)
  br label %105

105:                                              ; preds = %94, %74
  ret void
}

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
