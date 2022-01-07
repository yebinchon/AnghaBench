; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_cmnd = type { i64, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_vq = type { i32 }
%struct.virtio_scsi_cmd = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.scsi_cmnd* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"cmd %p CDB: %#02x\0A\00", align 1
@VIRTIO_SCSI_CDB_SIZE = common dso_local global i32 0, align 4
@SCMD_LAST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_BAD_TARGET = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@VIRTIO_SCSI_F_T10_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @virtscsi_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.virtio_scsi*, align 8
  %7 = alloca %struct.virtio_scsi_vq*, align 8
  %8 = alloca %struct.virtio_scsi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.virtio_scsi* %14, %struct.virtio_scsi** %6, align 8
  %15 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = call %struct.virtio_scsi_vq* @virtscsi_pick_vq_mq(%struct.virtio_scsi* %15, %struct.scsi_cmnd* %16)
  store %struct.virtio_scsi_vq* %17, %struct.virtio_scsi_vq** %7, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %19 = call %struct.virtio_scsi_cmd* @scsi_cmd_priv(%struct.scsi_cmnd* %18)
  store %struct.virtio_scsi_cmd* %19, %struct.virtio_scsi_cmd** %8, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %20)
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %39, i32 %44)
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %47 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %47, i32 0, i32 2
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VIRTIO_SCSI_CDB_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %57 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = call i32 @virtio_scsi_init_hdr(i32 %58, %struct.TYPE_12__* %61, %struct.scsi_cmnd* %62)
  %64 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32 %68, i32* %71, i32 %74)
  store i32 4, i32* %11, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SCMD_LAST, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %84 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @virtscsi_add_cmd(%struct.virtio_scsi_vq* %83, %struct.virtio_scsi_cmd* %84, i32 %85, i32 4, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %2
  %93 = load i32, i32* @VIRTIO_SCSI_S_BAD_TARGET, align 4
  %94 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %99 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %98, i32 0, i32 0
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %103 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %104 = call i32 @virtscsi_complete_cmd(%struct.virtio_scsi* %102, %struct.virtio_scsi_cmd* %103)
  %105 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %7, align 8
  %106 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %105, i32 0, i32 0
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %115

109:                                              ; preds = %2
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %113, i32* %3, align 4
  br label %116

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %92
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.virtio_scsi_vq* @virtscsi_pick_vq_mq(%struct.virtio_scsi*, %struct.scsi_cmnd*) #1

declare dso_local %struct.virtio_scsi_cmd* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @virtio_scsi_init_hdr(i32, %struct.TYPE_12__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @virtscsi_add_cmd(%struct.virtio_scsi_vq*, %struct.virtio_scsi_cmd*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtscsi_complete_cmd(%struct.virtio_scsi*, %struct.virtio_scsi_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
