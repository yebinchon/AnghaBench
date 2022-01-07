; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fnic = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.reset_stats }
%struct.reset_stats = type { i32, i32, i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fnic_reset called\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Returning from fnic reset %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_reset(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reset_stats*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.fc_lport* %8, %struct.fc_lport** %3, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = call %struct.fnic* @lport_priv(%struct.fc_lport* %9)
  store %struct.fnic* %10, %struct.fnic** %4, align 8
  %11 = load %struct.fnic*, %struct.fnic** %4, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.reset_stats* %13, %struct.reset_stats** %6, align 8
  %14 = load i32, i32* @KERN_DEBUG, align 4
  %15 = load %struct.fnic*, %struct.fnic** %4, align 8
  %16 = getelementptr inbounds %struct.fnic, %struct.fnic* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %14, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.reset_stats*, %struct.reset_stats** %6, align 8
  %22 = getelementptr inbounds %struct.reset_stats, %struct.reset_stats* %21, i32 0, i32 2
  %23 = call i32 @atomic64_inc(i32* %22)
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = call i32 @fc_lport_reset(%struct.fc_lport* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @KERN_DEBUG, align 4
  %27 = load %struct.fnic*, %struct.fnic** %4, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %36 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %26, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.reset_stats*, %struct.reset_stats** %6, align 8
  %41 = getelementptr inbounds %struct.reset_stats, %struct.reset_stats* %40, i32 0, i32 1
  %42 = call i32 @atomic64_inc(i32* %41)
  br label %47

43:                                               ; preds = %1
  %44 = load %struct.reset_stats*, %struct.reset_stats** %6, align 8
  %45 = getelementptr inbounds %struct.reset_stats, %struct.reset_stats* %44, i32 0, i32 0
  %46 = call i32 @atomic64_inc(i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, ...) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @fc_lport_reset(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
