; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.apci1500_private* }
%struct.comedi_subdevice = type { i32 }
%struct.apci1500_private = type { i64 }

@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@INTCSR_INTR_ASSERTED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@Z8536_PA_CMDSTAT_REG = common dso_local global i32 0, align 4
@Z8536_PB_CMDSTAT_REG = common dso_local global i32 0, align 4
@APCI1500_Z8536_PORTB_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apci1500_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1500_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.apci1500_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.apci1500_private*, %struct.apci1500_private** %14, align 8
  store %struct.apci1500_private* %15, %struct.apci1500_private** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.apci1500_private*, %struct.apci1500_private** %7, align 8
  %20 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inl(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @INTCSR_INTR_ASSERTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load i32, i32* @Z8536_PA_CMDSTAT_REG, align 4
  %34 = call i64 @apci1500_ack_irq(%struct.comedi_device* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = load i32, i32* @Z8536_PB_CMDSTAT_REG, align 4
  %42 = call i64 @apci1500_ack_irq(%struct.comedi_device* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @APCI1500_Z8536_PORTB_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 192
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 64
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 64
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, 128
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %73

70:                                               ; preds = %44
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, 2
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %76 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %75, i32* %9, i32 1)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %79 = call i32 @comedi_handle_events(%struct.comedi_device* %77, %struct.comedi_subdevice* %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @inl(i64) #1

declare dso_local i64 @apci1500_ack_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
