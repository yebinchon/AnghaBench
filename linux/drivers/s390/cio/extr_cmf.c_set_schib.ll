; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_schib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_schib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i32, i64)* @set_schib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_schib(%struct.ccw_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.subchannel*, align 8
  %10 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.subchannel* @to_subchannel(i32 %14)
  store %struct.subchannel* %15, %struct.subchannel** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  br label %36

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %38 = call i32 @cio_commit_config(%struct.subchannel* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %41, %36
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
