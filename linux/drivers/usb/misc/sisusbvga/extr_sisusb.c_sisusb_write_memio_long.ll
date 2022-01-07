; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_long.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_memio_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32)* @sisusb_write_memio_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_write_memio_long(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %15, label %100 [
    i32 0, label %16
    i32 1, label %25
    i32 2, label %50
    i32 3, label %75
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, 15
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %24 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %23, i32 10, %struct.sisusb_packet* %9)
  store i32 %24, i32* %10, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 6
  %28 = or i32 %27, 14
  %29 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 8
  %32 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %34 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %33, i32 10, %struct.sisusb_packet* %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 6
  %37 = or i32 %36, 1
  %38 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -4
  %41 = add nsw i32 %40, 4
  %42 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 24
  %45 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %47 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %46, i32 10, %struct.sisusb_packet* %9)
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %100

50:                                               ; preds = %4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 6
  %53 = or i32 %52, 12
  %54 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 16
  %57 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %59 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %58, i32 10, %struct.sisusb_packet* %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 6
  %62 = or i32 %61, 3
  %63 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, -4
  %66 = add nsw i32 %65, 4
  %67 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 16
  %70 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %72 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %71, i32 10, %struct.sisusb_packet* %9)
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %100

75:                                               ; preds = %4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 6
  %78 = or i32 %77, 8
  %79 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %80, 24
  %82 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %84 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %83, i32 10, %struct.sisusb_packet* %9)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 6
  %87 = or i32 %86, 7
  %88 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, -4
  %91 = add nsw i32 %90, 4
  %92 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 8
  %95 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %97 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %96, i32 10, %struct.sisusb_packet* %9)
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %75, %4, %50, %25, %16
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
