; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_host_queue_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_host_queue_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }
%struct.Scsi_Host = type { i8* }

@BNX2I_NX2_DEV_5708 = common dso_local global i32 0, align 4
@ISCSI_MAX_CMDS_PER_HBA_5708 = common dso_local global i8* null, align 8
@BNX2I_NX2_DEV_5709 = common dso_local global i32 0, align 4
@ISCSI_MAX_CMDS_PER_HBA_5709 = common dso_local global i8* null, align 8
@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@ISCSI_MAX_CMDS_PER_HBA_57710 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_hba*, %struct.Scsi_Host*)* @bnx2i_setup_host_queue_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_setup_host_queue_size(%struct.bnx2i_hba* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %5 = load i32, i32* @BNX2I_NX2_DEV_5708, align 4
  %6 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** @ISCSI_MAX_CMDS_PER_HBA_5708, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @BNX2I_NX2_DEV_5709, align 4
  %16 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8*, i8** @ISCSI_MAX_CMDS_PER_HBA_5709, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %39

24:                                               ; preds = %14
  %25 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %26 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** @ISCSI_MAX_CMDS_PER_HBA_57710, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load i8*, i8** @ISCSI_MAX_CMDS_PER_HBA_5708, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39, %10
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
