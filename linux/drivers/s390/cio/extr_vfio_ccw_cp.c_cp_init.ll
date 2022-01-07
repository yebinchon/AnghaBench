; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_cp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_cp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_program = type { i32, %struct.TYPE_6__, %struct.device*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%union.orb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_init(%struct.channel_program* %0, %struct.device* %1, %union.orb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_program*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %union.orb*, align 8
  %8 = alloca i32, align 4
  store %struct.channel_program* %0, %struct.channel_program** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %union.orb* %2, %union.orb** %7, align 8
  %9 = load %union.orb*, %union.orb** %7, align 8
  %10 = bitcast %union.orb* %9 to %struct.TYPE_5__*
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %19 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %22 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %21, i32 0, i32 1
  %23 = load %union.orb*, %union.orb** %7, align 8
  %24 = call i32 @memcpy(%struct.TYPE_6__* %22, %union.orb* %23, i32 8)
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %27 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %26, i32 0, i32 2
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %union.orb*, %union.orb** %7, align 8
  %29 = bitcast %union.orb* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %33 = call i32 @ccwchain_handle_ccw(i32 %31, %struct.channel_program* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %17
  %37 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %38 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %40 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %17
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %union.orb*, i32) #1

declare dso_local i32 @ccwchain_handle_ccw(i32, %struct.channel_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
