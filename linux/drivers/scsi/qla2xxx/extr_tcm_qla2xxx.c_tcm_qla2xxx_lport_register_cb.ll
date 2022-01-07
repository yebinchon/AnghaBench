; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_lport_register_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_lport_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_4__, %struct.qla_hw_data* }
%struct.TYPE_4__ = type { i8* }
%struct.qla_hw_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tcm_qla2xxx_lport = type { %struct.scsi_qla_host* }

@tcm_qla2xxx_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*, i32, i32)* @tcm_qla2xxx_lport_register_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_lport_register_cb(%struct.scsi_qla_host* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.tcm_qla2xxx_lport*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.tcm_qla2xxx_lport*
  store %struct.tcm_qla2xxx_lport* %15, %struct.tcm_qla2xxx_lport** %10, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* @tcm_qla2xxx_template, i32** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %24 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %10, align 8
  %25 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %24, i32 0, i32 0
  store %struct.scsi_qla_host* %23, %struct.scsi_qla_host** %25, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
