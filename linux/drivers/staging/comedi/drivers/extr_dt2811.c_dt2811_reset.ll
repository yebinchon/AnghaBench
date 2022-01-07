; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DT2811_ADCSR_REG = common dso_local global i64 0, align 8
@DT2811_ADDATA_LO_REG = common dso_local global i64 0, align 8
@DT2811_ADDATA_HI_REG = common dso_local global i64 0, align 8
@DT2811_ADCSR_CLRERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @dt2811_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt2811_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @DT2811_ADCSR_ADMODE(i32 0)
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DT2811_ADCSR_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 %3, i64 %8)
  %10 = call i32 @usleep_range(i32 100, i32 1000)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DT2811_ADDATA_LO_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT2811_ADDATA_HI_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  %23 = call i32 @DT2811_ADCSR_ADMODE(i32 0)
  %24 = load i32, i32* @DT2811_ADCSR_CLRERROR, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT2811_ADCSR_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DT2811_ADCSR_ADMODE(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
