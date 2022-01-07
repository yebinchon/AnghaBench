; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_hba_ioctl_done_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_hba_ioctl_done_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32 }
%struct.atto_ioctl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.atto_hba_get_adapter_info }
%struct.atto_hba_get_adapter_info = type { i32, i32, i64, i32, i32, i32, i32 }

@esas2r_buffered_ioctl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"hba_ioctl_done_callback %d\00", align 1
@ATTO_FUNC_GET_ADAP_INFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ATTO_FUNC_GET_ADAP_INFO\00", align 1
@ESAS2R_MAJOR_REV = common dso_local global i32 0, align 4
@ESAS2R_MINOR_REV = common dso_local global i32 0, align 4
@ESAS2R_VERSION_STR = common dso_local global i32 0, align 4
@ESAS2R_DRVR_NAME = common dso_local global i32 0, align 4
@ESAS2R_MAX_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*, i8*)* @hba_ioctl_done_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hba_ioctl_done_callback(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, i8* %2) #0 {
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.atto_ioctl*, align 8
  %8 = alloca %struct.atto_hba_get_adapter_info*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %10 = inttoptr i64 %9 to %struct.atto_ioctl*
  store %struct.atto_ioctl* %10, %struct.atto_ioctl** %7, align 8
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @esas2r_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.atto_ioctl*, %struct.atto_ioctl** %7, align 8
  %16 = getelementptr inbounds %struct.atto_ioctl, %struct.atto_ioctl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATTO_FUNC_GET_ADAP_INFO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  %21 = load %struct.atto_ioctl*, %struct.atto_ioctl** %7, align 8
  %22 = getelementptr inbounds %struct.atto_ioctl, %struct.atto_ioctl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.atto_hba_get_adapter_info* %23, %struct.atto_hba_get_adapter_info** %8, align 8
  %24 = call i32 (i8*, ...) @esas2r_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ESAS2R_MAJOR_REV, align 4
  %26 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %27 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ESAS2R_MINOR_REV, align 4
  %29 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %30 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %32 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ESAS2R_VERSION_STR, align 4
  %35 = call i32 @strcpy(i32 %33, i32 %34)
  %36 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %37 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ESAS2R_DRVR_NAME, align 4
  %40 = call i32 @strcpy(i32 %38, i32 %39)
  %41 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %42 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i64, i64* @ESAS2R_MAX_ID, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %46 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.atto_hba_get_adapter_info*, %struct.atto_hba_get_adapter_info** %8, align 8
  %48 = getelementptr inbounds %struct.atto_hba_get_adapter_info, %struct.atto_hba_get_adapter_info* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @esas2r_debug(i8*, ...) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
