; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_test*)* @start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start(%struct.loopback_test* %0) #0 {
  %2 = alloca %struct.loopback_test*, align 8
  %3 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %7 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_enabled(%struct.loopback_test* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %18 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %26 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @write_sysfs_val(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @device_enabled(%struct.loopback_test*, i32) #1

declare dso_local i32 @write_sysfs_val(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
