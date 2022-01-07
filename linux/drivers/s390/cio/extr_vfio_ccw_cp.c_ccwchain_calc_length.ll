; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_calc_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_calc_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_program = type { %struct.TYPE_4__, %struct.ccw1* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ccw1 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CCWCHAIN_LEN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.channel_program*)* @ccwchain_calc_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwchain_calc_length(i32 %0, %struct.channel_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_program*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.channel_program* %1, %struct.channel_program** %5, align 8
  %8 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %9 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %8, i32 0, i32 1
  %10 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  store %struct.ccw1* %10, %struct.ccw1** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %2
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %15 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %22 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20, %11
  %28 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %29 = call i64 @ccw_is_idal(%struct.ccw1* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %27, %20
  %35 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %36 = call i32 @ccw_is_chain(%struct.ccw1* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @is_tic_within_range(%struct.ccw1* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %53

45:                                               ; preds = %38, %34
  %46 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 1
  store %struct.ccw1* %47, %struct.ccw1** %6, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @CCWCHAIN_LEN_MAX, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %11, label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CCWCHAIN_LEN_MAX, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @ccw_is_idal(%struct.ccw1*) #1

declare dso_local i32 @ccw_is_chain(%struct.ccw1*) #1

declare dso_local i32 @is_tic_within_range(%struct.ccw1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
