; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_quiesce_and_remove_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_quiesce_and_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_dev = type { i32, %struct.rtsx_chip*, i32, i32 }
%struct.rtsx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*)* }
%struct.Scsi_Host = type { i32 }

@RTSX_STAT_DISCONNECT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_dev*)* @quiesce_and_remove_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce_and_remove_host(%struct.rtsx_dev* %0) #0 {
  %2 = alloca %struct.rtsx_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_dev* %0, %struct.rtsx_dev** %2, align 8
  %5 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @rtsx_to_host(%struct.rtsx_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %7, i32 0, i32 1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  store %struct.rtsx_chip* %9, %struct.rtsx_chip** %4, align 8
  %10 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call i32 @scsi_lock(%struct.Scsi_Host* %13)
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %16 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %17 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %15, i32 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = call i32 @scsi_unlock(%struct.Scsi_Host* %18)
  %20 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %23, i32 0, i32 3
  %25 = call i32 @wake_up(i32* %24)
  %26 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %26, i32 0, i32 2
  %28 = call i32 @wait_for_completion(i32* %27)
  %29 = call i32 @wait_timeout(i32 100)
  %30 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %34 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %1
  %38 = load i32, i32* @DID_NO_CONNECT, align 4
  %39 = shl i32 %38, 16
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %41 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %45 = call i32 @scsi_lock(%struct.Scsi_Host* %44)
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %49, align 8
  %51 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %51, i32 0, i32 1
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %52, align 8
  %54 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 %50(%struct.TYPE_2__* %55)
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %58 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %57, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %60 = call i32 @scsi_unlock(%struct.Scsi_Host* %59)
  br label %61

61:                                               ; preds = %37, %1
  %62 = load %struct.rtsx_dev*, %struct.rtsx_dev** %2, align 8
  %63 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %66 = call i32 @scsi_remove_host(%struct.Scsi_Host* %65)
  ret void
}

declare dso_local %struct.Scsi_Host* @rtsx_to_host(%struct.rtsx_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_lock(%struct.Scsi_Host*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @scsi_unlock(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
