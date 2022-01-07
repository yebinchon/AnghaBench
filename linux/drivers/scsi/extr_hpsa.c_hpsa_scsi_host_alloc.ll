; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.Scsi_Host*, %struct.TYPE_2__*, i32, i64 }
%struct.Scsi_Host = type { i32, i32, i64*, i32, i32, i32, i32, i64, i64, i8*, i8*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@hpsa_driver_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@HPSA_MAX_LUN = common dso_local global i8* null, align 8
@HPSA_NRESERVED_CMDS = common dso_local global i64 0, align 8
@hpsa_sas_transport_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @hpsa_scsi_host_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_host_alloc(%struct.ctlr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %5 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @hpsa_driver_template, i32 8)
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %4, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %7 = icmp eq %struct.Scsi_Host* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %10 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 13
  store i64 0, i64* %18, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 12
  store i64 0, i64* %20, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 1
  store i32 3, i32* %24, align 4
  %25 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @HPSA_MAX_LUN, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @HPSA_MAX_LUN, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %35 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HPSA_NRESERVED_CMDS, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 8
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @hpsa_sas_transport_template, align 4
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %55 = ptrtoint %struct.ctlr_info* %54 to i64
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  store i64 %55, i64* %59, align 8
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %61 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @pci_irq_vector(%struct.TYPE_2__* %62, i32 0)
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %73 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %72, i32 0, i32 0
  store %struct.Scsi_Host* %71, %struct.Scsi_Host** %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %16, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
