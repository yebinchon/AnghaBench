; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.snic = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@SNIC_FWRESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"reset:prev reset is in progres\0A\00", align 1
@SNIC_HOST_RESET_TIMEOUT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"reset:Host Reset Failed w/ err %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_reset(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.snic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call %struct.snic* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.snic* %10, %struct.snic** %5, align 8
  %11 = load i32, i32* @FAILED, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.snic*, %struct.snic** %5, align 8
  %13 = call i64 @snic_get_state(%struct.snic* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snic*, %struct.snic** %5, align 8
  %16 = getelementptr inbounds %struct.snic, %struct.snic* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.snic*, %struct.snic** %5, align 8
  %20 = call i64 @snic_get_state(%struct.snic* %19)
  %21 = load i64, i64* @SNIC_FWRESET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.snic*, %struct.snic** %5, align 8
  %25 = getelementptr inbounds %struct.snic, %struct.snic* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %29 = call i32 @SNIC_HOST_INFO(%struct.Scsi_Host* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @SNIC_HOST_RESET_TIMEOUT, align 4
  %31 = call i32 @msleep(i32 %30)
  %32 = load i32, i32* @SUCCESS, align 4
  store i32 %32, i32* %8, align 4
  br label %79

33:                                               ; preds = %2
  %34 = load %struct.snic*, %struct.snic** %5, align 8
  %35 = load i64, i64* @SNIC_FWRESET, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @snic_set_state(%struct.snic* %34, i32 %36)
  %38 = load %struct.snic*, %struct.snic** %5, align 8
  %39 = getelementptr inbounds %struct.snic, %struct.snic* %38, i32 0, i32 1
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %47, %33
  %43 = load %struct.snic*, %struct.snic** %5, align 8
  %44 = getelementptr inbounds %struct.snic, %struct.snic* %43, i32 0, i32 2
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @msecs_to_jiffies(i32 1)
  %49 = call i32 @schedule_timeout(i32 %48)
  br label %42

50:                                               ; preds = %42
  %51 = load %struct.snic*, %struct.snic** %5, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = call i32 @snic_issue_hba_reset(%struct.snic* %51, %struct.scsi_cmnd* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @SNIC_HOST_ERR(%struct.Scsi_Host* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.snic*, %struct.snic** %5, align 8
  %61 = getelementptr inbounds %struct.snic, %struct.snic* %60, i32 0, i32 1
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.snic*, %struct.snic** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @snic_set_state(%struct.snic* %64, i32 %65)
  %67 = load %struct.snic*, %struct.snic** %5, align 8
  %68 = getelementptr inbounds %struct.snic, %struct.snic* %67, i32 0, i32 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.snic*, %struct.snic** %5, align 8
  %72 = getelementptr inbounds %struct.snic, %struct.snic* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @atomic64_inc(i32* %74)
  %76 = load i32, i32* @FAILED, align 4
  store i32 %76, i32* %8, align 4
  br label %79

77:                                               ; preds = %50
  %78 = load i32, i32* @SUCCESS, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %56, %23
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local %struct.snic* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @snic_get_state(%struct.snic*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @SNIC_HOST_INFO(%struct.Scsi_Host*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snic_set_state(%struct.snic*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snic_issue_hba_reset(%struct.snic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_HOST_ERR(%struct.Scsi_Host*, i8*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
