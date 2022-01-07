; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32 }
%struct.NCR5380_hostdata = type { %struct.scsi_cmnd*, i32 }

@NDEBUG_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"complete_cmd: cmd %p\0A\00", align 1
@GOOD = common dso_local global i64 0, align 8
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_cmd(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.NCR5380_hostdata*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %6)
  store %struct.NCR5380_hostdata* %7, %struct.NCR5380_hostdata** %5, align 8
  %8 = load i32, i32* @NDEBUG_QUEUES, align 4
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call i32 @dsprintk(i32 %8, %struct.Scsi_Host* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %10)
  %12 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %13 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %12, i32 0, i32 0
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = icmp eq %struct.scsi_cmnd* %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @status_byte(i32 %20)
  %22 = load i64, i64* @GOOD, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %27 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %26, i32 0, i32 1
  %28 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %25, i32* %27)
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %32 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %31, i32 0, i32 1
  %33 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %30, i32* %32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = load i32, i32* @DRIVER_SENSE, align 4
  %36 = call i32 @set_driver_byte(%struct.scsi_cmnd* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %39 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %38, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %39, align 8
  br label %40

40:                                               ; preds = %37, %2
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %42, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = call i32 %43(%struct.scsi_cmnd* %44)
  ret void
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dsprintk(i32, %struct.Scsi_Host*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i64 @status_byte(i32) #1

declare dso_local i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @set_driver_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
