; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_restart_autoscsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_restart_autoscsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@NSP32_DEBUG_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Target or Lun is invalid\00", align 1
@SYNC_REG = common dso_local global i32 0, align 4
@ACK_WIDTH = common dso_local global i32 0, align 4
@SREQ_SMPL_RATE = common dso_local global i32 0, align 4
@SGT_ADR = common dso_local global i32 0, align 4
@TRANSFER_GO = common dso_local global i16 0, align 2
@ALL_COUNTER_CLR = common dso_local global i16 0, align 2
@NSP32_TRANSFER_BUSMASTER = common dso_local global i32 0, align 4
@BM_START = common dso_local global i16 0, align 2
@NSP32_TRANSFER_MMIO = common dso_local global i32 0, align 4
@CB_MMIO_MODE = common dso_local global i16 0, align 2
@NSP32_TRANSFER_PIO = common dso_local global i32 0, align 4
@CB_IO_MODE = common dso_local global i16 0, align 2
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@CLEAR_CDB_FIFO_POINTER = common dso_local global i16 0, align 2
@AUTO_COMMAND_PHASE = common dso_local global i16 0, align 2
@AUTOSCSI_RESTART = common dso_local global i16 0, align 2
@COMMAND_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i16)* @nsp32_restart_autoscsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_restart_autoscsi(%struct.scsi_cmnd* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store i16 0, i16* %7, align 2
  %19 = load i32, i32* @NSP32_DEBUG_RESTART, align 4
  %20 = call i32 @nsp32_dbg(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = call i32 @nsp32_msg(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SYNC_REG, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nsp32_write1(i32 %34, i32 %35, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ACK_WIDTH, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nsp32_write1(i32 %42, i32 %43, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SREQ_SMPL_RATE, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nsp32_write1(i32 %50, i32 %51, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SGT_ADR, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nsp32_write4(i32 %58, i32 %59, i32 %64)
  store i16 0, i16* %7, align 2
  %66 = load i16, i16* @TRANSFER_GO, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @ALL_COUNTER_CLR, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = load i16, i16* %7, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %7, align 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NSP32_TRANSFER_BUSMASTER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %33
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %83 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i16, i16* @BM_START, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* %7, align 2
  %89 = zext i16 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %7, align 2
  br label %92

92:                                               ; preds = %85, %81
  br label %123

93:                                               ; preds = %33
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NSP32_TRANSFER_MMIO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i16, i16* @CB_MMIO_MODE, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* %7, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %7, align 2
  br label %122

107:                                              ; preds = %93
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NSP32_TRANSFER_PIO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i16, i16* @CB_IO_MODE, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* %7, align 2
  %118 = zext i16 %117 to i32
  %119 = or i32 %118, %116
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %7, align 2
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %92
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @TRANSFER_CONTROL, align 4
  %126 = load i16, i16* %7, align 2
  %127 = call i32 @nsp32_write2(i32 %124, i32 %125, i16 zeroext %126)
  %128 = load i16, i16* @CLEAR_CDB_FIFO_POINTER, align 2
  %129 = zext i16 %128 to i32
  %130 = load i16, i16* @AUTO_COMMAND_PHASE, align 2
  %131 = zext i16 %130 to i32
  %132 = or i32 %129, %131
  %133 = load i16, i16* @AUTOSCSI_RESTART, align 2
  %134 = zext i16 %133 to i32
  %135 = or i32 %132, %134
  %136 = load i16, i16* %4, align 2
  %137 = zext i16 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i16
  store i16 %139, i16* %4, align 2
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @COMMAND_CONTROL, align 4
  %142 = load i16, i16* %4, align 2
  %143 = call i32 @nsp32_write2(i32 %140, i32 %141, i16 zeroext %142)
  %144 = load i32, i32* @NSP32_DEBUG_RESTART, align 4
  %145 = call i32 @nsp32_dbg(i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nsp32_dbg(i32, i8*) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_write2(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
