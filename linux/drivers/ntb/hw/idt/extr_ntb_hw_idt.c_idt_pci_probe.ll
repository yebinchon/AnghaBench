; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.idt_ntb_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"IDT NTB device is ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @idt_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.idt_ntb_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @idt_check_setup(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %17 = call %struct.idt_ntb_dev* @idt_create_dev(%struct.pci_dev* %15, %struct.pci_device_id* %16)
  store %struct.idt_ntb_dev* %17, %struct.idt_ntb_dev** %6, align 8
  %18 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.idt_ntb_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.idt_ntb_dev* %22)
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %14
  %25 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %26 = call i32 @idt_init_pci(%struct.idt_ntb_dev* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %24
  %32 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %33 = call i32 @idt_scan_ports(%struct.idt_ntb_dev* %32)
  %34 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %35 = call i32 @idt_init_link(%struct.idt_ntb_dev* %34)
  %36 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %37 = call i32 @idt_init_mws(%struct.idt_ntb_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %66

41:                                               ; preds = %31
  %42 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %43 = call i32 @idt_init_msg(%struct.idt_ntb_dev* %42)
  %44 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %45 = call i32 @idt_init_temp(%struct.idt_ntb_dev* %44)
  %46 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %47 = call i32 @idt_init_isr(%struct.idt_ntb_dev* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %66

51:                                               ; preds = %41
  %52 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %53 = call i32 @idt_register_device(%struct.idt_ntb_dev* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %63

57:                                               ; preds = %51
  %58 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %59 = call i32 @idt_init_dbgfs(%struct.idt_ntb_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %65 = call i32 @idt_deinit_isr(%struct.idt_ntb_dev* %64)
  br label %66

66:                                               ; preds = %63, %50, %40
  %67 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %68 = call i32 @idt_deinit_link(%struct.idt_ntb_dev* %67)
  %69 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %6, align 8
  %70 = call i32 @idt_deinit_pci(%struct.idt_ntb_dev* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %57, %29, %21, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @idt_check_setup(%struct.pci_dev*) #1

declare dso_local %struct.idt_ntb_dev* @idt_create_dev(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.idt_ntb_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_pci(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_scan_ports(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_link(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_mws(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_msg(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_temp(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_isr(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_register_device(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_init_dbgfs(%struct.idt_ntb_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @idt_deinit_isr(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_deinit_link(%struct.idt_ntb_dev*) #1

declare dso_local i32 @idt_deinit_pci(%struct.idt_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
