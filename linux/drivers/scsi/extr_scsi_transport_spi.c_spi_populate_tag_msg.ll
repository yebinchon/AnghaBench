; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_populate_tag_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_populate_tag_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCMD_TAGGED = common dso_local global i32 0, align 4
@SIMPLE_QUEUE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_populate_tag_msg(i8* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SCMD_TAGGED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* @SIMPLE_QUEUE_TAG, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  store i8 %14, i8* %15, align 1
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  store i32 2, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
