; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_map_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_map_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"couldn't read command register of %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s ioport mapped -- upgrade your hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"no proper device access to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_map_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_map_ha(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_COMMAND, align 4
  %10 = call i32 @pci_read_config_word(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %15 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_name(i32 %16)
  %18 = call i32 @asd_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %56

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %28 = call i32 @asd_map_memio(%struct.asd_ha_struct* %27)
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %56

31:                                               ; preds = %26
  br label %55

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PCI_COMMAND_IO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %39 = call i32 @asd_map_ioport(%struct.asd_ha_struct* %38)
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %56

42:                                               ; preds = %37
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %44 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_name(i32 %45)
  %47 = call i32 @asd_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %50 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pci_name(i32 %51)
  %53 = call i32 @asd_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %56

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %31
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %48, %41, %30, %13
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_map_memio(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_map_ioport(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
