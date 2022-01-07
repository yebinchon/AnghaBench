; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_check_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.gb_loopback = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@GB_LOOPBACK_US_WAIT_MAX = common dso_local global i64 0, align 8
@gb_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kfifo_depth = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"cannot log bytes %u kfifo_depth %u\0A\00", align 1
@GB_LOOPBACK_TIMEOUT_MIN = common dso_local global i32 0, align 4
@GB_LOOPBACK_TIMEOUT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_loopback*)* @gb_loopback_check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_check_attr(%struct.gb_loopback* %0) #0 {
  %2 = alloca %struct.gb_loopback*, align 8
  store %struct.gb_loopback* %0, %struct.gb_loopback** %2, align 8
  %3 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %4 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GB_LOOPBACK_US_WAIT_MAX, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @GB_LOOPBACK_US_WAIT_MAX, align 8
  %10 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %11 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %14 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gb_dev, i32 0, i32 0), align 8
  %20 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %21 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %24 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %23, i32 0, i32 13
  store i64 0, i64* %24, align 8
  %25 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %26 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %25, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %28 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %30 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %32 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* @kfifo_depth, align 8
  %34 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %35 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %40 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %43 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @kfifo_depth, align 8
  %46 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %38, %22
  %48 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %49 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %48, i32 0, i32 7
  %50 = call i32 @kfifo_reset_out(i32* %49)
  %51 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %52 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %86 [
    i32 130, label %54
    i32 128, label %54
    i32 129, label %54
  ]

54:                                               ; preds = %47, %47, %47
  %55 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %56 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usecs_to_jiffies(i32 %57)
  %59 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %60 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %62 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @GB_LOOPBACK_TIMEOUT_MIN, align 4
  %67 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %68 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %80

69:                                               ; preds = %54
  %70 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %71 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GB_LOOPBACK_TIMEOUT_MAX, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @GB_LOOPBACK_TIMEOUT_MAX, align 4
  %77 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %78 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %82 = call i32 @gb_loopback_reset_stats(%struct.gb_loopback* %81)
  %83 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %84 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %83, i32 0, i32 4
  %85 = call i32 @wake_up(i32* %84)
  br label %89

86:                                               ; preds = %47
  %87 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %88 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %87, i32 0, i32 3
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %80
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @kfifo_reset_out(i32*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @gb_loopback_reset_stats(%struct.gb_loopback*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
