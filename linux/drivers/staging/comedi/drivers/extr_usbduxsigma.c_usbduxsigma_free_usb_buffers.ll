; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_free_usb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_free_usb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, i32, %struct.urb**, %struct.urb**, %struct.urb**, %struct.urb**, %struct.urb**, %struct.urb* }
%struct.urb = type { %struct.urb** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @usbduxsigma_free_usb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsigma_free_usb_buffers(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.usbduxsigma_private*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  store %struct.usbduxsigma_private* %8, %struct.usbduxsigma_private** %3, align 8
  %9 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %10 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %9, i32 0, i32 7
  %11 = load %struct.urb*, %struct.urb** %10, align 8
  store %struct.urb* %11, %struct.urb** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = icmp ne %struct.urb* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load %struct.urb**, %struct.urb*** %16, align 8
  %18 = call i32 @kfree(%struct.urb** %17)
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = call i32 @usb_free_urb(%struct.urb* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %23 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %22, i32 0, i32 6
  %24 = load %struct.urb**, %struct.urb*** %23, align 8
  %25 = icmp ne %struct.urb** %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %30 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %35 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %34, i32 0, i32 6
  %36 = load %struct.urb**, %struct.urb*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.urb*, %struct.urb** %36, i64 %38
  %40 = load %struct.urb*, %struct.urb** %39, align 8
  store %struct.urb* %40, %struct.urb** %4, align 8
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = icmp ne %struct.urb* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load %struct.urb**, %struct.urb*** %45, align 8
  %47 = call i32 @kfree(%struct.urb** %46)
  %48 = load %struct.urb*, %struct.urb** %4, align 8
  %49 = call i32 @usb_free_urb(%struct.urb* %48)
  br label %50

50:                                               ; preds = %43, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %56 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %55, i32 0, i32 6
  %57 = load %struct.urb**, %struct.urb*** %56, align 8
  %58 = call i32 @kfree(%struct.urb** %57)
  br label %59

59:                                               ; preds = %54, %21
  %60 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %61 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %60, i32 0, i32 5
  %62 = load %struct.urb**, %struct.urb*** %61, align 8
  %63 = icmp ne %struct.urb** %62, null
  br i1 %63, label %64, label %97

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %68 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %73 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %72, i32 0, i32 5
  %74 = load %struct.urb**, %struct.urb*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.urb*, %struct.urb** %74, i64 %76
  %78 = load %struct.urb*, %struct.urb** %77, align 8
  store %struct.urb* %78, %struct.urb** %4, align 8
  %79 = load %struct.urb*, %struct.urb** %4, align 8
  %80 = icmp ne %struct.urb* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.urb*, %struct.urb** %4, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load %struct.urb**, %struct.urb*** %83, align 8
  %85 = call i32 @kfree(%struct.urb** %84)
  %86 = load %struct.urb*, %struct.urb** %4, align 8
  %87 = call i32 @usb_free_urb(%struct.urb* %86)
  br label %88

88:                                               ; preds = %81, %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %65

92:                                               ; preds = %65
  %93 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %94 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %93, i32 0, i32 5
  %95 = load %struct.urb**, %struct.urb*** %94, align 8
  %96 = call i32 @kfree(%struct.urb** %95)
  br label %97

97:                                               ; preds = %92, %59
  %98 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %99 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %98, i32 0, i32 4
  %100 = load %struct.urb**, %struct.urb*** %99, align 8
  %101 = call i32 @kfree(%struct.urb** %100)
  %102 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %103 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %102, i32 0, i32 3
  %104 = load %struct.urb**, %struct.urb*** %103, align 8
  %105 = call i32 @kfree(%struct.urb** %104)
  %106 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %3, align 8
  %107 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %106, i32 0, i32 2
  %108 = load %struct.urb**, %struct.urb*** %107, align 8
  %109 = call i32 @kfree(%struct.urb** %108)
  ret void
}

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
