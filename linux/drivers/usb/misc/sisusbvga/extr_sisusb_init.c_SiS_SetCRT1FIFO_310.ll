; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1FIFO_310.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1FIFO_310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@DoubleScanMode = common dso_local global i16 0, align 2
@HalfDCLK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetCRT1FIFO_310 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1FIFO_310(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 2
  store i16 %15, i16* %7, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %16, i32 %19, i32 61, i32 254)
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SiS_SetReg(%struct.SiS_Private* %21, i32 %24, i32 8, i32 174)
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %26, i32 %29, i32 9, i32 240)
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sle i32 %32, 19
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %60

35:                                               ; preds = %3
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @DoubleScanMode, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i16, i16* %7, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @HalfDCLK, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SiS_SetReg(%struct.SiS_Private* %50, i32 %53, i32 8, i32 52)
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SiS_SetRegOR(%struct.SiS_Private* %55, i32 %58, i32 61, i32 1)
  br label %60

60:                                               ; preds = %34, %49, %42
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
