; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_inttrig_scan_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_inttrig_scan_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GAT_GND = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@GAT_VCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pci230_ai_inttrig_scan_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_inttrig_scan_begin(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci230_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
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
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %21 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %25 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load i32, i32* @GAT_GND, align 4
  %30 = call zeroext i8 @pci230_gat_config(i32 0, i32 %29)
  store i8 %30, i8* %10, align 1
  %31 = load i8, i8* %10, align 1
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i8 zeroext %31, i64 %36)
  %38 = load i32, i32* @GAT_VCC, align 4
  %39 = call zeroext i8 @pci230_gat_config(i32 0, i32 %38)
  store i8 %39, i8* %10, align 1
  %40 = load i8, i8* %10, align 1
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i8 zeroext %40, i64 %45)
  br label %47

47:                                               ; preds = %28, %19
  %48 = load %struct.pci230_private*, %struct.pci230_private** %8, align 8
  %49 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @pci230_gat_config(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
