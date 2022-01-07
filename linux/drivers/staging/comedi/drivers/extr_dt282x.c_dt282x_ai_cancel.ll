; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@DT2821_ADCSR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_ADCINIT = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dt282x_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.dt282x_private*, %struct.dt282x_private** %7, align 8
  store %struct.dt282x_private* %8, %struct.dt282x_private** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = call i32 @dt282x_disable_dma(%struct.comedi_device* %9)
  %11 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %12 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %14 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 %15, i64 %20)
  %22 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %23 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %25 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DT2821_SUPCSR_ADCINIT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outw(i32 %28, i64 %33)
  ret i32 0
}

declare dso_local i32 @dt282x_disable_dma(%struct.comedi_device*) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
