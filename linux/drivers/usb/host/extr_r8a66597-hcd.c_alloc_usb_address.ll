; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_alloc_usb_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_alloc_usb_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.r8a66597_device = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"External hub limit reached.\0A\00", align 1
@USB_STATE_ADDRESS = common dso_local global i64 0, align 8
@R8A66597_MAX_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloc_address: r8a66597_addr=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"cannot communicate with a USB device more than 10.(%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*, %struct.urb*)* @alloc_usb_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_usb_address(%struct.r8a66597* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8a66597_device*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.urb*, %struct.urb** %5, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @is_hub_limit(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

21:                                               ; preds = %2
  %22 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %23 = load %struct.urb*, %struct.urb** %5, align 8
  %24 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %22, %struct.urb* %23)
  store %struct.r8a66597_device* %24, %struct.r8a66597_device** %7, align 8
  %25 = load %struct.r8a66597_device*, %struct.r8a66597_device** %7, align 8
  %26 = icmp ne %struct.r8a66597_device* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.r8a66597_device*, %struct.r8a66597_device** %7, align 8
  %29 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_STATE_ADDRESS, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.r8a66597_device*, %struct.r8a66597_device** %7, align 8
  %35 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %27, %21
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @R8A66597_MAX_DEVICE, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %44 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %72

51:                                               ; preds = %42
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %61 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @make_r8a66597_device(%struct.r8a66597* %64, %struct.urb* %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %84

70:                                               ; preds = %51
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %84

72:                                               ; preds = %50
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %38

75:                                               ; preds = %38
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %81 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %75, %70, %69, %33, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @is_hub_limit(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @make_r8a66597_device(%struct.r8a66597*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
