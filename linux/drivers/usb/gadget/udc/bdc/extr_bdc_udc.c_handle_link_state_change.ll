; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_udc.c_handle_link_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_udc.c_handle_link_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@.str = private unnamed_addr constant [18 x i8] c"Link state change\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Entered Suspend mode\0A\00", align 1
@DEVICE_SUSPENDED = common dso_local global i32 0, align 4
@REMOTE_WAKEUP_ISSUED = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@FUNC_WAKE_ISSUED = common dso_local global i32 0, align 4
@BDC_TNOTIFY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"sched func_wake_notify\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Resumed from Suspend\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"link state:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdc*, i32)* @handle_link_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_link_state_change(%struct.bdc* %0, i32 %1) #0 {
  %3 = alloca %struct.bdc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bdc* %0, %struct.bdc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bdc*, %struct.bdc** %3, align 8
  %7 = getelementptr inbounds %struct.bdc, %struct.bdc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @dev_dbg(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BDC_PST(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %118 [
    i32 128, label %13
    i32 129, label %52
    i32 130, label %91
  ]

13:                                               ; preds = %2
  %14 = load %struct.bdc*, %struct.bdc** %3, align 8
  %15 = getelementptr inbounds %struct.bdc, %struct.bdc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = load %struct.bdc*, %struct.bdc** %3, align 8
  %22 = getelementptr inbounds %struct.bdc, %struct.bdc* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_5__*)* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %20
  %28 = load %struct.bdc*, %struct.bdc** %3, align 8
  %29 = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.bdc*, %struct.bdc** %3, align 8
  %33 = getelementptr inbounds %struct.bdc, %struct.bdc* %32, i32 0, i32 5
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* @DEVICE_SUSPENDED, align 4
  %36 = load %struct.bdc*, %struct.bdc** %3, align 8
  %37 = getelementptr inbounds %struct.bdc, %struct.bdc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.bdc*, %struct.bdc** %3, align 8
  %41 = getelementptr inbounds %struct.bdc, %struct.bdc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %43, align 8
  %45 = load %struct.bdc*, %struct.bdc** %3, align 8
  %46 = getelementptr inbounds %struct.bdc, %struct.bdc* %45, i32 0, i32 2
  %47 = call i32 %44(%struct.TYPE_5__* %46)
  %48 = load %struct.bdc*, %struct.bdc** %3, align 8
  %49 = getelementptr inbounds %struct.bdc, %struct.bdc* %48, i32 0, i32 5
  %50 = call i32 @spin_lock(i32* %49)
  br label %51

51:                                               ; preds = %27, %20, %13
  br label %124

52:                                               ; preds = %2
  %53 = load %struct.bdc*, %struct.bdc** %3, align 8
  %54 = getelementptr inbounds %struct.bdc, %struct.bdc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @REMOTE_WAKEUP_ISSUED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %52
  %60 = load i32, i32* @REMOTE_WAKEUP_ISSUED, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.bdc*, %struct.bdc** %3, align 8
  %63 = getelementptr inbounds %struct.bdc, %struct.bdc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.bdc*, %struct.bdc** %3, align 8
  %67 = getelementptr inbounds %struct.bdc, %struct.bdc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @USB_SPEED_SUPER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %59
  %73 = load %struct.bdc*, %struct.bdc** %3, align 8
  %74 = call i32 @bdc_function_wake_fh(%struct.bdc* %73, i32 0)
  %75 = load i32, i32* @FUNC_WAKE_ISSUED, align 4
  %76 = load %struct.bdc*, %struct.bdc** %3, align 8
  %77 = getelementptr inbounds %struct.bdc, %struct.bdc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.bdc*, %struct.bdc** %3, align 8
  %81 = getelementptr inbounds %struct.bdc, %struct.bdc* %80, i32 0, i32 4
  %82 = load i32, i32* @BDC_TNOTIFY, align 4
  %83 = call i32 @msecs_to_jiffies(i32 %82)
  %84 = call i32 @schedule_delayed_work(i32* %81, i32 %83)
  %85 = load %struct.bdc*, %struct.bdc** %3, align 8
  %86 = getelementptr inbounds %struct.bdc, %struct.bdc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %72, %59
  br label %90

90:                                               ; preds = %89, %52
  br label %124

91:                                               ; preds = %2
  %92 = load %struct.bdc*, %struct.bdc** %3, align 8
  %93 = getelementptr inbounds %struct.bdc, %struct.bdc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.bdc*, %struct.bdc** %3, align 8
  %97 = getelementptr inbounds %struct.bdc, %struct.bdc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DEVICE_SUSPENDED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %91
  %103 = load %struct.bdc*, %struct.bdc** %3, align 8
  %104 = getelementptr inbounds %struct.bdc, %struct.bdc* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %106, align 8
  %108 = load %struct.bdc*, %struct.bdc** %3, align 8
  %109 = getelementptr inbounds %struct.bdc, %struct.bdc* %108, i32 0, i32 2
  %110 = call i32 %107(%struct.TYPE_5__* %109)
  %111 = load i32, i32* @DEVICE_SUSPENDED, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.bdc*, %struct.bdc** %3, align 8
  %114 = getelementptr inbounds %struct.bdc, %struct.bdc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %102, %91
  br label %124

118:                                              ; preds = %2
  %119 = load %struct.bdc*, %struct.bdc** %3, align 8
  %120 = getelementptr inbounds %struct.bdc, %struct.bdc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %117, %90, %51
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @BDC_PST(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bdc_function_wake_fh(%struct.bdc*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
