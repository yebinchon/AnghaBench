; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_find_device_by_sas_rphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_find_device_by_sas_rphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_scsi_dev_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sas_rphy* }
%struct.ctlr_info = type { i32, %struct.hpsa_scsi_dev_t** }
%struct.sas_rphy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpsa_scsi_dev_t* (%struct.ctlr_info*, %struct.sas_rphy*)* @hpsa_find_device_by_sas_rphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpsa_scsi_dev_t* @hpsa_find_device_by_sas_rphy(%struct.ctlr_info* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.sas_rphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 1
  %17 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %17, i64 %19
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %20, align 8
  store %struct.hpsa_scsi_dev_t* %21, %struct.hpsa_scsi_dev_t** %7, align 8
  %22 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %23 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %38

27:                                               ; preds = %14
  %28 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %29 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.sas_rphy*, %struct.sas_rphy** %31, align 8
  %33 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %34 = icmp eq %struct.sas_rphy* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  store %struct.hpsa_scsi_dev_t* %36, %struct.hpsa_scsi_dev_t** %3, align 8
  br label %42

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %8

41:                                               ; preds = %8
  store %struct.hpsa_scsi_dev_t* null, %struct.hpsa_scsi_dev_t** %3, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %3, align 8
  ret %struct.hpsa_scsi_dev_t* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
