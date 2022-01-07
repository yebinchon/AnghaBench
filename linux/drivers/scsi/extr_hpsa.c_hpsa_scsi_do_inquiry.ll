; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo* }
%struct.ErrorInfo = type { i64 }

@IO_OK = common dso_local global i32 0, align 4
@HPSA_INQUIRY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i32, i8*, i8)* @hpsa_scsi_do_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %0, i8* %1, i32 %2, i8* %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.CommandList*, align 8
  %13 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8 %4, i8* %10, align 1
  %14 = load i32, i32* @IO_OK, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %16 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %15)
  store %struct.CommandList* %16, %struct.CommandList** %12, align 8
  %17 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %18 = load i32, i32* @HPSA_INQUIRY, align 4
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %10, align 1
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @TYPE_CMD, align 4
  %25 = call i64 @fill_cmd(%struct.CommandList* %17, i32 %18, %struct.ctlr_info* %19, i8* %20, i8 zeroext %21, i32 %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 -1, i32* %11, align 4
  br label %56

28:                                               ; preds = %5
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %30 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = load i32, i32* @NO_TIMEOUT, align 4
  %33 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %29, %struct.CommandList* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %56

37:                                               ; preds = %28
  %38 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %39 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %38, i32 0, i32 0
  %40 = load %struct.ErrorInfo*, %struct.ErrorInfo** %39, align 8
  store %struct.ErrorInfo* %40, %struct.ErrorInfo** %13, align 8
  %41 = load %struct.ErrorInfo*, %struct.ErrorInfo** %13, align 8
  %42 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.ErrorInfo*, %struct.ErrorInfo** %13, align 8
  %47 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %53 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %54 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %52, %struct.CommandList* %53)
  store i32 -1, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %45, %37
  br label %56

56:                                               ; preds = %55, %36, %27
  %57 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %58 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %59 = call i32 @cmd_free(%struct.ctlr_info* %57, %struct.CommandList* %58)
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i64 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i8*, i8 zeroext, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
