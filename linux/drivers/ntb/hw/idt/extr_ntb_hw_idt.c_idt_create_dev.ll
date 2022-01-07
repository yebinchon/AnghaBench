; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_create_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_create_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.idt_89hpes_cfg*, i32, i32, i32, %struct.TYPE_2__ }
%struct.idt_89hpes_cfg = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failed for descriptor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"IDT %s discovered\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"NTB device descriptor created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idt_ntb_dev* (%struct.pci_dev*, %struct.pci_device_id*)* @idt_create_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idt_ntb_dev* @idt_create_dev(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.idt_ntb_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.idt_ntb_dev* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.idt_ntb_dev* %10, %struct.idt_ntb_dev** %6, align 8
  %11 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %12 = icmp ne %struct.idt_ntb_dev* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.idt_ntb_dev* @ERR_PTR(i32 %18)
  store %struct.idt_ntb_dev* %19, %struct.idt_ntb_dev** %3, align 8
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.idt_89hpes_cfg*
  %25 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %26 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %25, i32 0, i32 0
  store %struct.idt_89hpes_cfg* %24, %struct.idt_89hpes_cfg** %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %29 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.pci_dev* %27, %struct.pci_dev** %30, align 8
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %32 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %35 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %38 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %43 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %42, i32 0, i32 0
  %44 = load %struct.idt_89hpes_cfg*, %struct.idt_89hpes_cfg** %43, align 8
  %45 = getelementptr inbounds %struct.idt_89hpes_cfg, %struct.idt_89hpes_cfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  store %struct.idt_ntb_dev* %51, %struct.idt_ntb_dev** %3, align 8
  br label %52

52:                                               ; preds = %20, %13
  %53 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  ret %struct.idt_ntb_dev* %53
}

declare dso_local %struct.idt_ntb_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.idt_ntb_dev* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
