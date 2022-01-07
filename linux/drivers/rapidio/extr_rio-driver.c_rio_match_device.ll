; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-driver.c_rio_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-driver.c_rio_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_device_id = type { i64, i64, i64, i64 }
%struct.rio_dev = type { i64, i64, i64, i64 }

@RIO_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rio_device_id* (%struct.rio_device_id*, %struct.rio_dev*)* @rio_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rio_device_id* @rio_match_device(%struct.rio_device_id* %0, %struct.rio_dev* %1) #0 {
  %3 = alloca %struct.rio_device_id*, align 8
  %4 = alloca %struct.rio_device_id*, align 8
  %5 = alloca %struct.rio_dev*, align 8
  store %struct.rio_device_id* %0, %struct.rio_device_id** %4, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %5, align 8
  br label %6

6:                                                ; preds = %76, %2
  %7 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %79

18:                                               ; preds = %16
  %19 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RIO_ANY_ID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %24, %18
  %33 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RIO_ANY_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %40 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %38, %32
  %47 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %48 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RIO_ANY_ID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %54 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52, %46
  %61 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %62 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RIO_ANY_ID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %68 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %71 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66, %60
  %75 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  store %struct.rio_device_id* %75, %struct.rio_device_id** %3, align 8
  br label %80

76:                                               ; preds = %66, %52, %38, %24
  %77 = load %struct.rio_device_id*, %struct.rio_device_id** %4, align 8
  %78 = getelementptr inbounds %struct.rio_device_id, %struct.rio_device_id* %77, i32 1
  store %struct.rio_device_id* %78, %struct.rio_device_id** %4, align 8
  br label %6

79:                                               ; preds = %16
  store %struct.rio_device_id* null, %struct.rio_device_id** %3, align 8
  br label %80

80:                                               ; preds = %79, %74
  %81 = load %struct.rio_device_id*, %struct.rio_device_id** %3, align 8
  ret %struct.rio_device_id* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
