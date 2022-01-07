; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_handle_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.c67x00_td = type { i32, i32, %struct.urb* }
%struct.urb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TD_ERROR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_handle_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_handle_isoc(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca %struct.c67x00_hcd*, align 8
  %4 = alloca %struct.c67x00_td*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %3, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %4, align 8
  %7 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %8 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %7, i32 0, i32 2
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %5, align 8
  %10 = load %struct.urb*, %struct.urb** %5, align 8
  %11 = icmp ne %struct.urb* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %15 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %18 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TD_ERROR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %30 = call i32 @td_actual_bytes(%struct.c67x00_td* %29)
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 4
  %38 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %39 = load %struct.c67x00_td*, %struct.c67x00_td** %4, align 8
  %40 = call i32 @c67x00_td_to_error(%struct.c67x00_hcd* %38, %struct.c67x00_td* %39)
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %28
  %55 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %3, align 8
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = call i32 @c67x00_giveback_urb(%struct.c67x00_hcd* %55, %struct.urb* %56, i32 0)
  br label %58

58:                                               ; preds = %12, %54, %28
  ret void
}

declare dso_local i32 @td_actual_bytes(%struct.c67x00_td*) #1

declare dso_local i32 @c67x00_td_to_error(%struct.c67x00_hcd*, %struct.c67x00_td*) #1

declare dso_local i32 @c67x00_giveback_urb(%struct.c67x00_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
