; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DT2821_SUPCSR_CLRDMADNE = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ao_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_ao_dma_interrupt(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dt282x_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  store %struct.dt282x_private* %10, %struct.dt282x_private** %5, align 8
  %11 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %12 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %11, i32 0, i32 1
  %13 = load %struct.comedi_isadma*, %struct.comedi_isadma** %12, align 8
  store %struct.comedi_isadma* %13, %struct.comedi_isadma** %6, align 8
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %14, i32 0, i32 1
  %16 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %16, i64 %19
  store %struct.comedi_isadma_desc* %20, %struct.comedi_isadma_desc** %7, align 8
  %21 = load %struct.dt282x_private*, %struct.dt282x_private** %5, align 8
  %22 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DT2821_SUPCSR_CLRDMADNE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 %25, i64 %30)
  %32 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @comedi_isadma_disable(i32 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %38 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dt282x_ao_setup_dma(%struct.comedi_device* %36, %struct.comedi_subdevice* %37, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %2
  %52 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 1, %54
  %56 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @dt282x_ao_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
