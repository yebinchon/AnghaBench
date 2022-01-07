; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }
%struct.beiscsi_hba = type { i32 }

@BEISCSI_HBA_LINK_UP = common dso_local global i32 0, align 4
@ISCSI_PORT_STATE_UP = common dso_local global i32 0, align 4
@ISCSI_PORT_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @beiscsi_get_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_get_port_state(%struct.Scsi_Host* %0) #0 {
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
  %10 = load i32, i32* @BEISCSI_HBA_LINK_UP, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ISCSI_PORT_STATE_UP, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ISCSI_PORT_STATE_DOWN, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
