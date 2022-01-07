; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dpt_i2o.c_adpt_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpt_device = type { i64, i64, %struct.adpt_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.adpt_device** }

@MAX_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adpt_device* (%struct.TYPE_5__*, i64, i64, i64)* @adpt_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adpt_device* @adpt_find_device(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.adpt_device*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adpt_device*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MAX_CHANNEL, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store %struct.adpt_device* null, %struct.adpt_device** %5, align 8
  br label %66

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.adpt_device**, %struct.adpt_device*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.adpt_device*, %struct.adpt_device** %25, i64 %26
  %28 = load %struct.adpt_device*, %struct.adpt_device** %27, align 8
  store %struct.adpt_device* %28, %struct.adpt_device** %10, align 8
  %29 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %30 = icmp ne %struct.adpt_device* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %33 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %18
  store %struct.adpt_device* null, %struct.adpt_device** %5, align 8
  br label %66

37:                                               ; preds = %31
  %38 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %39 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  store %struct.adpt_device* %44, %struct.adpt_device** %5, align 8
  br label %66

45:                                               ; preds = %37
  %46 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %47 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %46, i32 0, i32 2
  %48 = load %struct.adpt_device*, %struct.adpt_device** %47, align 8
  store %struct.adpt_device* %48, %struct.adpt_device** %10, align 8
  br label %49

49:                                               ; preds = %61, %45
  %50 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %51 = icmp ne %struct.adpt_device* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %54 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  store %struct.adpt_device* %59, %struct.adpt_device** %5, align 8
  br label %66

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.adpt_device*, %struct.adpt_device** %10, align 8
  %63 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %62, i32 0, i32 2
  %64 = load %struct.adpt_device*, %struct.adpt_device** %63, align 8
  store %struct.adpt_device* %64, %struct.adpt_device** %10, align 8
  br label %49

65:                                               ; preds = %49
  store %struct.adpt_device* null, %struct.adpt_device** %5, align 8
  br label %66

66:                                               ; preds = %65, %58, %43, %36, %17
  %67 = load %struct.adpt_device*, %struct.adpt_device** %5, align 8
  ret %struct.adpt_device* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
