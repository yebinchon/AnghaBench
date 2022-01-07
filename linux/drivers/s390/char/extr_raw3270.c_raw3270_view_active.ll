; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_view_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_view_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32, %struct.raw3270_view* }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_view_active(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.raw3270*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %4 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %5 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %4, i32 0, i32 0
  %6 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  store %struct.raw3270* %6, %struct.raw3270** %3, align 8
  %7 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %8 = icmp ne %struct.raw3270* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %11 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %10, i32 0, i32 1
  %12 = load %struct.raw3270_view*, %struct.raw3270_view** %11, align 8
  %13 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %14 = icmp eq %struct.raw3270_view* %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %17 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %18 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %9, %1
  %23 = phi i1 [ false, %9 ], [ false, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
