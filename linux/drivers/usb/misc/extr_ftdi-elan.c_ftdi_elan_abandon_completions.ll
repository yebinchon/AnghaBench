; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_abandon_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_abandon_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i64, i32, %struct.u132_respond* }
%struct.u132_respond = type { i32, i64*, i32* }

@RESPOND_MASK = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ftdi*)* @ftdi_elan_abandon_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_abandon_completions(%struct.usb_ftdi* %0) #0 {
  %2 = alloca %struct.usb_ftdi*, align 8
  %3 = alloca %struct.u132_respond*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %2, align 8
  %4 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %5 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %9 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %12 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %17 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %16, i32 0, i32 3
  %18 = load %struct.u132_respond*, %struct.u132_respond** %17, align 8
  %19 = load i64, i64* @RESPOND_MASK, align 8
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = and i64 %19, %22
  %25 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %18, i64 %24
  store %struct.u132_respond* %25, %struct.u132_respond** %3, align 8
  %26 = load i32, i32* @ESHUTDOWN, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.u132_respond*, %struct.u132_respond** %3, align 8
  %29 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32 %27, i32* %30, align 4
  %31 = load %struct.u132_respond*, %struct.u132_respond** %3, align 8
  %32 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.u132_respond*, %struct.u132_respond** %3, align 8
  %35 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %34, i32 0, i32 0
  %36 = call i32 @complete(i32* %35)
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %39 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %38, i32 0, i32 2
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
