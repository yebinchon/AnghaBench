; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_handle_ccw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_handle_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_program = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ccwchain = type { i32, i32 }

@CCWCHAIN_LEN_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.channel_program*)* @ccwchain_handle_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwchain_handle_ccw(i32 %0, %struct.channel_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_program*, align 8
  %6 = alloca %struct.ccwchain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.channel_program* %1, %struct.channel_program** %5, align 8
  %9 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %10 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %13 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CCWCHAIN_LEN_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @copy_from_iova(i32 %11, i32 %14, i32 %15, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %27 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %34 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CCWCHAIN_LEN_MAX, align 4
  %37 = call i32 @convert_ccw0_to_ccw1(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %41 = call i32 @ccwchain_calc_length(i32 %39, %struct.channel_program* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %80

46:                                               ; preds = %38
  %47 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.ccwchain* @ccwchain_alloc(%struct.channel_program* %47, i32 %48)
  store %struct.ccwchain* %49, %struct.ccwchain** %6, align 8
  %50 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %51 = icmp ne %struct.ccwchain* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %58 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %60 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %63 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32 %61, i32 %64, i32 %68)
  %70 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %71 = load %struct.channel_program*, %struct.channel_program** %5, align 8
  %72 = call i32 @ccwchain_loop_tic(%struct.ccwchain* %70, %struct.channel_program* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %77 = call i32 @ccwchain_free(%struct.ccwchain* %76)
  br label %78

78:                                               ; preds = %75, %55
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %52, %44, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @copy_from_iova(i32, i32, i32, i32) #1

declare dso_local i32 @convert_ccw0_to_ccw1(i32, i32) #1

declare dso_local i32 @ccwchain_calc_length(i32, %struct.channel_program*) #1

declare dso_local %struct.ccwchain* @ccwchain_alloc(%struct.channel_program*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ccwchain_loop_tic(%struct.ccwchain*, %struct.channel_program*) #1

declare dso_local i32 @ccwchain_free(%struct.ccwchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
