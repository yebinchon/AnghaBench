; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_set_origin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_set_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }
%struct.sisusb_usb_data = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @sisusbcon_set_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_set_origin(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %7)
  store %struct.sisusb_usb_data* %8, %struct.sisusb_usb_data** %4, align 8
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %10 = icmp ne %struct.sisusb_usb_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %15 = call i64 @sisusb_is_inactive(%struct.vc_data* %13, %struct.sisusb_usb_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %12
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 0, i32* %2, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %28 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = call i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data* %34, %struct.vc_data* %35)
  %37 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %38 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %40 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %26, %22, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data*, %struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
