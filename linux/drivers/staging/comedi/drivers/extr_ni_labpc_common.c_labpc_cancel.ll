; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.labpc_private* }
%struct.labpc_private = type { i32, i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_subdevice = type { i32 }

@CMD2_SWTRIG = common dso_local global i32 0, align 4
@CMD2_HWTRIG = common dso_local global i32 0, align 4
@CMD2_PRETRIG = common dso_local global i32 0, align 4
@CMD2_REG = common dso_local global i32 0, align 4
@CMD3_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @labpc_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.labpc_private*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  store %struct.labpc_private* %9, %struct.labpc_private** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @CMD2_SWTRIG, align 4
  %15 = load i32, i32* @CMD2_HWTRIG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CMD2_PRETRIG, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %21 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %25 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %24, i32 0, i32 2
  %26 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %25, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = bitcast %struct.comedi_device* %27 to %struct.comedi_device.0*
  %29 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %30 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CMD2_REG, align 4
  %33 = call i32 %26(%struct.comedi_device.0* %28, i32 %31, i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %39 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %41 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %40, i32 0, i32 2
  %42 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %41, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = bitcast %struct.comedi_device* %43 to %struct.comedi_device.0*
  %45 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %46 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CMD3_REG, align 4
  %49 = call i32 %42(%struct.comedi_device.0* %44, i32 %47, i32 %48)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
