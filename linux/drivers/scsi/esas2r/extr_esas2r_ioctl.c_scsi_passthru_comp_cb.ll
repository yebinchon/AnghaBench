; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_scsi_passthru_comp_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_scsi_passthru_comp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, %struct.TYPE_6__, i32, i64 }
%struct.esas2r_adapter.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.atto_ioctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.atto_hba_scsi_pass_thru }
%struct.atto_hba_scsi_pass_thru = type { i64, i32, i32, i32, i32 }

@ATTO_SPT_RS_FAILED = common dso_local global i32 0, align 4
@ATTO_SPT_RS_SUCCESS = common dso_local global i32 0, align 4
@ATTO_SPT_RS_UNDERRUN = common dso_local global i32 0, align 4
@ATTO_SPT_RS_OVERRUN = common dso_local global i32 0, align 4
@ATTO_SPT_RS_NO_DEVICE = common dso_local global i32 0, align 4
@ATTO_SPT_RS_NO_LUN = common dso_local global i32 0, align 4
@ATTO_SPT_RS_TIMEOUT = common dso_local global i32 0, align 4
@ATTO_SPT_RS_DEGRADED = common dso_local global i32 0, align 4
@ATTO_SPT_RS_BUSY = common dso_local global i32 0, align 4
@ATTO_SPT_RS_ABORTED = common dso_local global i32 0, align 4
@ATTO_SPT_RS_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @scsi_passthru_comp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_passthru_comp_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.atto_ioctl*, align 8
  %6 = alloca %struct.atto_hba_scsi_pass_thru*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.atto_ioctl*
  store %struct.atto_ioctl* %11, %struct.atto_ioctl** %5, align 8
  %12 = load %struct.atto_ioctl*, %struct.atto_ioctl** %5, align 8
  %13 = getelementptr inbounds %struct.atto_ioctl, %struct.atto_ioctl* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.atto_hba_scsi_pass_thru* %14, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %15 = load i32, i32* @ATTO_SPT_RS_FAILED, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %17 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %22 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %27 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %29 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %35 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %37 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %59 [
    i32 130, label %39
    i32 133, label %39
    i32 128, label %41
    i32 135, label %43
    i32 132, label %45
    i32 131, label %45
    i32 136, label %47
    i32 129, label %49
    i32 137, label %51
    i32 138, label %53
    i32 139, label %55
    i32 134, label %57
  ]

39:                                               ; preds = %2, %2
  %40 = load i32, i32* @ATTO_SPT_RS_SUCCESS, align 4
  store i32 %40, i32* %7, align 4
  br label %59

41:                                               ; preds = %2
  %42 = load i32, i32* @ATTO_SPT_RS_UNDERRUN, align 4
  store i32 %42, i32* %7, align 4
  br label %59

43:                                               ; preds = %2
  %44 = load i32, i32* @ATTO_SPT_RS_OVERRUN, align 4
  store i32 %44, i32* %7, align 4
  br label %59

45:                                               ; preds = %2, %2
  %46 = load i32, i32* @ATTO_SPT_RS_NO_DEVICE, align 4
  store i32 %46, i32* %7, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load i32, i32* @ATTO_SPT_RS_NO_LUN, align 4
  store i32 %48, i32* %7, align 4
  br label %59

49:                                               ; preds = %2
  %50 = load i32, i32* @ATTO_SPT_RS_TIMEOUT, align 4
  store i32 %50, i32* %7, align 4
  br label %59

51:                                               ; preds = %2
  %52 = load i32, i32* @ATTO_SPT_RS_DEGRADED, align 4
  store i32 %52, i32* %7, align 4
  br label %59

53:                                               ; preds = %2
  %54 = load i32, i32* @ATTO_SPT_RS_BUSY, align 4
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %2
  %56 = load i32, i32* @ATTO_SPT_RS_ABORTED, align 4
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %2
  %58 = load i32, i32* @ATTO_SPT_RS_BUS_RESET, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %2, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %62 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %64 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %65 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @esas2r_targ_db_find_next_present(%struct.esas2r_adapter* %63, i32 %67)
  %69 = load %struct.atto_hba_scsi_pass_thru*, %struct.atto_hba_scsi_pass_thru** %6, align 8
  %70 = getelementptr inbounds %struct.atto_hba_scsi_pass_thru, %struct.atto_hba_scsi_pass_thru* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %72 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %71, i32 0, i32 1
  %73 = load i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)** %72, align 8
  %74 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %75 = bitcast %struct.esas2r_adapter* %74 to %struct.esas2r_adapter.0*
  %76 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %77 = call i32 %73(%struct.esas2r_adapter.0* %75, %struct.esas2r_request* %76)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @esas2r_targ_db_find_next_present(%struct.esas2r_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
