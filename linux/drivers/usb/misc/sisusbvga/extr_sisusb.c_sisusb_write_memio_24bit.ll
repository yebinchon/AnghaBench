; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_24bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_24bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32)* @sisusb_write_memio_24bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_write_memio_24bit(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sisusb_packet, align 4
  %10 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, -4
  %13 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  switch i32 %15, label %88 [
    i32 0, label %16
    i32 1, label %26
    i32 2, label %36
    i32 3, label %62
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, 7
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 16777215
  %23 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %25 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %24, i32 10, %struct.sisusb_packet* %9)
  store i32 %25, i32* %10, align 4
  br label %88

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 6
  %29 = or i32 %28, 14
  %30 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %35 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %34, i32 10, %struct.sisusb_packet* %9)
  store i32 %35, i32* %10, align 4
  br label %88

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 6
  %39 = or i32 %38, 12
  %40 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %45 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %44, i32 10, %struct.sisusb_packet* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 6
  %48 = or i32 %47, 1
  %49 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -4
  %52 = add nsw i32 %51, 4
  %53 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %59 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %58, i32 10, %struct.sisusb_packet* %9)
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %88

62:                                               ; preds = %4
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 6
  %65 = or i32 %64, 8
  %66 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 24
  %69 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %71 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %70, i32 10, %struct.sisusb_packet* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 6
  %74 = or i32 %73, 3
  %75 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, -4
  %78 = add nsw i32 %77, 4
  %79 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 65535
  %83 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %85 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %84, i32 10, %struct.sisusb_packet* %9)
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %62, %4, %36, %26, %16
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
