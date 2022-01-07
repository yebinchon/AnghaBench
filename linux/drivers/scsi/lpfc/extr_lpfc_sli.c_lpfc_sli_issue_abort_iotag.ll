; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_abort_iotag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_abort_iotag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32, i8*, i8*, %struct.TYPE_2__, %struct.lpfc_vport* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_vport = type { i32 }

@IOCB_ERROR = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@lpfc_ignore_els_cmpl = common dso_local global i8* null, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_issue_abort_iotag(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %8, align 8
  %14 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %14, i32* %9, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 3
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %10, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %25, %3
  store i32 0, i32* %4, align 4
  br label %94

39:                                               ; preds = %31
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %41 = icmp ne %struct.lpfc_sli_ring* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %51 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %52 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %57

53:                                               ; preds = %42
  %54 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %92

58:                                               ; preds = %39
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FC_UNLOADING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPFC_ELS_RING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %71
  %83 = load i8*, i8** @lpfc_ignore_els_cmpl, align 8
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %92

87:                                               ; preds = %65, %58
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %91 = call i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba* %88, %struct.lpfc_sli_ring* %89, %struct.lpfc_iocbq* %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %87, %86, %57
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %38
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
