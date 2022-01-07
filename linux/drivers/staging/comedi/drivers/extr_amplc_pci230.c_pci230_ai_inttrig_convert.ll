; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_inttrig_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_inttrig_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci230_private* }
%struct.pci230_private = type { i32, i64, i32, i32 }
%struct.comedi_subdevice = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_MODE1 = common dso_local global i32 0, align 4
@PCI230_ADC_IM_MASK = common dso_local global i32 0, align 4
@PCI230_ADC_IM_DIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pci230_ai_inttrig_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_inttrig_convert(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci230_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pci230_private*, %struct.pci230_private** %12, align 8
  store %struct.pci230_private* %13, %struct.pci230_private** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %21 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %20, i32 0, i32 2
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %25 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %30 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %29, i32 0, i32 2
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 1, i32* %4, align 4
  br label %65

33:                                               ; preds = %19
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I8254_MODE0, align 4
  %38 = call i32 @comedi_8254_set_mode(i32 %36, i32 2, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I8254_MODE1, align 4
  %43 = call i32 @comedi_8254_set_mode(i32 %41, i32 2, i32 %42)
  %44 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %45 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI230_ADC_IM_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @PCI230_ADC_IM_DIF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %33
  %52 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %53 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 8, i32* %10, align 4
  br label %58

57:                                               ; preds = %51, %33
  store i32 4, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %60 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %59, i32 0, i32 2
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @udelay(i32 %63)
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %28, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
