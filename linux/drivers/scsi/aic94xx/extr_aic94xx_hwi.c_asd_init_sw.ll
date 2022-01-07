; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32, %struct.TYPE_2__*, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i8*, i64, i8*, i8* }
%struct.pci_dev = type { i32 }

@PCI_CONF_MBAR_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't access conf. space of %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't write to MBAR_KEY of %s\0A\00", align 1
@PCI_CONF_MBAR0_SWA = common dso_local global i32 0, align 4
@REG_BASE_ADDR = common dso_local global i8* null, align 8
@PCI_CONF_MBAR0_SWB = common dso_local global i32 0, align 4
@REG_BASE_ADDR_CSEQCIO = common dso_local global i8* null, align 8
@PCI_CONF_MBAR0_SWC = common dso_local global i32 0, align 4
@REG_BASE_ADDR_EXSI = common dso_local global i8* null, align 8
@MBAR0_SWB_SIZE = common dso_local global i64 0, align 8
@PCI_CONF_MBAR1 = common dso_local global i32 0, align 4
@OCM_BASE_ADDR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_sw(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @PCI_CONF_MBAR_KEY, align 4
  %11 = call i32 @pci_read_config_dword(%struct.pci_dev* %9, i32 %10, i8** %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_name(%struct.pci_dev* %15)
  %17 = call i32 @asd_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %90

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @PCI_CONF_MBAR_KEY, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @pci_write_config_dword(%struct.pci_dev* %22, i32 %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pci_name(%struct.pci_dev* %30)
  %32 = call i32 @asd_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %90

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* @PCI_CONF_MBAR0_SWA, align 4
  %36 = load i8*, i8** @REG_BASE_ADDR, align 8
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %34, i32 %35, i8* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @PCI_CONF_MBAR0_SWB, align 4
  %40 = load i8*, i8** @REG_BASE_ADDR_CSEQCIO, align 8
  %41 = call i32 @pci_write_config_dword(%struct.pci_dev* %38, i32 %39, i8* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load i32, i32* @PCI_CONF_MBAR0_SWC, align 4
  %44 = load i8*, i8** @REG_BASE_ADDR_EXSI, align 8
  %45 = call i32 @pci_write_config_dword(%struct.pci_dev* %42, i32 %43, i8* %44)
  %46 = load i8*, i8** @REG_BASE_ADDR, align 8
  %47 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %48 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load i8*, i8** @REG_BASE_ADDR_CSEQCIO, align 8
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %54 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i8* %52, i8** %57, align 8
  %58 = load i8*, i8** @REG_BASE_ADDR_EXSI, align 8
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i8* %58, i8** %63, align 8
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %65 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 128
  store i64 %70, i64* @MBAR0_SWB_SIZE, align 8
  %71 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %72 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %33
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = load i32, i32* @PCI_CONF_MBAR1, align 4
  %78 = load i8*, i8** @OCM_BASE_ADDR, align 8
  %79 = call i32 @pci_write_config_dword(%struct.pci_dev* %76, i32 %77, i8* %78)
  %80 = load i8*, i8** @OCM_BASE_ADDR, align 8
  %81 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %82 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %80, i8** %85, align 8
  br label %86

86:                                               ; preds = %75, %33
  %87 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %88 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %87, i32 0, i32 0
  %89 = call i32 @spin_lock_init(i32* %88)
  br label %90

90:                                               ; preds = %86, %29, %14
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i8**) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
