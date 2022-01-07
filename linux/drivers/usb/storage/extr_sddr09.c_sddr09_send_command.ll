; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32 }

@USB_DIR_IN = common dso_local global i8 0, align 1
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8, i8, i8*, i32)* @sddr09_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_send_command(%struct.us_data* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 65, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %13, align 1
  %19 = load i8, i8* %9, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @USB_DIR_IN, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.us_data*, %struct.us_data** %7, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %32

28:                                               ; preds = %5
  %29 = load %struct.us_data*, %struct.us_data** %7, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.us_data*, %struct.us_data** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8, i8* %8, align 1
  %36 = load i8, i8* %13, align 1
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %33, i32 %34, i8 zeroext %35, i8 zeroext %36, i32 0, i32 0, i8* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %45 [
    i32 129, label %41
    i32 128, label %42
  ]

41:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %42, %41
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i8 zeroext, i8 zeroext, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
