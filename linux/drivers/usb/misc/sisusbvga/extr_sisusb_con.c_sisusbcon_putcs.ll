; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_putcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.sisusb_usb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i16*, i32, i32, i32)* @sisusbcon_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_putcs(%struct.vc_data* %0, i16* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %14)
  store %struct.sisusb_usb_data* %15, %struct.sisusb_usb_data** %11, align 8
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %17 = icmp ne %struct.sisusb_usb_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %55

19:                                               ; preds = %5
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %20, %struct.vc_data* %21, i32 %22, i32 %23)
  %25 = load i16*, i16** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i32 @memcpy(i32 %24, i16* %25, i32 %27)
  %29 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %31 = call i64 @sisusb_is_inactive(%struct.vc_data* %29, %struct.sisusb_usb_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %35 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %55

37:                                               ; preds = %19
  %38 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %39, %struct.vc_data* %40, i32 %41, i32 %42)
  %44 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @sisusb_haddr(%struct.sisusb_usb_data* %44, %struct.vc_data* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call i32 @sisusb_copy_memory(%struct.sisusb_usb_data* %38, i32 %43, i32 %48, i32 %50)
  %52 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %53 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %37, %33, %18
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i32 @memcpy(i32, i16*, i32) #1

declare dso_local i32 @sisusb_vaddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sisusb_copy_memory(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i32 @sisusb_haddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
