; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_WMID_get_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_WMID_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ACER_WMID_GET_WIRELESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_BLUETOOTH_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_BRIGHTNESS_METHODID = common dso_local global i32 0, align 4
@ACER_WMID_GET_THREEG_METHODID = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @WMID_get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMID_get_u32(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %30 [
    i32 128, label %11
    i32 132, label %13
    i32 131, label %15
    i32 129, label %17
    i32 130, label %19
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @ACER_WMID_GET_WIRELESS_METHODID, align 4
  store i32 %12, i32* %9, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @ACER_WMID_GET_BLUETOOTH_METHODID, align 4
  store i32 %14, i32* %9, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* @ACER_WMID_GET_BRIGHTNESS_METHODID, align 4
  store i32 %16, i32* %9, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @ACER_WMID_GET_THREEG_METHODID, align 4
  store i32 %18, i32* %9, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = call i32 @ec_read(i32 159, i32* %7)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %2, %29
  %31 = load i32, i32* @AE_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %17, %15, %13, %11
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @WMI_execute_u32(i32 %33, i32 0, i32* %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ACPI_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %30, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ec_read(i32, i32*) #1

declare dso_local i32 @WMI_execute_u32(i32, i32, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
