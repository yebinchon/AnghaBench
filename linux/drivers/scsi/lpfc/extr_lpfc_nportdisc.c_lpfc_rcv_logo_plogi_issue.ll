; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo_plogi_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_logo_plogi_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@ELS_CMD_LOGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_logo_plogi_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_logo_plogi_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %11, %struct.lpfc_iocbq** %9, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPFC_SLI_REV3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %4
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %31 = call i32 @lpfc_els_abort(%struct.TYPE_4__* %29, %struct.lpfc_nodelist* %30)
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %35 = load i32, i32* @ELS_CMD_LOGO, align 4
  %36 = call i32 @lpfc_rcv_logo(%struct.lpfc_vport* %32, %struct.lpfc_nodelist* %33, %struct.lpfc_iocbq* %34, i32 %35)
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @lpfc_els_abort(%struct.TYPE_4__*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_rcv_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
