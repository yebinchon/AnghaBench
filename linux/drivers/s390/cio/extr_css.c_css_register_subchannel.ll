; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_register_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_register_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i64, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@channel_subsystems = common dso_local global %struct.TYPE_6__** null, align 8
@css_bus_type = common dso_local global i32 0, align 4
@default_subch_attr_groups = common dso_local global i32 0, align 4
@SUBCHANNEL_TYPE_IO = common dso_local global i64 0, align 8
@io_subchannel_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not register sch 0.%x.%04x: %d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @css_register_subchannel(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @channel_subsystems, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %5, i64 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* %8, i32** %11, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32* @css_bus_type, i32** %14, align 8
  %15 = load i32, i32* @default_subch_attr_groups, align 4
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SUBCHANNEL_TYPE_IO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %26 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32* @io_subchannel_type, i32** %27, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 1
  %31 = call i32 @dev_set_uevent_suppress(%struct.TYPE_5__* %30, i32 1)
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = call i32 @css_update_ssd_info(%struct.subchannel* %32)
  %34 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %35 = call i32 @css_sch_device_register(%struct.subchannel* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %66

50:                                               ; preds = %28
  %51 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %52 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 1
  %58 = call i32 @dev_set_uevent_suppress(%struct.TYPE_5__* %57, i32 0)
  %59 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* @KOBJ_ADD, align 4
  %63 = call i32 @kobject_uevent(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %38
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

declare dso_local i32 @css_sch_device_register(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
