; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_chk_tgt_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_chk_tgt_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"0797 Tgt Map rport failure: rdata x%px\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.scsi_cmnd*)* @lpfc_chk_tgt_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(i32 %11)
  store %struct.lpfc_rport_data* %12, %struct.lpfc_rport_data** %6, align 8
  %13 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %14 = icmp ne %struct.lpfc_rport_data* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @LOG_FCP, align 4
  %19 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %20 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.lpfc_rport_data* %19)
  %21 = load i32, i32* @FAILED, align 4
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %23, i32 0, i32 0
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %24, align 8
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %7, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 2, %28
  %30 = mul nsw i32 %29, 1000
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %67, %22
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = call i64 @time_after(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %34
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = icmp ne %struct.lpfc_nodelist* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %44 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @FAILED, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %42
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %88

56:                                               ; preds = %48
  %57 = call i64 @msecs_to_jiffies(i32 500)
  %58 = call i32 @schedule_timeout_uninterruptible(i64 %57)
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(i32 %61)
  store %struct.lpfc_rport_data* %62, %struct.lpfc_rport_data** %6, align 8
  %63 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %64 = icmp ne %struct.lpfc_rport_data* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @FAILED, align 4
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %56
  %68 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %68, i32 0, i32 0
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %69, align 8
  store %struct.lpfc_nodelist* %70, %struct.lpfc_nodelist** %7, align 8
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = icmp ne %struct.lpfc_nodelist* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %76 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78, %74, %71
  %85 = load i32, i32* @FAILED, align 4
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %84, %65, %54, %46, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, %struct.lpfc_rport_data*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
