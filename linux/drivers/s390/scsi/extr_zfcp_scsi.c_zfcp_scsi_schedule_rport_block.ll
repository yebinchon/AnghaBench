; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_schedule_rport_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_schedule_rport_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@RPORT_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_scsi_schedule_rport_block(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %3 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %3, i32 0, i32 0
  %5 = call i32 @get_device(i32* %4)
  %6 = load i32, i32* @RPORT_DEL, align 4
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 1
  %21 = call i64 @queue_work(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %28

24:                                               ; preds = %13, %1
  %25 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %25, i32 0, i32 0
  %27 = call i32 @put_device(i32* %26)
  br label %28

28:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
