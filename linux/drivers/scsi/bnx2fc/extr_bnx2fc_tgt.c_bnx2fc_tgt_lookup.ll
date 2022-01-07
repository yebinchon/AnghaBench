; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_tgt_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_tgt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { %struct.fc_rport_priv*, %struct.fcoe_port* }
%struct.fc_rport_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { %struct.bnx2fc_rport** }

@BNX2FC_NUM_MAX_SESS = common dso_local global i32 0, align 4
@RPORT_ST_DELETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rport obtained\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rport 0x%x is in DELETED state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnx2fc_rport* @bnx2fc_tgt_lookup(%struct.fcoe_port* %0, i64 %1) #0 {
  %3 = alloca %struct.bnx2fc_rport*, align 8
  %4 = alloca %struct.fcoe_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2fc_interface*, align 8
  %7 = alloca %struct.bnx2fc_hba*, align 8
  %8 = alloca %struct.bnx2fc_rport*, align 8
  %9 = alloca %struct.fc_rport_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.fcoe_port* %0, %struct.fcoe_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.fcoe_port*, %struct.fcoe_port** %4, align 8
  %12 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %11, i32 0, i32 0
  %13 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %12, align 8
  store %struct.bnx2fc_interface* %13, %struct.bnx2fc_interface** %6, align 8
  %14 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %14, i32 0, i32 0
  %16 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %15, align 8
  store %struct.bnx2fc_hba* %16, %struct.bnx2fc_hba** %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %66, %2
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @BNX2FC_NUM_MAX_SESS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %7, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %22, i32 0, i32 0
  %24 = load %struct.bnx2fc_rport**, %struct.bnx2fc_rport*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %24, i64 %26
  %28 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %27, align 8
  store %struct.bnx2fc_rport* %28, %struct.bnx2fc_rport** %8, align 8
  %29 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %30 = icmp ne %struct.bnx2fc_rport* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %21
  %32 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %32, i32 0, i32 1
  %34 = load %struct.fcoe_port*, %struct.fcoe_port** %33, align 8
  %35 = load %struct.fcoe_port*, %struct.fcoe_port** %4, align 8
  %36 = icmp eq %struct.fcoe_port* %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %38, i32 0, i32 0
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %39, align 8
  store %struct.fc_rport_priv* %40, %struct.fc_rport_priv** %9, align 8
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %9, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %9, align 8
  %49 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RPORT_ST_DELETE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %55 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  store %struct.bnx2fc_rport* %56, %struct.bnx2fc_rport** %3, align 8
  br label %70

57:                                               ; preds = %47
  %58 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %8, align 8
  %59 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %9, align 8
  %60 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  store %struct.bnx2fc_rport* null, %struct.bnx2fc_rport** %3, align 8
  br label %70

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %31, %21
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %17

69:                                               ; preds = %17
  store %struct.bnx2fc_rport* null, %struct.bnx2fc_rport** %3, align 8
  br label %70

70:                                               ; preds = %69, %57, %53
  %71 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %3, align 8
  ret %struct.bnx2fc_rport* %71
}

declare dso_local i32 @BNX2FC_TGT_DBG(%struct.bnx2fc_rport*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
