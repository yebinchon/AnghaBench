; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_fast_fail_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_fast_fail_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { %struct.TYPE_8__*, %struct.ibmvscsi_host_data* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ibmvscsi_host_data = type { i32 }

@VIOSRP_MAD_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"fast_fail not supported in server\0A\00", align 1
@VIOSRP_MAD_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"fast_fail request failed\0A\00", align 1
@VIOSRP_MAD_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"error 0x%X enabling fast_fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @fast_fail_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_fail_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  %4 = alloca i64, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %5 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %6 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %5, i32 0, i32 1
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  store %struct.ibmvscsi_host_data* %7, %struct.ibmvscsi_host_data** %3, align 8
  %8 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %9 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be16_to_cpu(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @VIOSRP_MAD_NOT_SUPPORTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %46

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @VIOSRP_MAD_FAILED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

34:                                               ; preds = %25
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @VIOSRP_MAD_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %48 = call i32 @send_mad_capabilities(%struct.ibmvscsi_host_data* %47)
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @send_mad_capabilities(%struct.ibmvscsi_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
