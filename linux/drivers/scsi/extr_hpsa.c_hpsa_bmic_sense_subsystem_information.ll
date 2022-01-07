; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_bmic_sense_subsystem_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_bmic_sense_subsystem_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.bmic_sense_subsystem_info = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo*, %struct.TYPE_2__ }
%struct.ErrorInfo = type { i64 }
%struct.TYPE_2__ = type { i32* }

@IO_OK = common dso_local global i32 0, align 4
@BMIC_SENSE_SUBSYSTEM_INFORMATION = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i32, %struct.bmic_sense_subsystem_info*, i64)* @hpsa_bmic_sense_subsystem_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_bmic_sense_subsystem_information(%struct.ctlr_info* %0, i8* %1, i32 %2, %struct.bmic_sense_subsystem_info* %3, i64 %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bmic_sense_subsystem_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.CommandList*, align 8
  %13 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bmic_sense_subsystem_info* %3, %struct.bmic_sense_subsystem_info** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* @IO_OK, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %16 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %15)
  store %struct.CommandList* %16, %struct.CommandList** %12, align 8
  %17 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %18 = load i32, i32* @BMIC_SENSE_SUBSYSTEM_INFORMATION, align 4
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %20 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @RAID_CTLR_LUNID, align 4
  %23 = load i32, i32* @TYPE_CMD, align 4
  %24 = call i32 @fill_cmd(%struct.CommandList* %17, i32 %18, %struct.ctlr_info* %19, %struct.bmic_sense_subsystem_info* %20, i64 %21, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %71

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %32 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %40 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  store i32 %38, i32* %43, align 4
  %44 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %45 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = load i32, i32* @NO_TIMEOUT, align 4
  %48 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %44, %struct.CommandList* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  br label %71

52:                                               ; preds = %28
  %53 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %54 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %53, i32 0, i32 0
  %55 = load %struct.ErrorInfo*, %struct.ErrorInfo** %54, align 8
  store %struct.ErrorInfo* %55, %struct.ErrorInfo** %13, align 8
  %56 = load %struct.ErrorInfo*, %struct.ErrorInfo** %13, align 8
  %57 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.ErrorInfo*, %struct.ErrorInfo** %13, align 8
  %62 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %68 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %69 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %67, %struct.CommandList* %68)
  store i32 -1, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %60, %52
  br label %71

71:                                               ; preds = %70, %51, %27
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %73 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %74 = call i32 @cmd_free(%struct.ctlr_info* %72, %struct.CommandList* %73)
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, %struct.bmic_sense_subsystem_info*, i64, i32, i32, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
