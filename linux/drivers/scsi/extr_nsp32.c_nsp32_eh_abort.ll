; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_eh_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@NSP32_DEBUG_BUSRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"abort failed\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SDTR_INITIATOR = common dso_local global i32 0, align 4
@SDTR_TARGET = common dso_local global i32 0, align 4
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@BM_CNT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"abort success\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp32_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @KERN_WARNING, align 4
  %22 = call i32 @nsp32_msg(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @NSP32_DEBUG_BUSRESET, align 4
  %31 = call i32 @nsp32_dbg(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @FAILED, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SDTR_INITIATOR, align 4
  %40 = load i32, i32* @SDTR_TARGET, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @nsp32_set_async(%struct.TYPE_10__* %49, %struct.TYPE_11__* %52)
  br label %54

54:                                               ; preds = %44, %33
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TRANSFER_CONTROL, align 4
  %57 = call i32 @nsp32_write2(i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BM_CNT, align 4
  %60 = call i32 @nsp32_write2(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @DID_ABORT, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %66 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %65)
  %67 = load i32, i32* @NSP32_DEBUG_BUSRESET, align 4
  %68 = call i32 @nsp32_dbg(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @SUCCESS, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %54, %29
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i32 @nsp32_dbg(i32, i8*) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_scsi_done(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
