; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_check_driver_offered_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_check_driver_offered_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_driver = type { i32, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_check_driver_offered_feature(%struct.virtio_device* %0, i32 %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_driver*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.virtio_driver* @drv_to_virtio(i32 %10)
  store %struct.virtio_driver* %11, %struct.virtio_driver** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.virtio_driver*, %struct.virtio_driver** %6, align 8
  %15 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.virtio_driver*, %struct.virtio_driver** %6, align 8
  %20 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %63

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.virtio_driver*, %struct.virtio_driver** %6, align 8
  %35 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.virtio_driver*, %struct.virtio_driver** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.virtio_driver*, %struct.virtio_driver** %6, align 8
  %47 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %63

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %33
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %55, %28
  ret void
}

declare dso_local %struct.virtio_driver* @drv_to_virtio(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
