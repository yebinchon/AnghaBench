; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_fetch_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_fetch_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwchain = type { %struct.ccw1* }
%struct.ccw1 = type { i32 }
%struct.channel_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwchain*, i32, %struct.channel_program*)* @ccwchain_fetch_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwchain_fetch_one(%struct.ccwchain* %0, i32 %1, %struct.channel_program* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccwchain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel_program*, align 8
  %8 = alloca %struct.ccw1*, align 8
  store %struct.ccwchain* %0, %struct.ccwchain** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.channel_program* %2, %struct.channel_program** %7, align 8
  %9 = load %struct.ccwchain*, %struct.ccwchain** %5, align 8
  %10 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %9, i32 0, i32 0
  %11 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %11, i64 %13
  store %struct.ccw1* %14, %struct.ccw1** %8, align 8
  %15 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %16 = call i64 @ccw_is_tic(%struct.ccw1* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ccwchain*, %struct.ccwchain** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %22 = call i32 @ccwchain_fetch_tic(%struct.ccwchain* %19, i32 %20, %struct.channel_program* %21)
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.ccwchain*, %struct.ccwchain** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %27 = call i32 @ccwchain_fetch_direct(%struct.ccwchain* %24, i32 %25, %struct.channel_program* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @ccw_is_tic(%struct.ccw1*) #1

declare dso_local i32 @ccwchain_fetch_tic(%struct.ccwchain*, i32, %struct.channel_program*) #1

declare dso_local i32 @ccwchain_fetch_direct(%struct.ccwchain*, i32, %struct.channel_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
