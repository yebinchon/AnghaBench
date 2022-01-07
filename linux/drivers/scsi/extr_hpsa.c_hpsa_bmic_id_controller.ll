; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_bmic_id_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_bmic_id_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.bmic_identify_controller = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo* }
%struct.ErrorInfo = type { i64 }

@IO_OK = common dso_local global i32 0, align 4
@BMIC_IDENTIFY_CONTROLLER = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.bmic_identify_controller*, i64)* @hpsa_bmic_id_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_bmic_id_controller(%struct.ctlr_info* %0, %struct.bmic_identify_controller* %1, i64 %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.bmic_identify_controller*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.CommandList*, align 8
  %9 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.bmic_identify_controller* %1, %struct.bmic_identify_controller** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @IO_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %12 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %11)
  store %struct.CommandList* %12, %struct.CommandList** %8, align 8
  %13 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %14 = load i32, i32* @BMIC_IDENTIFY_CONTROLLER, align 4
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %16 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @RAID_CTLR_LUNID, align 4
  %19 = load i32, i32* @TYPE_CMD, align 4
  %20 = call i32 @fill_cmd(%struct.CommandList* %13, i32 %14, %struct.ctlr_info* %15, %struct.bmic_identify_controller* %16, i64 %17, i32 0, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %52

24:                                               ; preds = %3
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %26 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = load i32, i32* @NO_TIMEOUT, align 4
  %29 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %25, %struct.CommandList* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %52

33:                                               ; preds = %24
  %34 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %35 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %34, i32 0, i32 0
  %36 = load %struct.ErrorInfo*, %struct.ErrorInfo** %35, align 8
  store %struct.ErrorInfo* %36, %struct.ErrorInfo** %9, align 8
  %37 = load %struct.ErrorInfo*, %struct.ErrorInfo** %9, align 8
  %38 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.ErrorInfo*, %struct.ErrorInfo** %9, align 8
  %43 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %49 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %50 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %48, %struct.CommandList* %49)
  store i32 -1, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %41, %33
  br label %52

52:                                               ; preds = %51, %32, %23
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %54 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %55 = call i32 @cmd_free(%struct.ctlr_info* %53, %struct.CommandList* %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, %struct.bmic_identify_controller*, i64, i32, i32, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
