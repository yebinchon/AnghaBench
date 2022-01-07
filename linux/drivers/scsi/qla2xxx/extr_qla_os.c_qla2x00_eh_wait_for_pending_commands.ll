; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_for_pending_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_for_pending_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.qla_hw_data = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@SRB_SCSI_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca %struct.req_que*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %13, align 8
  %20 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.req_que*, %struct.req_que** %26, align 8
  store %struct.req_que* %27, %struct.req_que** %14, align 8
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %117, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @QLA_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.req_que*, %struct.req_que** %14, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %120

40:                                               ; preds = %38
  %41 = load %struct.req_que*, %struct.req_que** %14, align 8
  %42 = getelementptr inbounds %struct.req_que, %struct.req_que* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %15, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %117

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SRB_SCSI_CMD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %117

58:                                               ; preds = %51
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %117

69:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %71 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_9__* %70)
  store %struct.scsi_cmnd* %71, %struct.scsi_cmnd** %16, align 8
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %102 [
    i32 130, label %73
    i32 128, label %74
    i32 129, label %83
  ]

73:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  br label %102

74:                                               ; preds = %69
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %102

83:                                               ; preds = %69
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %91, %83
  %100 = phi i1 [ false, %83 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %69, %99, %74, %73
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %117

106:                                              ; preds = %102
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %108 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %107, i32 0, i32 0
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %112 = call i32 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd* %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 0
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %106, %105, %68, %57, %50
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %28

120:                                              ; preds = %38
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 0
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
