; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRTCRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRTCRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetCRTCRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRTCRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %7, i32 %10, i32 17, i32 127)
  store i16 0, i16* %6, align 2
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sle i32 %14, 24
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %5, align 1
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @SiS_SetReg(%struct.SiS_Private* %29, i32 %32, i16 zeroext %33, i8 zeroext %34)
  br label %36

36:                                               ; preds = %16
  %37 = load i16, i16* %6, align 2
  %38 = add i16 %37, 1
  store i16 %38, i16* %6, align 2
  br label %12

39:                                               ; preds = %12
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i16 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
