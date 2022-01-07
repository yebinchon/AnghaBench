; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_detach_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_detach_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i32*, i32*, i32*, i32*, i64, i64, i64, i32*, i32*, i32*, i32*, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.comedi_subdevice* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @comedi_device_detach_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comedi_device_detach_cleanup(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 16
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 15
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %14 = icmp ne %struct.comedi_subdevice* %13, null
  br i1 %14, label %15, label %69

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %57, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 15
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i64 %27
  store %struct.comedi_subdevice* %28, %struct.comedi_subdevice** %4, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %30 = call i64 @comedi_can_auto_free_spriv(%struct.comedi_subdevice* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 2
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %34, align 8
  %36 = call i32 @kfree(%struct.comedi_subdevice* %35)
  br label %37

37:                                               ; preds = %32, %22
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = call i32 @comedi_free_subdevice_minor(%struct.comedi_subdevice* %38)
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 1
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %41, align 8
  %43 = icmp ne %struct.comedi_subdevice* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %47 = call i32 @comedi_buf_alloc(%struct.comedi_device* %45, %struct.comedi_subdevice* %46, i32 0)
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 1
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %49, align 8
  %51 = call i32 @kfree(%struct.comedi_subdevice* %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %54, align 8
  %56 = call i32 @kfree(%struct.comedi_subdevice* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 15
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %62, align 8
  %64 = call i32 @kfree(%struct.comedi_subdevice* %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 15
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %66, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %1
  %70 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 14
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %71, align 8
  %73 = call i32 @kfree(%struct.comedi_subdevice* %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 13
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %75, align 8
  %77 = call i32 @kfree(%struct.comedi_subdevice* %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 14
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %79, align 8
  %80 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 13
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %81, align 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 12
  store i32* null, i32** %83, align 8
  %84 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 11
  store i32* null, i32** %85, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 10
  store i32* null, i32** %87, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 9
  store i32* null, i32** %89, align 8
  %90 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 5
  store i32* null, i32** %99, align 8
  %100 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 3
  store i32* null, i32** %103, align 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %105 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  %106 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %107 = call i32 @comedi_clear_hw_dev(%struct.comedi_device* %106)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @comedi_can_auto_free_spriv(%struct.comedi_subdevice*) #1

declare dso_local i32 @kfree(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_free_subdevice_minor(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_alloc(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_clear_hw_dev(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
