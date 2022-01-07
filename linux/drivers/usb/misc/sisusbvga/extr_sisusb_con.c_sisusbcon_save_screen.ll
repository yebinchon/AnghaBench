; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_save_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_save_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i64, i32 }
%struct.sisusb_usb_data = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @sisusbcon_save_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_save_screen(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %7)
  store %struct.sisusb_usb_data* %8, %struct.sisusb_usb_data** %3, align 8
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %10 = icmp ne %struct.sisusb_usb_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %15 = call i64 @sisusb_is_inactive(%struct.vc_data* %13, %struct.sisusb_usb_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  br label %52

21:                                               ; preds = %12
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %27 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %30 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @min(i32 %25, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @memcpy(i32* %42, i32* %46, i32 %47)
  %49 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %50 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %21, %17, %11
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
