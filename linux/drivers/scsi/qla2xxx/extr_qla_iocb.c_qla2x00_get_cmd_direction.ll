; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_get_cmd_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_get_cmd_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i64 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@CF_WRITE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@CF_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @qla2x00_get_cmd_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla2x00_get_cmd_direction(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_6__* %6)
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %5, align 8
  store i64 0, i64* %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_TO_DEVICE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load i64, i64* @CF_WRITE, align 8
  store i64 %17, i64* %3, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %18)
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %19
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %55

32:                                               ; preds = %1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load i64, i64* @CF_READ, align 8
  store i64 %39, i64* %3, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %40)
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %41
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %38, %32
  br label %55

55:                                               ; preds = %54, %16
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_6__*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
