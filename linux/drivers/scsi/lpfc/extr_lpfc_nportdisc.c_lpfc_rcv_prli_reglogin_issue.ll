; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_reglogin_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli_reglogin_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_iocbq = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@LSRJT_LOGICAL_BSY = common dso_local global i32 0, align 4
@LSEXP_NOTHING_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_prli_reglogin_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_prli_reglogin_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.ls_rjt, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %13, %struct.lpfc_iocbq** %10, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %17 = call i32 @lpfc_rcv_prli_support_check(%struct.lpfc_vport* %14, %struct.lpfc_nodelist* %15, %struct.lpfc_iocbq* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %76

23:                                               ; preds = %4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %23
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %41 = call i32 @lpfc_rcv_prli(%struct.lpfc_vport* %38, %struct.lpfc_nodelist* %39, %struct.lpfc_iocbq* %40)
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = call i32 @lpfc_els_rsp_prli_acc(%struct.lpfc_vport* %42, %struct.lpfc_iocbq* %43, %struct.lpfc_nodelist* %44)
  br label %66

46:                                               ; preds = %30
  %47 = call i32 @memset(%struct.ls_rjt* %11, i32 0, i32 12)
  %48 = load i32, i32* @LSRJT_LOGICAL_BSY, align 4
  %49 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @LSEXP_NOTHING_MORE, align 4
  %53 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %57 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %62 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %56, i32 %59, %struct.lpfc_iocbq* %60, %struct.lpfc_nodelist* %61, i32* null)
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %64 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %76

66:                                               ; preds = %37
  br label %72

67:                                               ; preds = %23
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %71 = call i32 @lpfc_els_rsp_prli_acc(%struct.lpfc_vport* %68, %struct.lpfc_iocbq* %69, %struct.lpfc_nodelist* %70)
  br label %72

72:                                               ; preds = %67, %66
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %74 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %46, %19
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @lpfc_rcv_prli_support_check(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_rcv_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_els_rsp_prli_acc(%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
