; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Resetting connection due to error recovery\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvfc_eh_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_eh_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvfc_host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ibmvfc_host* @shost_priv(i32 %9)
  store %struct.ibmvfc_host* %10, %struct.ibmvfc_host** %4, align 8
  %11 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ibmvfc_issue_fc_host_lip(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @FAILED, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @SUCCESS, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ibmvfc_issue_fc_host_lip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
