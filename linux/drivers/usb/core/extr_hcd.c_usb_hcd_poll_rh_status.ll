; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_poll_rh_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_poll_rh_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.urb*, i64, i32, %struct.TYPE_2__*, i32 }
%struct.urb = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*, i8*)* }

@hcd_root_hub_lock = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_poll_rh_status(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [6 x i8], align 1
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 1
  %24 = load %struct.urb*, %struct.urb** %23, align 8
  %25 = icmp ne %struct.urb* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %105

27:                                               ; preds = %21, %16
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i8*)** %31, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %35 = call i32 %32(%struct.usb_hcd* %33, i8* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %27
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @hcd_root_hub_lock, i64 %39)
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 1
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  store %struct.urb* %43, %struct.urb** %3, align 8
  %44 = load %struct.urb*, %struct.urb** %3, align 8
  %45 = icmp ne %struct.urb* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %38
  %47 = load i32, i32* @HCD_FLAG_POLL_PENDING, align 4
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 3
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 1
  store %struct.urb* null, %struct.urb** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.urb*, %struct.urb** %3, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.urb*, %struct.urb** %3, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @memcpy(i32 %58, i8* %59, i32 %60)
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %63 = load %struct.urb*, %struct.urb** %3, align 8
  %64 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %62, %struct.urb* %63)
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %66 = load %struct.urb*, %struct.urb** %3, align 8
  %67 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %65, %struct.urb* %66, i32 0)
  br label %73

68:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  %69 = load i32, i32* @HCD_FLAG_POLL_PENDING, align 4
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 3
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %46
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @hcd_root_hub_lock, i64 %74)
  br label %76

76:                                               ; preds = %73, %27
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %83 = call i32 @HCD_POLL_RH(%struct.usb_hcd* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %105

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 1
  %91 = load %struct.urb*, %struct.urb** %90, align 8
  %92 = icmp ne %struct.urb* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %88, %81
  %94 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %95 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %94, i32 0, i32 0
  %96 = load i32, i32* @jiffies, align 4
  %97 = load i32, i32* @HZ, align 4
  %98 = sdiv i32 %97, 4
  %99 = sdiv i32 %96, %98
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* @HZ, align 4
  %102 = sdiv i32 %101, 4
  %103 = mul nsw i32 %100, %102
  %104 = call i32 @mod_timer(i32* %95, i32 %103)
  br label %105

105:                                              ; preds = %15, %26, %93, %88, %85, %81
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @HCD_POLL_RH(%struct.usb_hcd*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
