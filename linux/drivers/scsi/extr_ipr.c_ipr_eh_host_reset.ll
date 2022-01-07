; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ipr_ioa_cfg = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_ABBREV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Adapter being reset as a result of error recovery.\0A\00", align 1
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@GET_DUMP = common dso_local global i64 0, align 8
@ipr_trace = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ipr_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @ENTER, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %15, %struct.ipr_ioa_cfg** %3, align 8
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %1
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %27
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %38 = load i32, i32* @IPR_SHUTDOWN_ABBREV, align 4
  %39 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %37, i32 %38)
  %40 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %40, i32 0, i32 5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %46 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %47 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i64, i64* @GET_DUMP, align 8
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %36
  br label %55

55:                                               ; preds = %54, %27, %1
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32 %60, i64 %61)
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %64 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %67 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @wait_event(i32 %65, i32 %71)
  %73 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %74 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spin_lock_irqsave(i32 %77, i64 %78)
  %80 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %81 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %55
  %89 = load i32, i32* @ipr_trace, align 4
  %90 = load i32, i32* @FAILED, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %55
  %92 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %93 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32 %96, i64 %97)
  %99 = load i32, i32* @LEAVE, align 4
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
