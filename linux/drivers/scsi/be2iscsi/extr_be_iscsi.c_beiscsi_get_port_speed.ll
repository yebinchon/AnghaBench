; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }
%struct.beiscsi_hba = type { i32 }

@ISCSI_PORT_SPEED_10MBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_100MBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_1GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_10GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_25GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_40GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @beiscsi_get_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_get_port_speed(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.iscsi_cls_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %5)
  store %struct.beiscsi_hba* %6, %struct.beiscsi_hba** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %8, align 8
  store %struct.iscsi_cls_host* %9, %struct.iscsi_cls_host** %4, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 131, label %13
    i32 133, label %17
    i32 130, label %21
    i32 132, label %25
    i32 129, label %29
    i32 128, label %33
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @ISCSI_PORT_SPEED_10MBPS, align 4
  %15 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @ISCSI_PORT_SPEED_100MBPS, align 4
  %19 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load i32, i32* @ISCSI_PORT_SPEED_1GBPS, align 4
  %23 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load i32, i32* @ISCSI_PORT_SPEED_10GBPS, align 4
  %27 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @ISCSI_PORT_SPEED_25GBPS, align 4
  %31 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @ISCSI_PORT_SPEED_40GBPS, align 4
  %35 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @ISCSI_PORT_SPEED_UNKNOWN, align 4
  %39 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29, %25, %21, %17, %13
  ret void
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
