; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_def.h_ql4xxx_lock_drvr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_def.h_ql4xxx_lock_drvr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QL4010_DRVR_SEM_MASK = common dso_local global i32 0, align 4
@QL4010_DRVR_SEM_BITS = common dso_local global i32 0, align 4
@QL4022_DRVR_SEM_MASK = common dso_local global i32 0, align 4
@QL4022_RESOURCE_BITS_BASE_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @ql4xxx_lock_drvr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql4xxx_lock_drvr(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %5 = call i64 @is_qla4010(%struct.scsi_qla_host* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %9 = load i32, i32* @QL4010_DRVR_SEM_MASK, align 4
  %10 = load i32, i32* @QL4010_DRVR_SEM_BITS, align 4
  %11 = call i32 @ql4xxx_sem_lock(%struct.scsi_qla_host* %8, i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = load i32, i32* @QL4022_DRVR_SEM_MASK, align 4
  %15 = load i32, i32* @QL4022_RESOURCE_BITS_BASE_CODE, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = shl i32 %19, 1
  %21 = call i32 @ql4xxx_sem_lock(%struct.scsi_qla_host* %13, i32 %14, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @is_qla4010(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql4xxx_sem_lock(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
