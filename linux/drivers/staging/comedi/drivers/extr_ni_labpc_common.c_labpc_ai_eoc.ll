; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_eoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@STAT1_REG = common dso_local global i32 0, align 4
@STAT1_DAVAIL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @labpc_ai_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_eoc(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  store %struct.labpc_private* %13, %struct.labpc_private** %10, align 8
  %14 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %15 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %14, i32 0, i32 1
  %16 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %15, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = bitcast %struct.comedi_device* %17 to %struct.comedi_device.0*
  %19 = load i32, i32* @STAT1_REG, align 4
  %20 = call i32 %16(%struct.comedi_device.0* %18, i32 %19)
  %21 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %22 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %24 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STAT1_DAVAIL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
