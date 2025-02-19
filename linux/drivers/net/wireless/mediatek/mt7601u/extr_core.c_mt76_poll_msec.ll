; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_core.c_mt76_poll_msec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_core.c_mt76_poll_msec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }

@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error: Time out with reg %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_poll_msec(%struct.mt7601u_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %34, %5
  %16 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %44

32:                                               ; preds = %22
  %33 = call i32 @msleep(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %15, label %38

38:                                               ; preds = %34
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %40 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %31, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
