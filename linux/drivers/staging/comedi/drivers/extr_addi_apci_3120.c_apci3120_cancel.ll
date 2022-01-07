; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i64, i64, i64, i64, i64 }
%struct.comedi_subdevice = type { i32 }

@AMCC_OP_REG_AGCSTS = common dso_local global i32 0, align 4
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@APCI3120_CTRL_REG = common dso_local global i64 0, align 8
@APCI3120_MODE_REG = common dso_local global i64 0, align 8
@APCI3120_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  store %struct.apci3120_private* %8, %struct.apci3120_private** %5, align 8
  %9 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %10 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @outw(i64 0, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load i32, i32* @AMCC_OP_REG_AGCSTS, align 4
  %16 = call i32 @apci3120_addon_write(%struct.comedi_device* %14, i32 0, i32 %15)
  %17 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %18 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 0, i64 %21)
  %23 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %24 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %26 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI3120_CTRL_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i64 %27, i64 %32)
  %34 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %35 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %37 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @APCI3120_MODE_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i64 %38, i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @APCI3120_STATUS_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inw(i64 %49)
  %51 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %52 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret i32 0
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @apci3120_addon_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
