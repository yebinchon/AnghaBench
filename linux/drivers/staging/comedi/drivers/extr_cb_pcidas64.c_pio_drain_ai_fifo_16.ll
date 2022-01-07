; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.pcidas64_private* }
%struct.comedi_subdevice = type { i32 }
%struct.pcidas64_private = type { i32, i64 }

@ADC_READ_PNTR_REG = common dso_local global i64 0, align 8
@ADC_WRITE_PNTR_REG = common dso_local global i64 0, align 8
@PREPOST_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"cb_pcidas64: bug! num_samples < 0\0A\00", align 1
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pio_drain_ai_fifo_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_drain_ai_fifo_16(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %3, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %4, align 8
  br label %19

19:                                               ; preds = %91, %1
  %20 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %21 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  %26 = and i32 %25, 32767
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %28 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADC_WRITE_PNTR_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readw(i64 %31)
  %33 = and i32 %32, 32767
  store i32 %33, i32* %10, align 4
  %34 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %35 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PREPOST_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readw(i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @adc_upper_read_ptr_code(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @adc_upper_write_ptr_code(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %19
  %48 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %49 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %57

53:                                               ; preds = %19
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %95

65:                                               ; preds = %57
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %95

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %79 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ADC_FIFO_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readw(i64 %82)
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %12, align 2
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %86 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %85, i16* %12, i32 1)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %73

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %19, label %95

95:                                               ; preds = %91, %71, %60
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @adc_upper_read_ptr_code(i32) #1

declare dso_local i32 @adc_upper_write_ptr_code(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
