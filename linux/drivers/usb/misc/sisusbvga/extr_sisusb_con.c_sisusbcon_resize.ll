; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }
%struct.sisusb_usb_data = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32)* @sisusbcon_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_resize(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sisusb_usb_data*, align 8
  %11 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %14)
  store %struct.sisusb_usb_data* %15, %struct.sisusb_usb_data** %10, align 8
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %10, align 8
  %17 = icmp ne %struct.sisusb_usb_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %10, align 8
  %23 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %10, align 8
  %26 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 80
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
