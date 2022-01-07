; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.tty_dev = type { %struct.mux_dev* }
%struct.mux_dev = type { i64, i32 }

@PM_SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"usb resume - invalid state\0A\00", align 1
@PM_NORMAL = common dso_local global i64 0, align 8
@MAX_ISSUE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @gdm_mux_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_mux_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.tty_dev*, align 8
  %5 = alloca %struct.mux_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.tty_dev* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.tty_dev* %8, %struct.tty_dev** %4, align 8
  %9 = load %struct.tty_dev*, %struct.tty_dev** %4, align 8
  %10 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %9, i32 0, i32 0
  %11 = load %struct.mux_dev*, %struct.mux_dev** %10, align 8
  store %struct.mux_dev* %11, %struct.mux_dev** %5, align 8
  %12 = load %struct.mux_dev*, %struct.mux_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PM_SUSPEND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load i64, i64* @PM_NORMAL, align 8
  %24 = load %struct.mux_dev*, %struct.mux_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %36, %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MAX_ISSUE_NUM, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.mux_dev*, %struct.mux_dev** %5, align 8
  %32 = load %struct.mux_dev*, %struct.mux_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gdm_mux_recv(%struct.mux_dev* %31, i32 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %26

39:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.tty_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gdm_mux_recv(%struct.mux_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
