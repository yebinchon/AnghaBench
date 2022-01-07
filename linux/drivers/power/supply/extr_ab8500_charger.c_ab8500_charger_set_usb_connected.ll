; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_set_usb_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_set_usb_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"USB connected:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_charger*, i32)* @ab8500_charger_set_usb_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_charger_set_usb_connected(%struct.ab8500_charger* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %7 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %5, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %13 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %19 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  %24 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %25 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %29 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @sysfs_notify(i32* %33, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %27
  %38 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %39 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %42 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %45 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_ab8500(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %51 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %54 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %53, i32 0, i32 1
  %55 = load i32, i32* @HZ, align 4
  %56 = call i32 @queue_delayed_work(i32 %52, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %37
  br label %68

58:                                               ; preds = %27
  %59 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %60 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %59, i32 0, i32 1
  %61 = call i32 @cancel_delayed_work_sync(i32* %60)
  %62 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %63 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %66 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %58, %57
  br label %69

69:                                               ; preds = %68, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_ab8500(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
