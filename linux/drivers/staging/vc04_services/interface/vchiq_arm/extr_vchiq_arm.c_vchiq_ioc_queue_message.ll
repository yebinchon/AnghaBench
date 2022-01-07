; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_ioc_queue_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_ioc_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_element = type { i64, i32 }
%struct.vchiq_io_copy_callback_context = type { i64, i64, %struct.vchiq_element* }

@EFAULT = common dso_local global i32 0, align 4
@vchiq_ioc_copy_element_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vchiq_element*, i64)* @vchiq_ioc_queue_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vchiq_ioc_queue_message(i32 %0, %struct.vchiq_element* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vchiq_element*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vchiq_io_copy_callback_context, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.vchiq_element* %1, %struct.vchiq_element** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.vchiq_element*, %struct.vchiq_element** %6, align 8
  %12 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %8, i32 0, i32 2
  store %struct.vchiq_element* %11, %struct.vchiq_element** %12, align 8
  %13 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %8, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %8, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.vchiq_element*, %struct.vchiq_element** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %21, i64 %22
  %24 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = load %struct.vchiq_element*, %struct.vchiq_element** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %28, i64 %29
  %31 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %27, %20
  %38 = load %struct.vchiq_element*, %struct.vchiq_element** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %38, i64 %39
  %41 = getelementptr inbounds %struct.vchiq_element, %struct.vchiq_element* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @vchiq_ioc_copy_element_data, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @vchiq_queue_message(i32 %49, i32 %50, %struct.vchiq_io_copy_callback_context* %8, i64 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @vchiq_queue_message(i32, i32, %struct.vchiq_io_copy_callback_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
