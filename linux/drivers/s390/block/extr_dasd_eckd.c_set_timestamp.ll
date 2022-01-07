; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_set_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_set_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i32 }
%struct.DE_eckd_data = type { i32, i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.DE_eckd_data*, %struct.dasd_device*)* @set_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timestamp(%struct.ccw1* %0, %struct.DE_eckd_data* %1, %struct.dasd_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca %struct.DE_eckd_data*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %5, align 8
  store %struct.DE_eckd_data* %1, %struct.DE_eckd_data** %6, align 8
  store %struct.dasd_device* %2, %struct.dasd_device** %7, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %8, align 8
  %13 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %14 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %13, i32 0, i32 1
  %15 = call i32 @get_phys_clock(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %20 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25, %18
  store i32 0, i32* %4, align 4
  br label %57

36:                                               ; preds = %30
  %37 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %38 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 8
  store i32 %40, i32* %38, align 4
  %41 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %6, align 8
  %42 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 2
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %46 = icmp ne %struct.ccw1* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i32 0, i32 0
  store i32 8, i32* %49, align 4
  %50 = load i32, i32* @CCW_FLAG_SLI, align 4
  %51 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %52 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %36
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %35
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @get_phys_clock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
