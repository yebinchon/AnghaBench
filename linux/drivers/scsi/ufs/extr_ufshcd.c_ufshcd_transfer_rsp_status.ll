; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_transfer_rsp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_transfer_rsp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ufshcd_lrb = type { i32, i32 }

@MASK_SCSI_STATUS = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Reject UPIU not fully implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unexpected request response code = %x\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"OCS error from controller = %x for tag %d\0A\00", align 1
@DID_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.ufshcd_lrb*)* @ufshcd_transfer_rsp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_transfer_rsp_status(%struct.ufs_hba* %0, %struct.ufshcd_lrb* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.ufshcd_lrb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.ufshcd_lrb* %1, %struct.ufshcd_lrb** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %9 = call i32 @ufshcd_get_tr_ocs(%struct.ufshcd_lrb* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %74 [
    i32 130, label %11
    i32 138, label %63
    i32 135, label %68
    i32 136, label %73
    i32 134, label %73
    i32 133, label %73
    i32 132, label %73
    i32 131, label %73
    i32 137, label %73
  ]

11:                                               ; preds = %2
  %12 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %13 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ufshcd_get_req_rsp(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @ktime_set(i32 0, i32 0)
  %17 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %18 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %54 [
    i32 128, label %21
    i32 129, label %47
  ]

21:                                               ; preds = %11
  %22 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %23 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ufshcd_get_rsp_upiu_result(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MASK_SCSI_STATUS, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ufshcd_scsi_cmd_status(%struct.ufshcd_lrb* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %33 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %21
  %37 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %38 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ufshcd_is_exception_event(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %44 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %43, i32 0, i32 1
  %45 = call i32 @schedule_work(i32* %44)
  br label %46

46:                                               ; preds = %42, %36, %21
  br label %62

47:                                               ; preds = %11
  %48 = load i32, i32* @DID_ERROR, align 4
  %49 = shl i32 %48, 16
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

54:                                               ; preds = %11
  %55 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %56 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @DID_ERROR, align 4
  %61 = shl i32 %60, 16
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %47, %46
  br label %91

63:                                               ; preds = %2
  %64 = load i32, i32* @DID_ABORT, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %91

68:                                               ; preds = %2
  %69 = load i32, i32* @DID_REQUEUE, align 4
  %70 = shl i32 %69, 16
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %91

73:                                               ; preds = %2, %2, %2, %2, %2, %2
  br label %74

74:                                               ; preds = %2, %73
  %75 = load i32, i32* @DID_ERROR, align 4
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %80 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %84 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %88 = call i32 @ufshcd_print_host_regs(%struct.ufs_hba* %87)
  %89 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %90 = call i32 @ufshcd_print_host_state(%struct.ufs_hba* %89)
  br label %91

91:                                               ; preds = %74, %68, %63, %62
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @host_byte(i32 %92)
  %94 = load i64, i64* @DID_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %98 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %99 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = call i32 @ufshcd_print_trs(%struct.ufs_hba* %97, i32 %101, i32 1)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @ufshcd_get_tr_ocs(%struct.ufshcd_lrb*) #1

declare dso_local i32 @ufshcd_get_req_rsp(i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @ufshcd_get_rsp_upiu_result(i32) #1

declare dso_local i32 @ufshcd_scsi_cmd_status(%struct.ufshcd_lrb*, i32) #1

declare dso_local i32 @ufshcd_is_exception_event(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ufshcd_print_host_regs(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_print_host_state(%struct.ufs_hba*) #1

declare dso_local i64 @host_byte(i32) #1

declare dso_local i32 @ufshcd_print_trs(%struct.ufs_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
