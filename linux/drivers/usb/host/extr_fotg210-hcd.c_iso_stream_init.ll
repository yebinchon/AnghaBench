; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.fotg210_iso_stream = type { i32, i32, i64, i32, i32, i32, %struct.usb_device*, i8*, i8*, i8* }
%struct.usb_device = type { i32, i64 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_iso_stream*, %struct.usb_device*, i32, i32)* @iso_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iso_stream_init(%struct.fotg210_hcd* %0, %struct.fotg210_iso_stream* %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fotg210_hcd*, align 8
  %7 = alloca %struct.fotg210_iso_stream*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %6, align 8
  store %struct.fotg210_iso_stream* %1, %struct.fotg210_iso_stream** %7, align 8
  store %struct.usb_device* %2, %struct.usb_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @usb_pipeendpoint(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @usb_pipein(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @USB_DIR_IN, align 4
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %14, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @usb_maxpacket(%struct.usb_device* %27, i32 %28, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 2048, i32* %11, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @max_packet(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @hb_mult(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 8
  %52 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %51, %54
  %56 = call i8* @cpu_to_hc32(%struct.fotg210_hcd* %49, i32 %55)
  %57 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %58 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @cpu_to_hc32(%struct.fotg210_hcd* %59, i32 %60)
  %62 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %63 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i8* @cpu_to_hc32(%struct.fotg210_hcd* %64, i32 %65)
  %67 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %68 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USB_SPEED_FULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %38
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %75, 3
  store i32 %76, i32* %10, align 4
  %77 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @usb_calc_bus_time(i64 %79, i32 %80, i32 1, i32 %81)
  %83 = call i32 @NS_TO_US(i32 %82)
  %84 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %85 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %87 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 8
  store i32 %89, i32* %87, align 8
  br label %97

90:                                               ; preds = %38
  %91 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %92 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @HS_USECS_ISO(i32 %93)
  %95 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %96 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %74
  %98 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %99 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 8
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %15, align 8
  %106 = sdiv i64 %105, %104
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %109 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %111 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %112 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %111, i32 0, i32 6
  store %struct.usb_device* %110, %struct.usb_device** %112, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %117 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %120 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %7, align 8
  %123 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  ret void
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @max_packet(i32) #1

declare dso_local i32 @hb_mult(i32) #1

declare dso_local i8* @cpu_to_hc32(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @NS_TO_US(i32) #1

declare dso_local i32 @usb_calc_bus_time(i64, i32, i32, i32) #1

declare dso_local i32 @HS_USECS_ISO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
