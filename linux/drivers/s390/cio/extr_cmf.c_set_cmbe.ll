; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_cmbe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cmb_data* }
%struct.cmb_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i64)* @set_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cmbe(%struct.ccw_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmb_data*, align 8
  %8 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cmb_data*, %struct.cmb_data** %17, align 8
  %19 = icmp ne %struct.cmb_data* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32 %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.cmb_data*, %struct.cmb_data** %32, align 8
  store %struct.cmb_data* %33, %struct.cmb_data** %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %38 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i64 [ %39, %36 ], [ 0, %40 ]
  store i64 %42, i64* %6, align 8
  %43 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  %48 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @set_schib_wait(%struct.ccw_device* %48, i64 %49, i32 1, i64 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @set_schib_wait(%struct.ccw_device*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
