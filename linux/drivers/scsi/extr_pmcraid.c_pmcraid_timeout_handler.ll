; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i32, %struct.TYPE_8__*, %struct.pmcraid_instance* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.pmcraid_instance = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.pmcraid_cmd*, i64, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Adapter being reset due to cmd(CDB[0] = %x) timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"no free cmnd block for timeout handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"reset is already in progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cmd is pending but reset in progress\0A\00", align 1
@pmcraid_ioa_reset = common dso_local global i32 0, align 4
@PMC_DEVICE_EVENT_RESET_START = common dso_local global i64 0, align 8
@PMC_DEVICE_EVENT_SHUTDOWN_START = common dso_local global i64 0, align 8
@IOA_STATE_IN_RESET_ALERT = common dso_local global i32 0, align 4
@cmd = common dso_local global %struct.pmcraid_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pmcraid_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_timeout_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca %struct.pmcraid_instance*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %7 = ptrtoint %struct.pmcraid_cmd* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.pmcraid_cmd* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.pmcraid_cmd* %10, %struct.pmcraid_cmd** %3, align 8
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 2
  %13 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %12, align 8
  store %struct.pmcraid_instance* %13, %struct.pmcraid_instance** %4, align 8
  %14 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %15 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %28 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32 %31, i64 %32)
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %1
  %39 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %40 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %42 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %41)
  store %struct.pmcraid_cmd* %42, %struct.pmcraid_cmd** %3, align 8
  %43 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %44 = icmp eq %struct.pmcraid_cmd* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %47 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  %53 = call i32 @pmcraid_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %115

54:                                               ; preds = %38
  %55 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %57 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %56, i32 0, i32 4
  store %struct.pmcraid_cmd* %55, %struct.pmcraid_cmd** %57, align 8
  %58 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %59 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %80

60:                                               ; preds = %1
  %61 = call i32 @pmcraid_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %63 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %62, i32 0, i32 4
  %64 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %63, align 8
  %65 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %66 = icmp ne %struct.pmcraid_cmd* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @pmcraid_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %71 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %72 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %71, i32 0, i32 4
  %73 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %72, align 8
  %74 = icmp eq %struct.pmcraid_cmd* %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @pmcraid_ioa_reset, align 4
  %77 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %78 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %82 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PMC_DEVICE_EVENT_RESET_START, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %89 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PMC_DEVICE_EVENT_SHUTDOWN_START, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %96 = load i64, i64* @PMC_DEVICE_EVENT_RESET_START, align 8
  %97 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %87, %80
  %99 = load i32, i32* @IOA_STATE_IN_RESET_ALERT, align 4
  %100 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %101 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %103 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @scsi_block_requests(%struct.TYPE_10__* %104)
  %106 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %107 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %106)
  %108 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %109 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %98, %45
  ret void
}

declare dso_local %struct.pmcraid_cmd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance*, i64) #1

declare dso_local i32 @scsi_block_requests(%struct.TYPE_10__*) #1

declare dso_local i32 @pmcraid_reset_alert(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
