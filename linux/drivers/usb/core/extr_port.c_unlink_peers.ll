; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_unlink_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_unlink_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_port = type { %struct.TYPE_4__, %struct.usb_port*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s and %s are not peers?\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_port*, %struct.usb_port*)* @unlink_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_peers(%struct.usb_port* %0, %struct.usb_port* %1) #0 {
  %3 = alloca %struct.usb_port*, align 8
  %4 = alloca %struct.usb_port*, align 8
  %5 = alloca %struct.usb_port*, align 8
  %6 = alloca %struct.usb_port*, align 8
  store %struct.usb_port* %0, %struct.usb_port** %3, align 8
  store %struct.usb_port* %1, %struct.usb_port** %4, align 8
  %7 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %8 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %7, i32 0, i32 1
  %9 = load %struct.usb_port*, %struct.usb_port** %8, align 8
  %10 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %11 = icmp ne %struct.usb_port* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %14 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %13, i32 0, i32 1
  %15 = load %struct.usb_port*, %struct.usb_port** %14, align 8
  %16 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %17 = icmp ne %struct.usb_port* %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %22 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 0
  %23 = call i32 @dev_name(%struct.TYPE_4__* %22)
  %24 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %25 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %24, i32 0, i32 0
  %26 = call i32 @dev_name(%struct.TYPE_4__* %25)
  %27 = call i32 @WARN(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %29 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  store %struct.usb_port* %33, %struct.usb_port** %5, align 8
  %34 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  store %struct.usb_port* %34, %struct.usb_port** %6, align 8
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  store %struct.usb_port* %36, %struct.usb_port** %5, align 8
  %37 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  store %struct.usb_port* %37, %struct.usb_port** %6, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %40 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_get_sync(%struct.TYPE_4__* %40)
  %42 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %43 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_remove_link(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %46, i32 0, i32 1
  store %struct.usb_port* null, %struct.usb_port** %47, align 8
  %48 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %49 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @sysfs_remove_link(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %53 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %52, i32 0, i32 1
  store %struct.usb_port* null, %struct.usb_port** %53, align 8
  %54 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %55 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %54, i32 0, i32 0
  %56 = call i32 @pm_runtime_put(%struct.TYPE_4__* %55)
  %57 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %58 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %57, i32 0, i32 0
  %59 = call i32 @pm_runtime_put(%struct.TYPE_4__* %58)
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
