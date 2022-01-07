; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_long.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_read_memio_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32, i32*)* @sisusb_read_memio_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_read_memio_long(%struct.sisusb_usb_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sisusb_packet, align 4
  %10 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, -4
  %13 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  switch i32 %15, label %113 [
    i32 0, label %16
    i32 1, label %26
    i32 2, label %55
    i32 3, label %84
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, 15
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %22 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %21, i32 6, %struct.sisusb_packet* %9)
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %113

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 6
  %29 = or i32 %28, 14
  %30 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %32 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %31, i32 6, %struct.sisusb_packet* %9)
  store i32 %32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 6
  %39 = or i32 %38, 1
  %40 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -4
  %43 = add nsw i32 %42, 4
  %44 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %46 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %45, i32 6, %struct.sisusb_packet* %9)
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 24
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %113

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 6
  %58 = or i32 %57, 12
  %59 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %61 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %60, i32 6, %struct.sisusb_packet* %9)
  store i32 %61, i32* %10, align 4
  %62 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 6
  %68 = or i32 %67, 3
  %69 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -4
  %72 = add nsw i32 %71, 4
  %73 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %75 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %74, i32 6, %struct.sisusb_packet* %9)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %113

84:                                               ; preds = %4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 6
  %87 = or i32 %86, 8
  %88 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %90 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %89, i32 6, %struct.sisusb_packet* %9)
  store i32 %90, i32* %10, align 4
  %91 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 24
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %95, 6
  %97 = or i32 %96, 7
  %98 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, -4
  %101 = add nsw i32 %100, 4
  %102 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %104 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %103, i32 6, %struct.sisusb_packet* %9)
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %9, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %84, %4, %55, %26, %16
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
