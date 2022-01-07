; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_ptp_find_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_clock.c_ptp_find_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ptp_pin_desc* }
%struct.ptp_pin_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_find_pin(%struct.ptp_clock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptp_clock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptp_pin_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ptp_clock* %0, %struct.ptp_clock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.ptp_pin_desc* null, %struct.ptp_pin_desc** %7, align 8
  %9 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %10 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %15 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %12
  %21 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %22 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %25, i64 %27
  %29 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %20
  %34 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %35 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %38, i64 %40
  %42 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %48 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %51, i64 %53
  store %struct.ptp_pin_desc* %54, %struct.ptp_pin_desc** %7, align 8
  br label %59

55:                                               ; preds = %33, %20
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %12

59:                                               ; preds = %46, %12
  %60 = load %struct.ptp_clock*, %struct.ptp_clock** %4, align 8
  %61 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %7, align 8
  %64 = icmp ne %struct.ptp_pin_desc* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ -1, %67 ]
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
