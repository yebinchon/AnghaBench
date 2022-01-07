; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_gidpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_gidpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }

@SLI_CTNS_GID_PT = common dso_local global i32 0, align 4
@GID_PT_N_PORT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"0606 %s Port TYPE %x %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to issue GID_PT to \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Finishing discovery.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_gidpt(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %4 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %5 = load i32, i32* @SLI_CTNS_GID_PT, align 4
  %6 = load i32, i32* @GID_PT_N_PORT, align 4
  %7 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %4, i32 %5, i32 0, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load i32, i32* @LOG_SLI, align 4
  %13 = load i32, i32* @GID_PT_N_PORT, align 4
  %14 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
