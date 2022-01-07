; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Scsi_Host*)* }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"scsi_eh_%d: sleeping\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"scsi_eh_%d: waking up %d/%d/%d\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"scsi_eh_%d: unable to autoresume\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error handler scsi_eh_%d exiting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_error_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %3, align 8
  br label %6

6:                                                ; preds = %1, %29, %64, %102
  %7 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %8 = call i32 @set_current_state(i32 %7)
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %103

12:                                               ; preds = %6
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %27 = call i64 @scsi_host_busy(%struct.Scsi_Host* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, %struct.Scsi_Host*, i8*, i32, ...) @shost_printk(i32 %30, %struct.Scsi_Host* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %35)
  %37 = call i32 (...) @schedule()
  br label %6

38:                                               ; preds = %22
  %39 = load i32, i32* @TASK_RUNNING, align 4
  %40 = call i32 @__set_current_state(i32 %39)
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %53 = call i64 @scsi_host_busy(%struct.Scsi_Host* %52)
  %54 = call i32 (i32, %struct.Scsi_Host*, i8*, i32, ...) @shost_printk(i32 %41, %struct.Scsi_Host* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %48, i64 %51, i64 %53)
  %55 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %54)
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %38
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %62 = call i64 @scsi_autopm_get_host(%struct.Scsi_Host* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, %struct.Scsi_Host*, i8*, i32, ...) @shost_printk(i32 %65, %struct.Scsi_Host* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %70)
  br label %6

72:                                               ; preds = %60, %38
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %76, align 8
  %78 = icmp ne i32 (%struct.Scsi_Host*)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %83, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %86 = call i32 %84(%struct.Scsi_Host* %85)
  br label %90

87:                                               ; preds = %72
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %89 = call i32 @scsi_unjam_host(%struct.Scsi_Host* %88)
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %94 = call i32 @scsi_restart_operations(%struct.Scsi_Host* %93)
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %101 = call i32 @scsi_autopm_put_host(%struct.Scsi_Host* %100)
  br label %102

102:                                              ; preds = %99, %90
  br label %6

103:                                              ; preds = %11
  %104 = load i32, i32* @TASK_RUNNING, align 4
  %105 = call i32 @__set_current_state(i32 %104)
  %106 = load i32, i32* @KERN_INFO, align 4
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %109 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, %struct.Scsi_Host*, i8*, i32, ...) @shost_printk(i32 %106, %struct.Scsi_Host* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %111)
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  ret i32 0
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @scsi_host_busy(%struct.Scsi_Host*) #1

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32, ...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @scsi_autopm_get_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_unjam_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_restart_operations(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_autopm_put_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
