; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_iso_alloc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_iso_alloc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.usb_device = type { i64 }
%struct.usb_endpoint_descriptor = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GUARD_BYTE = common dso_local global i32 0, align 4
@complicated_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usb_device*, i32, %struct.usb_endpoint_descriptor*, i64, i32)* @iso_alloc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @iso_alloc_urb(%struct.usb_device* %0, i32 %1, %struct.usb_endpoint_descriptor* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %20 = icmp ne %struct.usb_endpoint_descriptor* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %5
  store %struct.urb* null, %struct.urb** %6, align 8
  br label %177

22:                                               ; preds = %18
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %24 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_SPEED_SUPER, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ss_isoc_get_packet_num(%struct.usb_device* %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = mul i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %41

36:                                               ; preds = %22
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %38 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %37)
  %39 = load i32, i32* %14, align 4
  %40 = mul i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @DIV_ROUND_UP(i64 %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.urb* @usb_alloc_urb(i32 %45, i32 %46)
  store %struct.urb* %47, %struct.urb** %12, align 8
  %48 = load %struct.urb*, %struct.urb** %12, align 8
  %49 = icmp ne %struct.urb* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %51, %struct.urb** %6, align 8
  br label %177

52:                                               ; preds = %41
  %53 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %54 = load %struct.urb*, %struct.urb** %12, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 9
  store %struct.usb_device* %53, %struct.usb_device** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.urb*, %struct.urb** %12, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.urb*, %struct.urb** %12, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.urb*, %struct.urb** %12, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load %struct.urb*, %struct.urb** %12, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 8
  %74 = call i32 @usb_alloc_coherent(%struct.usb_device* %65, i32 %70, i32 %71, i32* %73)
  %75 = load %struct.urb*, %struct.urb** %12, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.urb*, %struct.urb** %12, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %52
  %82 = load %struct.urb*, %struct.urb** %12, align 8
  %83 = call i32 @usb_free_urb(%struct.urb* %82)
  store %struct.urb* null, %struct.urb** %6, align 8
  br label %177

84:                                               ; preds = %52
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.urb*, %struct.urb** %12, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GUARD_BYTE, align 4
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = call i32 @memset(i32 %90, i32 %91, i64 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.urb*, %struct.urb** %12, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = add i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.urb*, %struct.urb** %12, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = add i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %87, %84
  %106 = load %struct.urb*, %struct.urb** %12, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.urb*, %struct.urb** %12, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @usb_pipein(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @GUARD_BYTE, align 4
  br label %117

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @memset(i32 %108, i32 %118, i64 %119)
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %157, %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %121
  %126 = load i64, i64* %10, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @min(i32 %127, i32 %128)
  %130 = load %struct.urb*, %struct.urb** %12, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 7
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i64 %129, i64* %136, align 8
  %137 = load %struct.urb*, %struct.urb** %12, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 7
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = sub nsw i64 %145, %144
  store i64 %146, i64* %10, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = mul i32 %147, %148
  %150 = load %struct.urb*, %struct.urb** %12, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 7
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 %149, i32* %156, align 8
  br label %157

157:                                              ; preds = %125
  %158 = load i32, i32* %13, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %121

160:                                              ; preds = %121
  %161 = load i32, i32* @complicated_callback, align 4
  %162 = load %struct.urb*, %struct.urb** %12, align 8
  %163 = getelementptr inbounds %struct.urb, %struct.urb* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = shl i32 1, %167
  %169 = load %struct.urb*, %struct.urb** %12, align 8
  %170 = getelementptr inbounds %struct.urb, %struct.urb* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @URB_ISO_ASAP, align 4
  %172 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.urb*, %struct.urb** %12, align 8
  %175 = getelementptr inbounds %struct.urb, %struct.urb* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %176, %struct.urb** %6, align 8
  br label %177

177:                                              ; preds = %160, %81, %50, %21
  %178 = load %struct.urb*, %struct.urb** %6, align 8
  ret %struct.urb* %178
}

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @ss_isoc_get_packet_num(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
