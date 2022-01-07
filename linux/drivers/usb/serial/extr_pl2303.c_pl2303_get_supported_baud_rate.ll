; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_get_supported_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_get_supported_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pl2303_get_supported_baud_rate.baud_sup = internal constant [25 x i32] [i32 75, i32 150, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 3600, i32 4800, i32 7200, i32 9600, i32 14400, i32 19200, i32 28800, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 614400, i32 921600, i32 1228800, i32 2457600, i32 3000000, i32 6000000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl2303_get_supported_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_get_supported_baud_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 0))
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 0))
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %40, %45
  %47 = icmp sgt i32 %39, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %33, %30
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [25 x i32], [25 x i32]* @pl2303_get_supported_baud_rate.baud_sup, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %48
  br label %60

60:                                               ; preds = %59, %24
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
