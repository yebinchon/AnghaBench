; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_font_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_font_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.console_font = type { i32, i32, i32, i32 }
%struct.sisusb_usb_data = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*)* @sisusbcon_font_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_font_get(%struct.vc_data* %0, %struct.console_font* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.console_font*, align 8
  %6 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.console_font* %1, %struct.console_font** %5, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %9)
  store %struct.sisusb_usb_data* %10, %struct.sisusb_usb_data** %6, align 8
  %11 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %12 = icmp ne %struct.sisusb_usb_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.console_font*, %struct.console_font** %5, align 8
  %18 = getelementptr inbounds %struct.console_font, %struct.console_font* %17, i32 0, i32 0
  store i32 8, i32* %18, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.console_font*, %struct.console_font** %5, align 8
  %24 = getelementptr inbounds %struct.console_font, %struct.console_font* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.console_font*, %struct.console_font** %5, align 8
  %26 = getelementptr inbounds %struct.console_font, %struct.console_font* %25, i32 0, i32 1
  store i32 256, i32* %26, align 4
  %27 = load %struct.console_font*, %struct.console_font** %5, align 8
  %28 = getelementptr inbounds %struct.console_font, %struct.console_font* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %33 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %3, align 4
  br label %57

35:                                               ; preds = %16
  %36 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %37 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %35
  %47 = load %struct.console_font*, %struct.console_font** %5, align 8
  %48 = getelementptr inbounds %struct.console_font, %struct.console_font* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %51 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 8192)
  %54 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %55 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %40, %31, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
