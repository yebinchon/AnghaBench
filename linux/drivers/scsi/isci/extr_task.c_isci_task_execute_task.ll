; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_task_execute_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_task.c_isci_task_execute_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32, i32, i32 }
%struct.isci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.isci_remote_device = type { i32 }

@SCI_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"task: %p, dev: %p idev: %p:%#lx cmd = %p\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i32 0, align 4
@SAS_DEVICE_UNKNOWN = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i64 0, align 8
@SAS_TASK_COMPLETE = common dso_local global i32 0, align 4
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@SAM_STAT_TASK_ABORTED = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@IDEV_GONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_task_execute_task(%struct.sas_task* %0, i32 %1) #0 {
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.isci_remote_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %12 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.isci_host* @dev_to_ihost(i32 %13)
  store %struct.isci_host* %14, %struct.isci_host** %5, align 8
  %15 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %17 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.isci_remote_device* @isci_lookup_device(i32 %22)
  store %struct.isci_remote_device* %23, %struct.isci_remote_device** %6, align 8
  %24 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %26 = call i32 @isci_device_io_ready(%struct.isci_remote_device* %24, %struct.sas_task* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %28 = call i64 @isci_alloc_tag(%struct.isci_host* %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %34 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %38 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %39 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %42 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %43 = icmp ne %struct.isci_remote_device* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %46 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  %51 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %52 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.sas_task* %37, i32 %40, %struct.isci_remote_device* %41, i32 %50, i32 %53)
  %55 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %56 = icmp ne %struct.isci_remote_device* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %59 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %60 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %61 = load i32, i32* @SAS_DEVICE_UNKNOWN, align 4
  %62 = call i32 @isci_task_refuse(%struct.isci_host* %58, %struct.sas_task* %59, i32 %60, i32 %61)
  br label %151

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %63
  %71 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %72 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %73 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %74 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %75 = call i32 @isci_task_refuse(%struct.isci_host* %71, %struct.sas_task* %72, i32 %73, i32 %74)
  br label %150

76:                                               ; preds = %66
  %77 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %82 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %89 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %88, i32 0, i32 1
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %93 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %94 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %95 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  %96 = call i32 @isci_task_refuse(%struct.isci_host* %92, %struct.sas_task* %93, i32 %94, i32 %95)
  br label %149

97:                                               ; preds = %76
  %98 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %99 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %100 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 1
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %108 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %109 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @isci_request_execute(%struct.isci_host* %107, %struct.isci_remote_device* %108, %struct.sas_task* %109, i64 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @SCI_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %97
  %116 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %117 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %116, i32 0, i32 1
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %123 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %127 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %126, i32 0, i32 1
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* @IDEV_GONE, align 4
  %131 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %132 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %131, i32 0, i32 0
  %133 = call i64 @test_bit(i32 %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %115
  %136 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %137 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %138 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %139 = load i32, i32* @SAS_DEVICE_UNKNOWN, align 4
  %140 = call i32 @isci_task_refuse(%struct.isci_host* %136, %struct.sas_task* %137, i32 %138, i32 %139)
  br label %147

141:                                              ; preds = %115
  %142 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %143 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %144 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %145 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %146 = call i32 @isci_task_refuse(%struct.isci_host* %142, %struct.sas_task* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %135
  br label %148

148:                                              ; preds = %147, %97
  br label %149

149:                                              ; preds = %148, %87
  br label %150

150:                                              ; preds = %149, %70
  br label %151

151:                                              ; preds = %150, %57
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @SCI_SUCCESS, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %161 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %160, i32 0, i32 0
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @ISCI_TAG_TCI(i64 %165)
  %167 = call i32 @isci_tci_free(%struct.isci_host* %164, i32 %166)
  %168 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %169 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %168, i32 0, i32 0
  %170 = load i64, i64* %7, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %172

172:                                              ; preds = %159, %155, %151
  %173 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %174 = call i32 @isci_put_device(%struct.isci_remote_device* %173)
  ret i32 0
}

declare dso_local %struct.isci_host* @dev_to_ihost(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.isci_remote_device* @isci_lookup_device(i32) #1

declare dso_local i32 @isci_device_io_ready(%struct.isci_remote_device*, %struct.sas_task*) #1

declare dso_local i64 @isci_alloc_tag(%struct.isci_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.sas_task*, i32, %struct.isci_remote_device*, i32, i32) #1

declare dso_local i32 @isci_task_refuse(%struct.isci_host*, %struct.sas_task*, i32, i32) #1

declare dso_local i32 @isci_request_execute(%struct.isci_host*, %struct.isci_remote_device*, %struct.sas_task*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @isci_tci_free(%struct.isci_host*, i32) #1

declare dso_local i32 @ISCI_TAG_TCI(i64) #1

declare dso_local i32 @isci_put_device(%struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
