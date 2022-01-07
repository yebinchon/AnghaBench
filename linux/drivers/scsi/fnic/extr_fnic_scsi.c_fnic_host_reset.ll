; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i64, i64 }
%struct.fnic = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"host reset in progress skipping another host reset\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FNIC_HOST_RESET_SETTLE_TIME = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@LPORT_ST_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fnic*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.fc_lport* %16, %struct.fc_lport** %7, align 8
  %17 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %18 = call %struct.fnic* @lport_priv(%struct.fc_lport* %17)
  store %struct.fnic* %18, %struct.fnic** %8, align 8
  %19 = load %struct.fnic*, %struct.fnic** %8, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.fnic*, %struct.fnic** %8, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.fnic*, %struct.fnic** %8, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.fnic*, %struct.fnic** %8, align 8
  %32 = getelementptr inbounds %struct.fnic, %struct.fnic* %31, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @KERN_DEBUG, align 4
  %36 = load %struct.fnic*, %struct.fnic** %8, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FNIC_SCSI_DBG(i32 %35, i32 %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %100

43:                                               ; preds = %27
  %44 = load %struct.fnic*, %struct.fnic** %8, align 8
  %45 = getelementptr inbounds %struct.fnic, %struct.fnic* %44, i32 0, i32 1
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %49 = call i64 @fnic_reset(%struct.Scsi_Host* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @SUCCESS, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @FAILED, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* @FNIC_HOST_RESET_SETTLE_TIME, align 8
  %63 = load i64, i64* @HZ, align 8
  %64 = mul i64 %62, %63
  %65 = add i64 %61, %64
  store i64 %65, i64* %5, align 8
  %66 = load i32, i32* @FAILED, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %85, %60
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @time_before(i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LPORT_ST_READY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %80 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @SUCCESS, align 4
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %78, %72
  %86 = call i32 @ssleep(i32 1)
  br label %67

87:                                               ; preds = %83, %67
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.fnic*, %struct.fnic** %8, align 8
  %90 = getelementptr inbounds %struct.fnic, %struct.fnic* %89, i32 0, i32 1
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.fnic*, %struct.fnic** %8, align 8
  %94 = getelementptr inbounds %struct.fnic, %struct.fnic* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.fnic*, %struct.fnic** %8, align 8
  %96 = getelementptr inbounds %struct.fnic, %struct.fnic* %95, i32 0, i32 1
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %88, %30
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*) #1

declare dso_local i64 @fnic_reset(%struct.Scsi_Host*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
