; ModuleID = '/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_set_local_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_set_local_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vlynq_mapping = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlynq_set_local_mapping(%struct.vlynq_device* %0, i32 %1, %struct.vlynq_mapping* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlynq_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlynq_mapping*, align 8
  %8 = alloca i32, align 4
  store %struct.vlynq_device* %0, %struct.vlynq_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vlynq_mapping* %2, %struct.vlynq_mapping** %7, align 8
  %9 = load %struct.vlynq_device*, %struct.vlynq_device** %5, align 8
  %10 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.vlynq_device*, %struct.vlynq_device** %5, align 8
  %19 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @writel(i32 %17, i32* %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %59, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load %struct.vlynq_mapping*, %struct.vlynq_mapping** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vlynq_mapping, %struct.vlynq_mapping* %27, i64 %29
  %31 = getelementptr inbounds %struct.vlynq_mapping, %struct.vlynq_mapping* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vlynq_device*, %struct.vlynq_device** %5, align 8
  %34 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @writel(i32 %32, i32* %41)
  %43 = load %struct.vlynq_mapping*, %struct.vlynq_mapping** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vlynq_mapping, %struct.vlynq_mapping* %43, i64 %45
  %47 = getelementptr inbounds %struct.vlynq_mapping, %struct.vlynq_mapping* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vlynq_device*, %struct.vlynq_device** %5, align 8
  %50 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @writel(i32 %48, i32* %57)
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
