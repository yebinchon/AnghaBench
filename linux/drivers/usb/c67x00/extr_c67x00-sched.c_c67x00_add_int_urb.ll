; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_int_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_int_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.urb = type { i32, %struct.c67x00_urb_priv* }
%struct.c67x00_urb_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*)* @c67x00_add_int_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_add_int_urb(%struct.c67x00_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.c67x00_urb_priv*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %7 = load %struct.urb*, %struct.urb** %5, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %8, align 8
  store %struct.c67x00_urb_priv* %9, %struct.c67x00_urb_priv** %6, align 8
  %10 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %6, align 8
  %14 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @frame_after_eq(i32 %12, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %6, align 8
  %22 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @frame_add(i32 %25, i32 %28)
  %30 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %6, align 8
  %31 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = call i32 @c67x00_add_data_urb(%struct.c67x00_hcd* %34, %struct.urb* %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @frame_after_eq(i32, i32) #1

declare dso_local i32 @frame_add(i32, i32) #1

declare dso_local i32 @c67x00_add_data_urb(%struct.c67x00_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
