; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.asd_flash_dir = type { i32 }
%struct.asd_manuf_sec = type { i32 }

@FLASH_DE_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't find the manuf. sector\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no mem for manuf sector\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"couldn't read manuf sector at 0x%x, size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"couldn't validate manuf sector\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"couldn't read the SAS_ADDR\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"manuf sect SAS_ADDR %llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"couldn't read the PCBA SN\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"manuf sect PCBA SN %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"ms: couldn't get phy parameters\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"ms: couldn't get connector map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_flash_dir*)* @asd_process_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_process_ms(%struct.asd_ha_struct* %0, %struct.asd_flash_dir* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_flash_dir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_manuf_sec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_flash_dir* %1, %struct.asd_flash_dir** %4, align 8
  %9 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %4, align 8
  %10 = load i32, i32* @FLASH_DE_MS, align 4
  %11 = call i32 @asd_find_flash_de(%struct.asd_flash_dir* %9, i32 %10, i64* %7, i64* %8)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %97

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %97

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.asd_manuf_sec* @kmalloc(i64 %23, i32 %24)
  store %struct.asd_manuf_sec* %25, %struct.asd_manuf_sec** %6, align 8
  %26 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %27 = icmp ne %struct.asd_manuf_sec* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %97

30:                                               ; preds = %20
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %32 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %33 = bitcast %struct.asd_manuf_sec* %32 to i8*
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @asd_read_flash_seg(%struct.asd_ha_struct* %31, i8* %33, i64 %34, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %41)
  br label %94

43:                                               ; preds = %30
  %44 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %45 = call i32 @asd_validate_ms(%struct.asd_manuf_sec* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %94

50:                                               ; preds = %43
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %53 = call i32 @asd_ms_get_sas_addr(%struct.asd_ha_struct* %51, %struct.asd_manuf_sec* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %94

58:                                               ; preds = %50
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SAS_ADDR(i32 %62)
  %64 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %66 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %67 = call i32 @asd_ms_get_pcba_sn(%struct.asd_ha_struct* %65, %struct.asd_manuf_sec* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %94

72:                                               ; preds = %58
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %74 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %79 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %80 = call i32 @asd_ms_get_phy_params(%struct.asd_ha_struct* %78, %struct.asd_manuf_sec* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %94

85:                                               ; preds = %72
  %86 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %87 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %88 = call i32 @asd_ms_get_connector_map(%struct.asd_ha_struct* %86, %struct.asd_manuf_sec* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %91, %83, %70, %56, %48, %39
  %95 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %6, align 8
  %96 = call i32 @kfree(%struct.asd_manuf_sec* %95)
  br label %97

97:                                               ; preds = %94, %28, %19, %14
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @asd_find_flash_de(%struct.asd_flash_dir*, i32, i64*, i64*) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local %struct.asd_manuf_sec* @kmalloc(i64, i32) #1

declare dso_local i32 @asd_read_flash_seg(%struct.asd_ha_struct*, i8*, i64, i64) #1

declare dso_local i32 @asd_validate_ms(%struct.asd_manuf_sec*) #1

declare dso_local i32 @asd_ms_get_sas_addr(%struct.asd_ha_struct*, %struct.asd_manuf_sec*) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @asd_ms_get_pcba_sn(%struct.asd_ha_struct*, %struct.asd_manuf_sec*) #1

declare dso_local i32 @asd_ms_get_phy_params(%struct.asd_ha_struct*, %struct.asd_manuf_sec*) #1

declare dso_local i32 @asd_ms_get_connector_map(%struct.asd_ha_struct*, %struct.asd_manuf_sec*) #1

declare dso_local i32 @kfree(%struct.asd_manuf_sec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
