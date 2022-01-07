; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_inttrig_scan_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_inttrig_scan_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private* }
%struct.pci230_private = type { i32, i32, i64, i32 }
%struct.comedi_subdevice = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI230P2_DACSWTRIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pci230_ao_inttrig_scan_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_inttrig_scan_begin(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci230_private*, align 8
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pci230_private*, %struct.pci230_private** %11, align 8
  store %struct.pci230_private* %12, %struct.pci230_private** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %20 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %24 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %29 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %28, i32 0, i32 1
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  store i32 1, i32* %4, align 4
  br label %61

32:                                               ; preds = %18
  %33 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %34 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %39 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %44 = call i32 @pci230_handle_ao_nofifo(%struct.comedi_device* %42, %struct.comedi_subdevice* %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = call i32 @comedi_handle_events(%struct.comedi_device* %45, %struct.comedi_subdevice* %46)
  br label %59

48:                                               ; preds = %32
  %49 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %50 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI230P2_DACSWTRIG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inw(i64 %53)
  %55 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %56 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %55, i32 0, i32 1
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %48, %37
  %60 = call i32 @udelay(i32 8)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %27, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_handle_ao_nofifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
