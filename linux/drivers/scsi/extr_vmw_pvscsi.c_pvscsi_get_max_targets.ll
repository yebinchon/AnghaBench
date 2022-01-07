; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_get_max_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_get_max_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.PVSCSICmdDescConfigCmd = type { i32, i32, i64, i32 }
%struct.PVSCSIConfigPageHeader = type { i64, i64 }
%struct.device = type { i32 }
%struct.PVSCSIConfigPageController = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vmw_pvscsi: failed to allocate memory for config page\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PVSCSI_CONFIG_CONTROLLER_ADDRESS = common dso_local global i64 0, align 8
@PVSCSI_CONFIG_PAGE_CONTROLLER = common dso_local global i32 0, align 4
@BTSTAT_INVPARAM = common dso_local global i64 0, align 8
@SDSTAT_CHECK = common dso_local global i64 0, align 8
@PVSCSI_CMD_CONFIG = common dso_local global i32 0, align 4
@BTSTAT_SUCCESS = common dso_local global i64 0, align 8
@SDSTAT_GOOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"vmw_pvscsi: PVSCSI_CMD_CONFIG failed. hostStatus = 0x%x, scsiStatus = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*)* @pvscsi_get_max_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_get_max_targets(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  %3 = alloca %struct.PVSCSICmdDescConfigCmd, align 8
  %4 = alloca %struct.PVSCSIConfigPageHeader*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.PVSCSIConfigPageController*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  store i32 16, i32* %8, align 4
  %10 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %11 = call %struct.device* @pvscsi_dev(%struct.pvscsi_adapter* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @dma_alloc_coherent(i32* %15, i32 %16, i32* %6, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %87

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* @PVSCSI_CONFIG_CONTROLLER_ADDRESS, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 32
  %33 = getelementptr inbounds %struct.PVSCSICmdDescConfigCmd, %struct.PVSCSICmdDescConfigCmd* %3, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @PVSCSI_CONFIG_PAGE_CONTROLLER, align 4
  %35 = getelementptr inbounds %struct.PVSCSICmdDescConfigCmd, %struct.PVSCSICmdDescConfigCmd* %3, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.PVSCSICmdDescConfigCmd, %struct.PVSCSICmdDescConfigCmd* %3, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.PVSCSICmdDescConfigCmd, %struct.PVSCSICmdDescConfigCmd* %3, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to %struct.PVSCSIConfigPageHeader*
  store %struct.PVSCSIConfigPageHeader* %40, %struct.PVSCSIConfigPageHeader** %4, align 8
  %41 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %42 = call i32 @memset(%struct.PVSCSIConfigPageHeader* %41, i32 0, i32 16)
  %43 = load i64, i64* @BTSTAT_INVPARAM, align 8
  %44 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %45 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @SDSTAT_CHECK, align 8
  %47 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %48 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %50 = load i32, i32* @PVSCSI_CMD_CONFIG, align 4
  %51 = call i32 @pvscsi_write_cmd_desc(%struct.pvscsi_adapter* %49, i32 %50, %struct.PVSCSICmdDescConfigCmd* %3, i32 24)
  %52 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %53 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTSTAT_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %24
  %58 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %59 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SDSTAT_GOOD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast i8* %64 to %struct.PVSCSIConfigPageController*
  store %struct.PVSCSIConfigPageController* %65, %struct.PVSCSIConfigPageController** %9, align 8
  %66 = load %struct.PVSCSIConfigPageController*, %struct.PVSCSIConfigPageController** %9, align 8
  %67 = getelementptr inbounds %struct.PVSCSIConfigPageController, %struct.PVSCSIConfigPageController* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %78

69:                                               ; preds = %57, %24
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %72 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.PVSCSIConfigPageHeader*, %struct.PVSCSIConfigPageHeader** %4, align 8
  %75 = getelementptr inbounds %struct.PVSCSIConfigPageHeader, %struct.PVSCSIConfigPageHeader* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %70, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %76)
  br label %78

78:                                               ; preds = %69, %63
  %79 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dma_free_coherent(i32* %82, i32 %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %21
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local %struct.device* @pvscsi_dev(%struct.pvscsi_adapter*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.PVSCSIConfigPageHeader*, i32, i32) #1

declare dso_local i32 @pvscsi_write_cmd_desc(%struct.pvscsi_adapter*, i32, %struct.PVSCSICmdDescConfigCmd*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
