; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32 }
%struct.ccw_device = type { i32 }

@raw3215_device_lock = common dso_local global i32 0, align 4
@NR_3215 = common dso_local global i32 0, align 4
@raw3215 = common dso_local global %struct.raw3215_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @raw3215_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = call i32 @ccw_device_set_offline(%struct.ccw_device* %5)
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = call %struct.raw3215_info* @dev_get_drvdata(i32* %8)
  store %struct.raw3215_info* %9, %struct.raw3215_info** %3, align 8
  %10 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %11 = icmp ne %struct.raw3215_info* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* @raw3215_device_lock)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %28, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NR_3215, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %19, i64 %21
  %23 = load %struct.raw3215_info*, %struct.raw3215_info** %22, align 8
  %24 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %25 = icmp eq %struct.raw3215_info* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %14

31:                                               ; preds = %26, %14
  %32 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %32, i64 %34
  store %struct.raw3215_info* null, %struct.raw3215_info** %35, align 8
  %36 = call i32 @spin_unlock(i32* @raw3215_device_lock)
  %37 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = call i32 @dev_set_drvdata(i32* %38, i32* null)
  %40 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %41 = call i32 @raw3215_free_info(%struct.raw3215_info* %40)
  br label %42

42:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

declare dso_local %struct.raw3215_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @raw3215_free_info(%struct.raw3215_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
