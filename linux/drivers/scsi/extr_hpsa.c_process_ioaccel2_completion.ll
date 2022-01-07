; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_process_ioaccel2_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_process_ioaccel2_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.io_accel2_cmd* }
%struct.io_accel2_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.CommandList = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.hpsa_scsi_dev_t = type { i64, i64, i64 }

@IOACCEL2_SERV_RESPONSE_FAILURE = common dso_local global i64 0, align 8
@IOACCEL2_STATUS_SR_IOACCEL_DISABLED = common dso_local global i64 0, align 8
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*, %struct.hpsa_scsi_dev_t*)* @process_ioaccel2_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ioaccel2_completion(%struct.ctlr_info* %0, %struct.CommandList* %1, %struct.scsi_cmnd* %2, %struct.hpsa_scsi_dev_t* %3) #0 {
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.CommandList*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %9 = alloca %struct.io_accel2_cmd*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store %struct.CommandList* %1, %struct.CommandList** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store %struct.hpsa_scsi_dev_t* %3, %struct.hpsa_scsi_dev_t** %8, align 8
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 0
  %12 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %11, align 8
  %13 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %14 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %12, i64 %15
  store %struct.io_accel2_cmd* %16, %struct.io_accel2_cmd** %9, align 8
  %17 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %18 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %22, %4
  %29 = phi i1 [ false, %4 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %37 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  call void @hpsa_cmd_free_and_done(%struct.ctlr_info* %36, %struct.CommandList* %37, %struct.scsi_cmnd* %38)
  br label %93

39:                                               ; preds = %28
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %41 = call i64 @is_logical_device(%struct.hpsa_scsi_dev_t* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IOACCEL2_SERV_RESPONSE_FAILURE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %52 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IOACCEL2_STATUS_SR_IOACCEL_DISABLED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %59 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %61 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %64 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32, i32* @DID_RESET, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %73 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  call void @hpsa_cmd_free_and_done(%struct.ctlr_info* %72, %struct.CommandList* %73, %struct.scsi_cmnd* %74)
  br label %93

75:                                               ; preds = %62
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %77 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  call void @hpsa_retry_cmd(%struct.ctlr_info* %76, %struct.CommandList* %77)
  br label %93

78:                                               ; preds = %43, %39
  %79 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %80 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %82 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %9, align 8
  %83 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %84 = call i64 @handle_ioaccel_mode2_error(%struct.ctlr_info* %79, %struct.CommandList* %80, %struct.scsi_cmnd* %81, %struct.io_accel2_cmd* %82, %struct.hpsa_scsi_dev_t* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %88 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  call void @hpsa_retry_cmd(%struct.ctlr_info* %87, %struct.CommandList* %88)
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %91 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  call void @hpsa_cmd_free_and_done(%struct.ctlr_info* %90, %struct.CommandList* %91, %struct.scsi_cmnd* %92)
  br label %93

93:                                               ; preds = %89, %86, %75, %67, %33
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local void @hpsa_cmd_free_and_done(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*) #1

declare dso_local i64 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local void @hpsa_retry_cmd(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i64 @handle_ioaccel_mode2_error(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*, %struct.io_accel2_cmd*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
