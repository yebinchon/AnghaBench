; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_end_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_end_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_td = type { i32, %struct.urb* }
%struct.urb = type { i32, i32, i32, i32 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_td*)* @c67x00_end_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_end_of_data(%struct.c67x00_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c67x00_td*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.c67x00_td* %0, %struct.c67x00_td** %3, align 8
  %9 = load %struct.c67x00_td*, %struct.c67x00_td** %3, align 8
  %10 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %9, i32 0, i32 1
  %11 = load %struct.urb*, %struct.urb** %10, align 8
  store %struct.urb* %11, %struct.urb** %7, align 8
  %12 = load %struct.c67x00_td*, %struct.c67x00_td** %3, align 8
  %13 = call i32 @td_actual_bytes(%struct.c67x00_td* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.c67x00_td*, %struct.c67x00_td** %3, align 8
  %23 = call i32 @td_udev(%struct.c67x00_td* %22)
  %24 = load %struct.c67x00_td*, %struct.c67x00_td** %3, align 8
  %25 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.c67x00_td*, %struct.c67x00_td** %3, align 8
  %28 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @usb_pipeout(i32 %29)
  %31 = call i32 @usb_maxpacket(i32 %23, i32 %26, i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %81

39:                                               ; preds = %21
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.urb*, %struct.urb** %7, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.urb*, %struct.urb** %7, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @URB_ZERO_PACKET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %39
  %54 = load %struct.urb*, %struct.urb** %7, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @usb_pipeout(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = srem i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %53, %39
  %66 = phi i1 [ false, %53 ], [ false, %39 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i1 [ false, %65 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79, %38, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @td_actual_bytes(%struct.c67x00_td*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i64) #1

declare dso_local i32 @td_udev(%struct.c67x00_td*) #1

declare dso_local i64 @usb_pipeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
