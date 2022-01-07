; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.dt282x_private* }
%struct.comedi_subdevice = type { i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dt282x_private = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DT2821_ADCSR_REG = common dso_local global i64 0, align 8
@DT2821_DACSR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_DMAD = common dso_local global i32 0, align 4
@COMEDI_ISADMA_READ = common dso_local global i64 0, align 8
@DT2821_ADCSR_ADERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"A/D error\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@DT2821_DACSR_DAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"D/A error\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DT2821_ADCSR_ADDONE = common dso_local global i32 0, align 4
@DT2821_ADDAT_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_SCDN = common dso_local global i32 0, align 4
@DT2821_SUPCSR_STRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dt282x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.dt282x_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 5
  %18 = load %struct.dt282x_private*, %struct.dt282x_private** %17, align 8
  store %struct.dt282x_private* %18, %struct.dt282x_private** %7, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  store %struct.comedi_subdevice* %21, %struct.comedi_subdevice** %8, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 3
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  store %struct.comedi_subdevice* %24, %struct.comedi_subdevice** %9, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %129

35:                                               ; preds = %2
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i8* @inw(i64 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DT2821_DACSR_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @inw(i64 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i8* @inw(i64 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DT2821_SUPCSR_DMAD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %35
  %62 = load %struct.dt282x_private*, %struct.dt282x_private** %7, align 8
  %63 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @COMEDI_ISADMA_READ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %70 = call i32 @dt282x_ai_dma_interrupt(%struct.comedi_device* %68, %struct.comedi_subdevice* %69)
  br label %75

71:                                               ; preds = %61
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %74 = call i32 @dt282x_ao_dma_interrupt(%struct.comedi_device* %72, %struct.comedi_subdevice* %73)
  br label %75

75:                                               ; preds = %71, %67
  store i32 1, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %35
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @DT2821_ADCSR_ADERR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.dt282x_private*, %struct.dt282x_private** %7, align 8
  %83 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %86, %81
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @DT2821_DACSR_DAERR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  store i32 1, i32* %13, align 4
  br label %116

116:                                              ; preds = %104, %99
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %119 = call i32 @comedi_handle_events(%struct.comedi_device* %117, %struct.comedi_subdevice* %118)
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %121 = icmp ne %struct.comedi_subdevice* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %125 = call i32 @comedi_handle_events(%struct.comedi_device* %123, %struct.comedi_subdevice* %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @IRQ_RETVAL(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %29
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @inw(i64) #1

declare dso_local i32 @dt282x_ai_dma_interrupt(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @dt282x_ao_dma_interrupt(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
