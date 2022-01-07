; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_message.c_nsp_message_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_message.c_nsp_message_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@NSP_DEBUG_MSGINOCCUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"msgin loop\00", align 1
@SCSIDATAIN = common dso_local global i32 0, align 4
@SCSIBUSCTRL = common dso_local global i32 0, align 4
@SCSI_ACK = common dso_local global i8 0, align 1
@BUSMON_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"msgin<REQ>\00", align 1
@BUSPHASE_MESSAGE_IN = common dso_local global i32 0, align 4
@MSGBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp_message_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_message_in(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %4, align 8
  store i32 16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* @NSP_DEBUG_MSGINOCCUR, align 4
  %25 = call i32 @nsp_dbg(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %80, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SCSIDATAIN, align 4
  %29 = call zeroext i8 @nsp_index_read(i32 %27, i32 %28)
  store i8 %29, i8* %5, align 1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SCSIBUSCTRL, align 4
  %32 = call zeroext i8 @nsp_index_read(i32 %30, i32 %31)
  store i8 %32, i8* %6, align 1
  %33 = load i8, i8* @SCSI_ACK, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %6, align 1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SCSIBUSCTRL, align 4
  %41 = load i8, i8* %6, align 1
  %42 = call i32 @nsp_index_write(i32 %39, i32 %40, i8 zeroext %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %44 = load i32, i32* @BUSMON_REQ, align 4
  %45 = call i32 @nsp_negate_signal(%struct.scsi_cmnd* %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8, i8* %5, align 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %46, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SCSIBUSCTRL, align 4
  %57 = call zeroext i8 @nsp_index_read(i32 %55, i32 %56)
  store i8 %57, i8* %6, align 1
  %58 = load i8, i8* @SCSI_ACK, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, -1
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %6, align 1
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @SCSIBUSCTRL, align 4
  %67 = load i8, i8* %6, align 1
  %68 = call i32 @nsp_index_write(i32 %65, i32 %66, i8 zeroext %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %70 = load i32, i32* @BUSPHASE_MESSAGE_IN, align 4
  %71 = load i32, i32* @BUSMON_REQ, align 4
  %72 = call i32 @nsp_expect_signal(%struct.scsi_cmnd* %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %26
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @MSGBUF_SIZE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %26, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  ret void
}

declare dso_local i32 @nsp_dbg(i32, i8*) #1

declare dso_local zeroext i8 @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_index_write(i32, i32, i8 zeroext) #1

declare dso_local i32 @nsp_negate_signal(%struct.scsi_cmnd*, i32, i8*) #1

declare dso_local i32 @nsp_expect_signal(%struct.scsi_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
