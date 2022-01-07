; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_set_shuttle_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_set_shuttle_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USBAT_CMD_SET_FEAT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8, i8, i8, i8, i8, i8)* @usbat_set_shuttle_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_set_shuttle_features(%struct.us_data* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  store i8 %6, i8* %14, align 1
  %16 = load %struct.us_data*, %struct.us_data** %8, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 64, i8* %20, align 1
  %21 = load i8, i8* @USBAT_CMD_SET_FEAT, align 1
  %22 = load i8*, i8** %15, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i8, i8* %10, align 1
  %25 = load i8*, i8** %15, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %26, align 1
  %27 = load i8, i8* %9, align 1
  %28 = load i8*, i8** %15, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %27, i8* %29, align 1
  %30 = load i8, i8* %12, align 1
  %31 = load i8*, i8** %15, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8 %30, i8* %32, align 1
  %33 = load i8, i8* %11, align 1
  %34 = load i8*, i8** %15, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8 %33, i8* %35, align 1
  %36 = load i8, i8* %14, align 1
  %37 = load i8*, i8** %15, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  store i8 %36, i8* %38, align 1
  %39 = load i8, i8* %13, align 1
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 7
  store i8 %39, i8* %41, align 1
  %42 = load %struct.us_data*, %struct.us_data** %8, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @usbat_execute_command(%struct.us_data* %42, i8* %43, i32 8)
  ret i32 %44
}

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
