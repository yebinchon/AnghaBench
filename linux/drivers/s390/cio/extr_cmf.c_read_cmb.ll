; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_read_cmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_read_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cmb_data* }
%struct.cmb_data = type { %struct.cmb* }
%struct.cmb = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @read_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cmb(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmb_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.cmb_data*, %struct.cmb_data** %18, align 8
  store %struct.cmb_data* %19, %struct.cmb_data** %5, align 8
  %20 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %21 = icmp ne %struct.cmb_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %25 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %24, i32 0, i32 0
  %26 = load %struct.cmb*, %struct.cmb** %25, align 8
  store %struct.cmb* %26, %struct.cmb** %7, align 8
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %72 [
    i32 135, label %28
    i32 128, label %44
    i32 129, label %48
    i32 132, label %52
    i32 130, label %56
    i32 131, label %60
    i32 134, label %64
    i32 133, label %68
  ]

28:                                               ; preds = %23
  %29 = load %struct.cmb*, %struct.cmb** %7, align 8
  %30 = getelementptr inbounds %struct.cmb, %struct.cmb* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cmb*, %struct.cmb** %7, align 8
  %33 = getelementptr inbounds %struct.cmb, %struct.cmb* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cmb*, %struct.cmb** %7, align 8
  %36 = getelementptr inbounds %struct.cmb, %struct.cmb* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @__cmb_utilization(i32 %31, i32 %34, i32 %37, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %79

44:                                               ; preds = %23
  %45 = load %struct.cmb*, %struct.cmb** %7, align 8
  %46 = getelementptr inbounds %struct.cmb, %struct.cmb* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %79

48:                                               ; preds = %23
  %49 = load %struct.cmb*, %struct.cmb** %7, align 8
  %50 = getelementptr inbounds %struct.cmb, %struct.cmb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %79

52:                                               ; preds = %23
  %53 = load %struct.cmb*, %struct.cmb** %7, align 8
  %54 = getelementptr inbounds %struct.cmb, %struct.cmb* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %73

56:                                               ; preds = %23
  %57 = load %struct.cmb*, %struct.cmb** %7, align 8
  %58 = getelementptr inbounds %struct.cmb, %struct.cmb* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  br label %73

60:                                               ; preds = %23
  %61 = load %struct.cmb*, %struct.cmb** %7, align 8
  %62 = getelementptr inbounds %struct.cmb, %struct.cmb* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %73

64:                                               ; preds = %23
  %65 = load %struct.cmb*, %struct.cmb** %7, align 8
  %66 = getelementptr inbounds %struct.cmb, %struct.cmb* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %23
  %69 = load %struct.cmb*, %struct.cmb** %7, align 8
  %70 = getelementptr inbounds %struct.cmb, %struct.cmb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %73

72:                                               ; preds = %23
  br label %79

73:                                               ; preds = %68, %64, %60, %56, %52
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.cmb*, %struct.cmb** %7, align 8
  %76 = getelementptr inbounds %struct.cmb, %struct.cmb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @time_to_avg_nsec(i32 %74, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %72, %48, %44, %28, %22
  %80 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %81 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32 %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__cmb_utilization(i32, i32, i32, i32) #1

declare dso_local i32 @time_to_avg_nsec(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
