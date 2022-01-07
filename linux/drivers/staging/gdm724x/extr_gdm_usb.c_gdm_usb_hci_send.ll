; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_hci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_hci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lte_udev = type { %struct.TYPE_2__, i32, %struct.tx_cxt }
%struct.TYPE_2__ = type { i32 }
%struct.tx_cxt = type { i32, i32 }
%struct.usb_tx = type { void (i8*)*, i32, i32, i64, %struct.tx_cxt*, i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"hci send - invalid device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hci_send - out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, void (i8*)*, i8*)* @gdm_usb_hci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_usb_hci_send(i8* %0, i8* %1, i32 %2, void (i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lte_udev*, align 8
  %13 = alloca %struct.tx_cxt*, align 8
  %14 = alloca %struct.usb_tx*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (i8*)* %3, void (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.lte_udev*
  store %struct.lte_udev* %17, %struct.lte_udev** %12, align 8
  %18 = load %struct.lte_udev*, %struct.lte_udev** %12, align 8
  %19 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %18, i32 0, i32 2
  store %struct.tx_cxt* %19, %struct.tx_cxt** %13, align 8
  %20 = load %struct.lte_udev*, %struct.lte_udev** %12, align 8
  %21 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %75

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.usb_tx* @alloc_tx_struct(i32 %29)
  store %struct.usb_tx* %30, %struct.usb_tx** %14, align 8
  %31 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %32 = icmp ne %struct.usb_tx* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %75

37:                                               ; preds = %28
  %38 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %39 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @memcpy(i32 %40, i8* %41, i32 %42)
  %44 = load void (i8*)*, void (i8*)** %10, align 8
  %45 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %46 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %45, i32 0, i32 0
  store void (i8*)* %44, void (i8*)** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %49 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %52 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tx_cxt*, %struct.tx_cxt** %13, align 8
  %54 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %55 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %54, i32 0, i32 4
  store %struct.tx_cxt* %53, %struct.tx_cxt** %55, align 8
  %56 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %57 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.tx_cxt*, %struct.tx_cxt** %13, align 8
  %59 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %58, i32 0, i32 0
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.usb_tx*, %struct.usb_tx** %14, align 8
  %63 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %62, i32 0, i32 2
  %64 = load %struct.tx_cxt*, %struct.tx_cxt** %13, align 8
  %65 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %64, i32 0, i32 1
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.lte_udev*, %struct.lte_udev** %12, align 8
  %68 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @schedule_work(i32* %69)
  %71 = load %struct.tx_cxt*, %struct.tx_cxt** %13, align 8
  %72 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %71, i32 0, i32 0
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %37, %33, %24
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.usb_tx* @alloc_tx_struct(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
