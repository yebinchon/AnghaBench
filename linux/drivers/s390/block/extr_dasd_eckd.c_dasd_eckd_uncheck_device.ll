; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_uncheck_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_uncheck_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__*, %struct.dasd_eckd_private* }
%struct.TYPE_2__ = type { i64, i64, i64, i32* }
%struct.dasd_eckd_private = type { i32*, i64, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @dasd_eckd_uncheck_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_uncheck_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %5, i32 0, i32 1
  %7 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  store %struct.dasd_eckd_private* %7, %struct.dasd_eckd_private** %3, align 8
  %8 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %9 = icmp ne %struct.dasd_eckd_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %93

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %13 = call i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device* %12)
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %14, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %83, %11
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %86

27:                                               ; preds = %24
  %28 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %51 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %53 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %27
  %55 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %63 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %70 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %77 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %54
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %24

86:                                               ; preds = %24
  %87 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %88 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %92 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %10
  ret void
}

declare dso_local i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
