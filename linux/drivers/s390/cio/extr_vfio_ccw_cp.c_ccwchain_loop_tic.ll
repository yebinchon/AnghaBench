; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_loop_tic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_loop_tic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwchain = type { i32, %struct.ccw1* }
%struct.ccw1 = type { i32 }
%struct.channel_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwchain*, %struct.channel_program*)* @ccwchain_loop_tic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwchain_loop_tic(%struct.ccwchain* %0, %struct.channel_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccwchain*, align 8
  %5 = alloca %struct.channel_program*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccwchain* %0, %struct.ccwchain** %4, align 8
  store %struct.channel_program* %1, %struct.channel_program** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ccwchain*, %struct.ccwchain** %4, align 8
  %12 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.ccwchain*, %struct.ccwchain** %4, align 8
  %17 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %16, i32 0, i32 1
  %18 = load %struct.ccw1*, %struct.ccw1** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %18, i64 %20
  store %struct.ccw1* %21, %struct.ccw1** %6, align 8
  %22 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %23 = call i32 @ccw_is_tic(%struct.ccw1* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %43

26:                                               ; preds = %15
  %27 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %28 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %29 = call i64 @tic_target_chain_exists(%struct.ccw1* %27, %struct.channel_program* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %37 = call i32 @ccwchain_handle_ccw(i32 %35, %struct.channel_program* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31, %25
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ccw_is_tic(%struct.ccw1*) #1

declare dso_local i64 @tic_target_chain_exists(%struct.ccw1*, %struct.channel_program*) #1

declare dso_local i32 @ccwchain_handle_ccw(i32, %struct.channel_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
