; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_analyze_sdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_analyze_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_sync_table = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@NSP_DEBUG_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"period=0x%x, offset=0x%x\00", align 1
@CLOCK_20M = common dso_local global i32 0, align 4
@nsp_sync_table_20M = common dso_local global %struct.nsp_sync_table* null, align 8
@nsp_sync_table_40M = common dso_local global %struct.nsp_sync_table* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"no proper period/offset\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SYNCREG_PERIOD_SHIFT = common dso_local global i32 0, align 4
@SYNCREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"sync_reg=0x%x, ack_width=0x%x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp_analyze_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_analyze_sdtr(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.nsp_sync_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = call zeroext i8 @scmd_id(%struct.scsi_cmnd* %11)
  store i8 %12, i8* %4, align 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @NSP_DEBUG_SYNC, align 4
  %28 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @NSP_DEBUG_SYNC, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @BIT(i32 0)
  %43 = call i32 @BIT(i32 1)
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @CLOCK_20M, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** @nsp_sync_table_20M, align 8
  store %struct.nsp_sync_table* %49, %struct.nsp_sync_table** %7, align 8
  br label %52

50:                                               ; preds = %1
  %51 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** @nsp_sync_table_40M, align 8
  store %struct.nsp_sync_table* %51, %struct.nsp_sync_table** %7, align 8
  br label %52

52:                                               ; preds = %50, %48
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %55 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %61 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %67 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ule i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %76 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %75, i32 1
  store %struct.nsp_sync_table* %76, %struct.nsp_sync_table** %7, align 8
  br label %53

77:                                               ; preds = %70, %53
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %82 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* @NSP_DEBUG_SYNC, align 4
  %87 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %2, align 4
  br label %123

97:                                               ; preds = %80, %77
  %98 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %99 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SYNCREG_PERIOD_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SYNCREG_OFFSET_MASK, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %102, %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.nsp_sync_table*, %struct.nsp_sync_table** %7, align 8
  %110 = getelementptr inbounds %struct.nsp_sync_table, %struct.nsp_sync_table* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @NSP_DEBUG_SYNC, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %97, %85
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local zeroext i8 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
