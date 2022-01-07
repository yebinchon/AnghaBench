; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_pio_drain_ai_fifo_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.pcidas64_private* }
%struct.comedi_subdevice = type { i32 }
%struct.pcidas64_private = type { i64 }

@ADC_WRITE_PNTR_REG = common dso_local global i64 0, align 8
@ADC_READ_PNTR_REG = common dso_local global i64 0, align 8
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pio_drain_ai_fifo_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_drain_ai_fifo_32(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = load %struct.pcidas64_private*, %struct.pcidas64_private** %12, align 8
  store %struct.pcidas64_private* %13, %struct.pcidas64_private** %3, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %4, align 8
  %17 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %18 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ADC_WRITE_PNTR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readw(i64 %21)
  %23 = and i32 %22, 32767
  store i32 %23, i32* %8, align 4
  %24 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %25 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readw(i64 %28)
  %30 = and i32 %29, 32767
  store i32 %30, i32* %9, align 4
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %31, i32 100000)
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %69, %1
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %77

43:                                               ; preds = %41
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ADC_FIFO_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 65535
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %10, align 2
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %54 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %53, i16* %10, i32 1)
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 65535
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %10, align 2
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %66 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %65, i16* %10, i32 1)
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %60, %43
  %70 = load %struct.pcidas64_private*, %struct.pcidas64_private** %3, align 8
  %71 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ADC_READ_PNTR_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readw(i64 %74)
  %76 = and i32 %75, 32767
  store i32 %76, i32* %9, align 4
  br label %33

77:                                               ; preds = %41
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
