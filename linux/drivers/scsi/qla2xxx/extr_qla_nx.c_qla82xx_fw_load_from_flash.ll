; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fw_load_from_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_fw_load_from_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32 }

@BOOTLD_START = common dso_local global i32 0, align 4
@IMAGE_START = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@QLA82XX_ROMUSB_GLB_SW_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_fw_load_from_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_fw_load_from_flash(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 2
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @BOOTLD_START, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @IMAGE_START, align 4
  %19 = load i32, i32* @BOOTLD_START, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %58, %1
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @qla82xx_rom_fast_read(%struct.qla_hw_data* %29, i64 %30, i32* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 4
  %37 = call i64 @qla82xx_rom_fast_read(%struct.qla_hw_data* %34, i64 %36, i32* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %28
  store i32 -1, i32* %2, align 4
  br label %76

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 32
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @qla82xx_pci_mem_write_2M(%struct.qla_hw_data* %45, i64 %46, i32* %8, i32 8)
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 8
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 8
  store i64 %51, i64* %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = srem i32 %52, 4096
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = call i32 @msleep(i32 1)
  br label %57

57:                                               ; preds = %55, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %23

61:                                               ; preds = %23
  %62 = call i32 @udelay(i32 100)
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 1
  %65 = call i32 @read_lock(i32* %64)
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %67 = load i64, i64* @QLA82XX_CRB_PEG_NET_0, align 8
  %68 = add nsw i64 %67, 24
  %69 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %66, i64 %68, i32 4128)
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = load i64, i64* @QLA82XX_ROMUSB_GLB_SW_RESET, align 8
  %72 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %70, i64 %71, i32 8388638)
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 1
  %75 = call i32 @read_unlock(i32* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %61, %39
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @qla82xx_rom_fast_read(%struct.qla_hw_data*, i64, i32*) #1

declare dso_local i32 @qla82xx_pci_mem_write_2M(%struct.qla_hw_data*, i64, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
