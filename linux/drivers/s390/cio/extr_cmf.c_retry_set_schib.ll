; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_retry_set_schib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_retry_set_schib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.set_schib_struct* }
%struct.set_schib_struct = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retry_set_schib(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.set_schib_struct*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.set_schib_struct*, %struct.set_schib_struct** %7, align 8
  store %struct.set_schib_struct* %8, %struct.set_schib_struct** %3, align 8
  %9 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %10 = icmp ne %struct.set_schib_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %14 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %15 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %18 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %21 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_schib(%struct.ccw_device* %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %25 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.set_schib_struct*, %struct.set_schib_struct** %3, align 8
  %27 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %26, i32 0, i32 0
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @set_schib(%struct.ccw_device*, i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
