; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb* }
%struct.fsf_qtcb = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fs_rerr\00", align 1
@FSF_PROT_GOOD = common dso_local global i64 0, align 8
@FSF_PROT_FSF_STATUS_PRESENTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"fs_perr\00", align 1
@FSF_GOOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"fs_ferr\00", align 1
@FSF_QTCB_OPEN_PORT_WITH_DID = common dso_local global i64 0, align 8
@FSF_QTCB_OPEN_LUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"fs_open\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fs_qtcb\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fs_norm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_dbf_hba_fsf_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_qtcb*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %4 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %4, i32 0, i32 1
  %6 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %5, align 8
  store %struct.fsf_qtcb* %6, %struct.fsf_qtcb** %3, align 8
  %7 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %11 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 3, %struct.zfcp_fsf_req* %17)
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %21 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FSF_PROT_GOOD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %28 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FSF_PROT_FSF_STATUS_PRESENTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %35 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.zfcp_fsf_req* %34)
  br label %83

36:                                               ; preds = %26, %19
  %37 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %38 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FSF_GOOD, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = call i64 @zfcp_dbf_hba_fsf_resp_suppress(%struct.zfcp_fsf_req* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 5, i32 1
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %50 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %48, %struct.zfcp_fsf_req* %49)
  br label %82

51:                                               ; preds = %36
  %52 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %53 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FSF_QTCB_OPEN_PORT_WITH_DID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %60 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FSF_QTCB_OPEN_LUN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58, %51
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %67 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4, %struct.zfcp_fsf_req* %66)
  br label %81

68:                                               ; preds = %58
  %69 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %3, align 8
  %70 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %76 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 5, %struct.zfcp_fsf_req* %75)
  br label %80

77:                                               ; preds = %68
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %79 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 6, %struct.zfcp_fsf_req* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %82, %33
  br label %84

84:                                               ; preds = %83, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_dbf_hba_fsf_resp(i8*, i32, %struct.zfcp_fsf_req*) #1

declare dso_local i64 @zfcp_dbf_hba_fsf_resp_suppress(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
