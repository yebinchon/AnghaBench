; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_raid_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_raid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo* }
%struct.ErrorInfo = type { i64 }

@HPSA_GET_RAID_MAP = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hpsa_get_raid_map fill_cmd failed\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"RAID map size is too large!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*)* @hpsa_get_raid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_get_raid_map(%struct.ctlr_info* %0, i8* %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.CommandList*, align 8
  %10 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %12 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %11)
  store %struct.CommandList* %12, %struct.CommandList** %9, align 8
  %13 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %14 = load i32, i32* @HPSA_GET_RAID_MAP, align 4
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %16 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %17 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @TYPE_CMD, align 4
  %20 = call i64 @fill_cmd(%struct.CommandList* %13, i32 %14, %struct.ctlr_info* %15, %struct.TYPE_5__* %17, i32 4, i32 0, i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %29 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %30 = call i32 @cmd_free(%struct.ctlr_info* %28, %struct.CommandList* %29)
  store i32 -1, i32* %4, align 4
  br label %87

31:                                               ; preds = %3
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %33 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = load i32, i32* @NO_TIMEOUT, align 4
  %36 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %32, %struct.CommandList* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %82

40:                                               ; preds = %31
  %41 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %42 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %41, i32 0, i32 0
  %43 = load %struct.ErrorInfo*, %struct.ErrorInfo** %42, align 8
  store %struct.ErrorInfo* %43, %struct.ErrorInfo** %10, align 8
  %44 = load %struct.ErrorInfo*, %struct.ErrorInfo** %10, align 8
  %45 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.ErrorInfo*, %struct.ErrorInfo** %10, align 8
  %50 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %56 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %57 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %55, %struct.CommandList* %56)
  store i32 -1, i32* %8, align 4
  br label %82

58:                                               ; preds = %48, %40
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %60 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %61 = call i32 @cmd_free(%struct.ctlr_info* %59, %struct.CommandList* %60)
  %62 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 4
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %71 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @dev_warn(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %75

75:                                               ; preds = %69, %58
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %79 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %78, i32 0, i32 0
  %80 = call i32 @hpsa_debug_map_buff(%struct.ctlr_info* %76, i32 %77, %struct.TYPE_5__* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %54, %39
  %83 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %84 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %85 = call i32 @cmd_free(%struct.ctlr_info* %83, %struct.CommandList* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %75, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i64 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, %struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpsa_debug_map_buff(%struct.ctlr_info*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
