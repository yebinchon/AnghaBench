; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_check_rbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_check_rbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32*, i64, i32)* @sisusb_check_rbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_check_rbc(%struct.sisusb_usb_data* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sisusb_usb_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %32, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %21 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @WRITEL(i64 %24, i64 %25)
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @READL(i64 %45, i64* %13)
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %64

54:                                               ; preds = %40
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32*, i32** %7, align 8
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @WRITEL(i64, i64) #1

declare dso_local i32 @READL(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
