; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.ibmvfc_event = type { %struct.scsi_cmnd*, %struct.ibmvfc_host*, %struct.TYPE_5__* }
%struct.scsi_cmnd = type { i32* }
%struct.ibmvfc_host = type { i64 }
%struct.TYPE_5__ = type { %struct.ibmvfc_cmd }
%struct.ibmvfc_cmd = type { i32, i32, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@unknown_error = common dso_local global i8* null, align 8
@cmd_status = common dso_local global %struct.TYPE_8__* null, align 8
@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i64 0, align 8
@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Command (%02X) : %s (%x:%x) flags: %x fcp_rsp: %x, resid=%d, scsi_status: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_log_error(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.ibmvfc_cmd* %14, %struct.ibmvfc_cmd** %3, align 8
  %15 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %15, i32 0, i32 1
  %17 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %16, align 8
  store %struct.ibmvfc_host* %17, %struct.ibmvfc_host** %4, align 8
  %18 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %18, i32 0, i32 2
  store %struct.ibmvfc_fcp_rsp* %19, %struct.ibmvfc_fcp_rsp** %5, align 8
  %20 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %20, i32 0, i32 0
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %21, align 8
  store %struct.scsi_cmnd* %22, %struct.scsi_cmnd** %6, align 8
  %23 = load i8*, i8** @unknown_error, align 8
  store i8* %23, i8** %7, align 8
  %24 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be16_to_cpu(i32 %26)
  %28 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be16_to_cpu(i32 %30)
  %32 = call i32 @ibmvfc_get_err_index(i32 %27, i32 %31)
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmd_status, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmd_status, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %35, %1
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %56 = add nsw i64 %55, 1
  %57 = icmp sle i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %99

59:                                               ; preds = %51, %48
  %60 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %68 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be16_to_cpu(i32 %83)
  %85 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be16_to_cpu(i32 %87)
  %89 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %90 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %94 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %93)
  %95 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @scmd_printk(i32 %73, %struct.scsi_cmnd* %74, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %80, i32 %84, i32 %88, i32 %91, i32 %92, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %72, %58
  ret void
}

declare dso_local i32 @ibmvfc_get_err_index(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
