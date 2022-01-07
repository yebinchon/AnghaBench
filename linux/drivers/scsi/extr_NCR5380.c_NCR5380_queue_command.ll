; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32*, i32, i32 (%struct.scsi_cmnd*)* }
%struct.NCR5380_hostdata = type { i32, i32, i32, i32 }
%struct.NCR5380_cmd = type { i32 }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@NDEBUG_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"command %p added to %s of queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @NCR5380_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_queue_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.NCR5380_hostdata*, align 8
  %7 = alloca %struct.NCR5380_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.NCR5380_hostdata* %10, %struct.NCR5380_hostdata** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call %struct.NCR5380_cmd* @scsi_cmd_priv(%struct.scsi_cmnd* %11)
  store %struct.NCR5380_cmd* %12, %struct.NCR5380_cmd** %7, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = call i32 @NCR5380_acquire_dma_irq(%struct.Scsi_Host* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %22 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REQUEST_SENSE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.NCR5380_cmd*, %struct.NCR5380_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.NCR5380_cmd, %struct.NCR5380_cmd* %33, i32 0, i32 0
  %35 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %36 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %35, i32 0, i32 3
  %37 = call i32 @list_add(i32* %34, i32* %36)
  br label %44

38:                                               ; preds = %20
  %39 = load %struct.NCR5380_cmd*, %struct.NCR5380_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.NCR5380_cmd, %struct.NCR5380_cmd* %39, i32 0, i32 0
  %41 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %42 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %41, i32 0, i32 3
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %46 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %45, i32 0, i32 2
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* @NDEBUG_QUEUES, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @REQUEST_SENSE, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @dsprintk(i32 %49, %struct.Scsi_Host* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %51, i8* %60)
  %62 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %63 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %6, align 8
  %66 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %65, i32 0, i32 0
  %67 = call i32 @queue_work(i32 %64, i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %44, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.NCR5380_cmd* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @NCR5380_acquire_dma_irq(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dsprintk(i32, %struct.Scsi_Host*, i8*, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
