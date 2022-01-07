; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_alloc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_alloc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i32 }
%struct.usb_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GUARD_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usb_device*, i32, i64, i32, i32, i32, i32)* @usbtest_alloc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @usbtest_alloc_urb(%struct.usb_device* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %16, align 8
  %19 = load %struct.urb*, %struct.urb** %16, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = load %struct.urb*, %struct.urb** %16, align 8
  store %struct.urb* %22, %struct.urb** %8, align 8
  br label %160

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.urb*, %struct.urb** %16, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @usb_fill_int_urb(%struct.urb* %27, %struct.usb_device* %28, i32 %29, i32* null, i64 %30, i32 %31, i32* null, i32 %32)
  br label %41

34:                                               ; preds = %23
  %35 = load %struct.urb*, %struct.urb** %16, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @usb_fill_bulk_urb(%struct.urb* %35, %struct.usb_device* %36, i32 %37, i32* null, i64 %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_SPEED_HIGH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @INTERRUPT_RATE, align 4
  %49 = shl i32 %48, 3
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @INTERRUPT_RATE, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  %54 = load %struct.urb*, %struct.urb** %16, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.urb*, %struct.urb** %16, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @usb_pipein(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %64 = load %struct.urb*, %struct.urb** %16, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %52
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load %struct.urb*, %struct.urb** %16, align 8
  store %struct.urb* %75, %struct.urb** %8, align 8
  br label %160

76:                                               ; preds = %68
  %77 = load %struct.urb*, %struct.urb** %16, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = load %struct.urb*, %struct.urb** %16, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 4
  %93 = call i32 @usb_alloc_coherent(%struct.usb_device* %84, i32 %89, i32 %90, i32* %92)
  %94 = load %struct.urb*, %struct.urb** %16, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %106

96:                                               ; preds = %76
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = add i64 %97, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32 @kmalloc(i32 %101, i32 %102)
  %104 = load %struct.urb*, %struct.urb** %16, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %96, %83
  %107 = load %struct.urb*, %struct.urb** %16, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load %struct.urb*, %struct.urb** %16, align 8
  %113 = call i32 @usb_free_urb(%struct.urb* %112)
  store %struct.urb* null, %struct.urb** %8, align 8
  br label %160

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %114
  %118 = load %struct.urb*, %struct.urb** %16, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @GUARD_BYTE, align 4
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = call i32 @memset(i32 %120, i32 %121, i64 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.urb*, %struct.urb** %16, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.urb*, %struct.urb** %16, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %117
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.urb*, %struct.urb** %16, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %117
  br label %143

143:                                              ; preds = %142, %114
  %144 = load %struct.urb*, %struct.urb** %16, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.urb*, %struct.urb** %16, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @usb_pipein(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @GUARD_BYTE, align 4
  br label %155

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @memset(i32 %146, i32 %156, i64 %157)
  %159 = load %struct.urb*, %struct.urb** %16, align 8
  store %struct.urb* %159, %struct.urb** %8, align 8
  br label %160

160:                                              ; preds = %155, %111, %74, %21
  %161 = load %struct.urb*, %struct.urb** %8, align 8
  ret %struct.urb* %161
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i64, i32, i32*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i64, i32, i32*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
