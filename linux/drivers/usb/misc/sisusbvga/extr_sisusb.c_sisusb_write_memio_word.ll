; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32)* @sisusb_write_memio_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_write_memio_word(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %15, label %70 [
    i32 0, label %16
    i32 1, label %25
    i32 2, label %35
    i32 3, label %45
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, 3
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %24 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %23, i32 10, %struct.sisusb_packet* %9)
  store i32 %24, i32* %10, align 4
  br label %70

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 6
  %28 = or i32 %27, 6
  %29 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 8
  %32 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %34 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %33, i32 10, %struct.sisusb_packet* %9)
  store i32 %34, i32* %10, align 4
  br label %70

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 6
  %38 = or i32 %37, 12
  %39 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 16
  %42 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %44 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %43, i32 10, %struct.sisusb_packet* %9)
  store i32 %44, i32* %10, align 4
  br label %70

45:                                               ; preds = %4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 6
  %48 = or i32 %47, 8
  %49 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 24
  %52 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %54 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %53, i32 10, %struct.sisusb_packet* %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 6
  %57 = or i32 %56, 1
  %58 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, -4
  %61 = add nsw i32 %60, 4
  %62 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 8
  %65 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %67 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %66, i32 10, %struct.sisusb_packet* %9)
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %45, %4, %35, %25, %16
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
