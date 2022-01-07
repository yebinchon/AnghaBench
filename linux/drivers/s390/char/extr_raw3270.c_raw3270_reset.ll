; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32, %struct.raw3270_view* }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_reset(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %5 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %6 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %5, i32 0, i32 0
  %7 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  store %struct.raw3270* %7, %struct.raw3270** %3, align 8
  %8 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %9 = icmp ne %struct.raw3270* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %12 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %11, i32 0, i32 1
  %13 = load %struct.raw3270_view*, %struct.raw3270_view** %12, align 8
  %14 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %15 = icmp ne %struct.raw3270_view* %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %18 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %19 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10, %1
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %27 = call i32 @raw3270_state_ready(%struct.raw3270* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %25
  %33 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %34 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %33, i32 0, i32 0
  %35 = load %struct.raw3270*, %struct.raw3270** %34, align 8
  %36 = call i32 @raw3270_reset_device(%struct.raw3270* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raw3270_state_ready(%struct.raw3270*) #1

declare dso_local i32 @raw3270_reset_device(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
