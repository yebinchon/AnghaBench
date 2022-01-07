; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiSUSBSetVESAMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiSUSBSetVESAMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiSUSBSetVESAMode(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 0, i16* %6, align 2
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %9 = call i32 @SiSUSB_InitPtr(%struct.SiS_Private* %8)
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i16 3, i16* %6, align 2
  br label %51

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 4
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %6, align 2
  br label %50

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %15, label %50

50:                                               ; preds = %39, %28
  br label %51

51:                                               ; preds = %50, %13
  %52 = load i16, i16* %6, align 2
  %53 = icmp ne i16 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %59

55:                                               ; preds = %51
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %57 = load i16, i16* %6, align 2
  %58 = call i32 @SiSUSBSetMode(%struct.SiS_Private* %56, i16 zeroext %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @SiSUSB_InitPtr(%struct.SiS_Private*) #1

declare dso_local i32 @SiSUSBSetMode(%struct.SiS_Private*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
