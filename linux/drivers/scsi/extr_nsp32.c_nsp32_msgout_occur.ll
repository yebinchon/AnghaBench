; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_msgout_occur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_msgout_occur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@NSP32_DEBUG_MSGOUTOCCUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"enter: msgout_len: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d : 0x%x\00", align 1
@ASSERT = common dso_local global i32 0, align 4
@COMMAND_CONTROL = common dso_local global i32 0, align 4
@CLEAR_CDB_FIFO_POINTER = common dso_local global i32 0, align 4
@AUTO_COMMAND_PHASE = common dso_local global i32 0, align 4
@AUTOSCSI_RESTART = common dso_local global i32 0, align 4
@AUTO_MSGIN_00_OR_04 = common dso_local global i32 0, align 4
@AUTO_MSGIN_02 = common dso_local global i32 0, align 4
@SCSI_DATA_WITH_ACK = common dso_local global i32 0, align 4
@NEGATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"bus: 0x%x\0A\00", align 1
@SCSI_BUS_MONITOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp32_msgout_occur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_msgout_occur(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @NSP32_DEBUG_MSGOUTOCCUR, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %33 = call i32 @nsp32_build_nop(%struct.scsi_cmnd* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 %40, %47
  store i64 %48, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %107, %34
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %49
  %56 = load i32, i32* @NSP32_DEBUG_MSGOUTOCCUR, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = load i32, i32* @ASSERT, align 4
  %68 = call i32 @nsp32_wait_req(%struct.TYPE_10__* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %55
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @COMMAND_CONTROL, align 4
  %78 = load i32, i32* @CLEAR_CDB_FIFO_POINTER, align 4
  %79 = load i32, i32* @AUTO_COMMAND_PHASE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AUTOSCSI_RESTART, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @AUTO_MSGIN_00_OR_04, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @AUTO_MSGIN_02, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @nsp32_write2(i32 %76, i32 %77, i32 %86)
  br label %88

88:                                               ; preds = %75, %55
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SCSI_DATA_WITH_ACK, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nsp32_write1(i32 %89, i32 %90, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = load i32, i32* @NEGATE, align 4
  %101 = call i32 @nsp32_wait_sack(%struct.TYPE_10__* %99, i32 %100)
  %102 = load i32, i32* @NSP32_DEBUG_MSGOUTOCCUR, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @SCSI_BUS_MONITOR, align 4
  %105 = call i32 @nsp32_read1(i32 %103, i32 %104)
  %106 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %49

110:                                              ; preds = %49
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* @NSP32_DEBUG_MSGOUTOCCUR, align 4
  %114 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_build_nop(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_wait_req(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_write1(i32, i32, i32) #1

declare dso_local i32 @nsp32_wait_sack(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @nsp32_read1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
