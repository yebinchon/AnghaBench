; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_sas_get_enclosure_identifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_sas_get_enclosure_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_rphy*, i32*)* @hpsa_sas_get_enclosure_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_sas_get_enclosure_identifier(%struct.sas_rphy* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_rphy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.sas_rphy* %0, %struct.sas_rphy** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %10 = call %struct.Scsi_Host* @phy_to_shost(%struct.sas_rphy* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = icmp ne %struct.Scsi_Host* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = call %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host* %17)
  store %struct.ctlr_info* %18, %struct.ctlr_info** %7, align 8
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %20 = icmp ne %struct.ctlr_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %16
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %26 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %27 = call %struct.hpsa_scsi_dev_t* @hpsa_find_device_by_sas_rphy(%struct.ctlr_info* %25, %struct.sas_rphy* %26)
  store %struct.hpsa_scsi_dev_t* %27, %struct.hpsa_scsi_dev_t** %8, align 8
  %28 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %29 = icmp ne %struct.hpsa_scsi_dev_t* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %30, %21, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.Scsi_Host* @phy_to_shost(%struct.sas_rphy*) #1

declare dso_local %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local %struct.hpsa_scsi_dev_t* @hpsa_find_device_by_sas_rphy(%struct.ctlr_info*, %struct.sas_rphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
