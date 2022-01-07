; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.chsc_private = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Detected chsc subchannel 0.%x.%04x\0A\00", align 1
@CHSC_SCH_ISC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enable 0.%x.%04x: %d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @chsc_subchannel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_subchannel_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.chsc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, i32, i32, ...) @CHSC_MSG(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load i32, i32* @CHSC_SCH_ISC, align 4
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.chsc_private* @kzalloc(i32 4, i32 %18)
  store %struct.chsc_private* %19, %struct.chsc_private** %4, align 8
  %20 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %21 = icmp ne %struct.chsc_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 0
  %28 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %29 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %27, %struct.chsc_private* %28)
  %30 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %31 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %32 = ptrtoint %struct.subchannel* %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = call i32 @cio_enable_subchannel(%struct.subchannel* %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @CHSC_MSG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45, i32 %46)
  %48 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %49 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %48, i32 0, i32 0
  %50 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %49, %struct.chsc_private* null)
  %51 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %52 = call i32 @kfree(%struct.chsc_private* %51)
  br label %68

53:                                               ; preds = %25
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 0
  %56 = call i64 @dev_get_uevent_suppress(%struct.TYPE_6__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 0
  %61 = call i32 @dev_set_uevent_suppress(%struct.TYPE_6__* %60, i32 0)
  %62 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %63 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* @KOBJ_ADD, align 4
  %66 = call i32 @kobject_uevent(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @CHSC_MSG(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.chsc_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.chsc_private*) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @kfree(%struct.chsc_private*) #1

declare dso_local i64 @dev_get_uevent_suppress(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
