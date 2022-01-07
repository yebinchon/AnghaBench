; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_choose_devnum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_choose_devnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i64, %struct.usb_bus* }
%struct.usb_bus = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @choose_devnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_devnum(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_bus*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 3
  %7 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  store %struct.usb_bus* %7, %struct.usb_bus** %4, align 8
  %8 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %9 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %22 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @test_bit(i32 %20, i32 %24)
  %26 = call i32 @BUG_ON(i32 %25)
  br label %55

27:                                               ; preds = %1
  %28 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %29 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %33 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @find_next_zero_bit(i32 %31, i32 128, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 128
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %40 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @find_next_zero_bit(i32 %42, i32 128, i32 1)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %3, align 4
  %46 = icmp sge i32 %45, 127
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 1, %47 ], [ %50, %48 ]
  %53 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %54 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %15
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 128
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %61 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_bit(i32 %59, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %55
  %69 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %70 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
