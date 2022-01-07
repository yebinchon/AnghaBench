; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_prep_for_scsi_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_prep_for_scsi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqi_prep_for_scsi_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = load i32, i32* @DID_NO_CONNECT, align 4
  %11 = call i32 @set_host_byte(%struct.scsi_cmnd* %9, i32 %10)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %16, align 8
  store %struct.pqi_scsi_dev* %17, %struct.pqi_scsi_dev** %3, align 8
  %18 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %19 = icmp ne %struct.pqi_scsi_dev* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = load i32, i32* @DID_NO_CONNECT, align 4
  %23 = call i32 @set_host_byte(%struct.scsi_cmnd* %21, i32 %22)
  br label %28

24:                                               ; preds = %12
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  br label %28

28:                                               ; preds = %24, %20, %8
  ret void
}

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
