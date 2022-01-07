; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_backend_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_backend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32, i32 }
%struct.xenfb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request-update\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"feature-resize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @xenfb_backend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_backend_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenfb_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 2
  %8 = call %struct.xenfb_info* @dev_get_drvdata(i32* %7)
  store %struct.xenfb_info* %8, %struct.xenfb_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %50 [
    i32 131, label %10
    i32 132, label %10
    i32 129, label %10
    i32 130, label %10
    i32 128, label %10
    i32 133, label %11
    i32 134, label %14
    i32 136, label %40
    i32 135, label %47
  ]

10:                                               ; preds = %2, %2, %2, %2, %2
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = call i32 @xenbus_switch_state(%struct.xenbus_device* %12, i32 134)
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 134
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %21 = call i32 @xenbus_switch_state(%struct.xenbus_device* %20, i32 134)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %24 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xenbus_read_unsigned(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %32 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %35 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xenbus_read_unsigned(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %38 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %39 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %50

40:                                               ; preds = %2
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %42 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 136
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %2, %46
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %49 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %48)
  br label %50

50:                                               ; preds = %2, %47, %45, %33, %11, %10
  ret void
}

declare dso_local %struct.xenfb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
