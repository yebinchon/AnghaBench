; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i32, i64 }
%struct.comedi_subdevice = type { i32 }

@PCIDAS_CTRL_DAHFIE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAEMIE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_DACEN = common dso_local global i32 0, align 4
@PCIDAS_AO_PACER_MASK = common dso_local global i32 0, align 4
@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @cb_pcidas_ao_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.cb_pcidas_private*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %8, align 8
  store %struct.cb_pcidas_private* %9, %struct.cb_pcidas_private** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @PCIDAS_CTRL_DAHFIE, align 4
  %15 = load i32, i32* @PCIDAS_CTRL_DAEMIE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %19 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %23 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %26 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outw(i32 %24, i64 %29)
  %31 = load i32, i32* @PCIDAS_AO_DACEN, align 4
  %32 = load i32, i32* @PCIDAS_AO_PACER_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %36 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %40 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %43 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIDAS_AO_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i32 %41, i64 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
