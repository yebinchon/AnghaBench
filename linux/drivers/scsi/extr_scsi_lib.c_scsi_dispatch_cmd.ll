; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_dispatch_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_dispatch_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i64, {}*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.Scsi_Host*, i64, i32 }
%struct.Scsi_Host = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* }

@SDEV_DEL = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"queuecommand : device blocked\0A\00", align 1
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"queuecommand : command too long. cdb_size=%d host->max_cmd_len=%d\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SHOST_DEL = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"queuecommand : request rejected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsi_dispatch_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dispatch_cmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDEV_DEL, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @DID_NO_CONNECT, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %150

31:                                               ; preds = %1
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @scsi_device_blocked(%struct.TYPE_4__* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %39, %struct.scsi_cmnd* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %41)
  %43 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %43, i32* %2, align 4
  br label %157

44:                                               ; preds = %31
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 31
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 5
  %64 = and i32 %63, 224
  %65 = or i32 %57, %64
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %51, %44
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = call i32 @scsi_log_send(%struct.scsi_cmnd* %71)
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %79, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %75, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %70
  %85 = load i32, i32* @KERN_INFO, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %93, align 8
  %95 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %85, %struct.scsi_cmnd* %86, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %89, i64 %96)
  %98 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %97)
  %99 = load i32, i32* @DID_ABORT, align 4
  %100 = shl i32 %99, 16
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %150

103:                                              ; preds = %70
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SHOST_DEL, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* @DID_NO_CONNECT, align 4
  %114 = shl i32 %113, 16
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %150

117:                                              ; preds = %103
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %119 = call i32 @trace_scsi_dispatch_cmd_start(%struct.scsi_cmnd* %118)
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %121 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)*, i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)** %123, align 8
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = call i32 %124(%struct.Scsi_Host* %125, %struct.scsi_cmnd* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %117
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @trace_scsi_dispatch_cmd_error(%struct.scsi_cmnd* %131, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %137, %130
  %144 = load i32, i32* @KERN_INFO, align 4
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %146 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %144, %struct.scsi_cmnd* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %147 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %146)
  br label %148

148:                                              ; preds = %143, %117
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %157

150:                                              ; preds = %112, %84, %26
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %152 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %151, i32 0, i32 3
  %153 = bitcast {}** %152 to i32 (%struct.scsi_cmnd*)**
  %154 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %153, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %156 = call i32 %154(%struct.scsi_cmnd* %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %150, %148, %38
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_device_blocked(%struct.TYPE_4__*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i32 @scsi_log_send(%struct.scsi_cmnd*) #1

declare dso_local i32 @trace_scsi_dispatch_cmd_start(%struct.scsi_cmnd*) #1

declare dso_local i32 @trace_scsi_dispatch_cmd_error(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
