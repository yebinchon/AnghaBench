; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_cancel_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_3__*, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.pmcraid_ioarcb }
%struct.pmcraid_ioarcb = type { i32, i64, i64, i64, i32*, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pmcraid_resource_entry* }
%struct.pmcraid_resource_entry = type { i32 }

@PMCRAID_MAX_CDB_LEN = common dso_local global i32 0, align 4
@SYNC_OVERRIDE = common dso_local global i32 0, align 4
@REQ_TYPE_IOACMD = common dso_local global i32 0, align 4
@PMCRAID_CANCEL_ALL_REQUESTS = common dso_local global i32 0, align 4
@PMCRAID_SYNC_COMPLETE_AFTER_CANCEL = common dso_local global i32 0, align 4
@pmcraid_erp_done = common dso_local global i32 0, align 4
@pmcraid_request_sense = common dso_local global i32 0, align 4
@PMCRAID_REQUEST_SENSE_TIMEOUT = common dso_local global i32 0, align 4
@pmcraid_timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*, i32)* @pmcraid_cancel_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_cancel_all(%struct.pmcraid_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.pmcraid_ioarcb*, align 8
  %7 = alloca %struct.pmcraid_resource_entry*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %8, i32 0, i32 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %14, %struct.pmcraid_ioarcb** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %18, align 8
  store %struct.pmcraid_resource_entry* %19, %struct.pmcraid_resource_entry** %7, align 8
  %20 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %21 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @PMCRAID_MAX_CDB_LEN, align 4
  %24 = call i32 @memset(i32* %22, i32 0, i32 %23)
  %25 = load i32, i32* @SYNC_OVERRIDE, align 4
  %26 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %27 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @REQ_TYPE_IOACMD, align 4
  %29 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %30 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @PMCRAID_CANCEL_ALL_REQUESTS, align 4
  %32 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %33 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %7, align 8
  %37 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @RES_IS_GSCSI(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @PMCRAID_SYNC_COMPLETE_AFTER_CANCEL, align 4
  %43 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %44 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %2
  %48 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %49 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %51 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %53 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = call i32 @cpu_to_le64(i32 -32)
  %55 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %6, align 8
  %56 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* @pmcraid_erp_done, align 4
  br label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @pmcraid_request_sense, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* @PMCRAID_REQUEST_SENSE_TIMEOUT, align 4
  %69 = load i32, i32* @pmcraid_timeout_handler, align 4
  %70 = call i32 @pmcraid_send_cmd(%struct.pmcraid_cmd* %59, i32 %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @RES_IS_GSCSI(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @pmcraid_send_cmd(%struct.pmcraid_cmd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
