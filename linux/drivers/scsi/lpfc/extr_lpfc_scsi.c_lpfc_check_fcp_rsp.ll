; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_check_fcp_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_check_fcp_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_io_buf = type { %struct.fcp_rsp* }
%struct.fcp_rsp = type { i32, i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"0703 fcp_rsp is missing\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"0706 fcp_rsp valid 0x%x, rsp len=%d code 0x%x\0A\00", align 1
@RSP_LEN_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"0715 Task Mgmt No Failure\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"0716 Task Mgmt Target reject\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"0717 Task Mgmt Target failed TM\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"0718 Task Mgmt to invalid LUN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_io_buf*)* @lpfc_check_fcp_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_check_fcp_rsp(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.fcp_rsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %4, align 8
  %10 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %10, i32 0, i32 0
  %12 = load %struct.fcp_rsp*, %struct.fcp_rsp** %11, align 8
  store %struct.fcp_rsp* %12, %struct.fcp_rsp** %5, align 8
  %13 = load i32, i32* @FAILED, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.fcp_rsp*, %struct.fcp_rsp** %5, align 8
  %15 = icmp eq %struct.fcp_rsp* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @LOG_FCP, align 4
  %20 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.fcp_rsp*, %struct.fcp_rsp** %5, align 8
  %23 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.fcp_rsp*, %struct.fcp_rsp** %5, align 8
  %26 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fcp_rsp*, %struct.fcp_rsp** %5, align 8
  %30 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load i32, i32* @LOG_FCP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load %struct.fcp_rsp*, %struct.fcp_rsp** %5, align 8
  %40 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RSP_LEN_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %75

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %74 [
    i32 131, label %53
    i32 128, label %59
    i32 129, label %64
    i32 130, label %69
  ]

53:                                               ; preds = %51
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %55 = load i32, i32* @KERN_INFO, align 4
  %56 = load i32, i32* @LOG_FCP, align 4
  %57 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %9, align 4
  br label %74

59:                                               ; preds = %51
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %61 = load i32, i32* @KERN_INFO, align 4
  %62 = load i32, i32* @LOG_FCP, align 4
  %63 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %74

64:                                               ; preds = %51
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load i32, i32* @LOG_FCP, align 4
  %68 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %74

69:                                               ; preds = %51
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %71 = load i32, i32* @KERN_INFO, align 4
  %72 = load i32, i32* @LOG_FCP, align 4
  %73 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %51, %69, %64, %59, %53
  br label %75

75:                                               ; preds = %74, %48, %21
  br label %76

76:                                               ; preds = %75, %16
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
