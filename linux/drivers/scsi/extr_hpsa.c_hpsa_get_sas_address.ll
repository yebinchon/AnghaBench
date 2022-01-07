; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_sas_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i8* }
%struct.hpsa_scsi_dev_t = type { i8* }
%struct.bmic_sense_subsystem_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*)* @hpsa_get_sas_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_get_sas_address(%struct.ctlr_info* %0, i8* %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bmic_sense_subsystem_info*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %6, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @is_hba_lunid(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bmic_sense_subsystem_info* @kzalloc(i32 4, i32 %14)
  store %struct.bmic_sense_subsystem_info* %15, %struct.bmic_sense_subsystem_info** %9, align 8
  %16 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %9, align 8
  %17 = icmp ne %struct.bmic_sense_subsystem_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %45

19:                                               ; preds = %13
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %9, align 8
  %23 = call i32 @hpsa_bmic_sense_subsystem_information(%struct.ctlr_info* %20, i8* %21, i32 0, %struct.bmic_sense_subsystem_info* %22, i32 4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %9, align 8
  %28 = getelementptr inbounds %struct.bmic_sense_subsystem_info, %struct.bmic_sense_subsystem_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @get_unaligned_be64(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %33 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %26, %19
  %35 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %9, align 8
  %36 = call i32 @kfree(%struct.bmic_sense_subsystem_info* %35)
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @hpsa_get_sas_address_from_report_physical(%struct.ctlr_info* %38, i8* %39)
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %18
  ret void
}

declare dso_local i64 @is_hba_lunid(i8*) #1

declare dso_local %struct.bmic_sense_subsystem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_bmic_sense_subsystem_information(%struct.ctlr_info*, i8*, i32, %struct.bmic_sense_subsystem_info*, i32) #1

declare dso_local i8* @get_unaligned_be64(i32) #1

declare dso_local i32 @kfree(%struct.bmic_sense_subsystem_info*) #1

declare dso_local i8* @hpsa_get_sas_address_from_report_physical(%struct.ctlr_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
