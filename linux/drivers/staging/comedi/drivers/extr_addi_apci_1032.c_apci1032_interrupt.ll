; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1032.c_apci1032_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1032.c_apci1032_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.apci1032_private* }
%struct.comedi_subdevice = type { i32 }
%struct.apci1032_private = type { i64 }

@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@INTCSR_INTR_ASSERTED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@APCI1032_CTRL_REG = common dso_local global i64 0, align 8
@APCI1032_CTRL_INT_ENA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@APCI1032_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apci1032_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1032_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.apci1032_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.apci1032_private*, %struct.apci1032_private** %13, align 8
  store %struct.apci1032_private* %14, %struct.apci1032_private** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %8, align 8
  %18 = load %struct.apci1032_private*, %struct.apci1032_private** %7, align 8
  %19 = getelementptr inbounds %struct.apci1032_private, %struct.apci1032_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inl(i64 %22)
  %24 = load i32, i32* @INTCSR_INTR_ASSERTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @APCI1032_CTRL_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inl(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @APCI1032_CTRL_INT_ENA, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @APCI1032_CTRL_INT_ENA, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @APCI1032_CTRL_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outl(i32 %46, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @APCI1032_STATUS_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inl(i64 %57)
  %59 = and i32 %58, 65535
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %62, i32* %64, i32 1)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %68 = call i32 @comedi_handle_events(%struct.comedi_device* %66, %struct.comedi_subdevice* %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @APCI1032_CTRL_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outl(i32 %69, i64 %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %42, %40, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
