; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSeqRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetSeqRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetSeqRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetSeqRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @SiS_SetReg(%struct.SiS_Private* %7, i32 %10, i32 0, i8 zeroext 3)
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 32
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i32 @SiS_SetReg(%struct.SiS_Private* %24, i32 %27, i32 1, i8 zeroext %28)
  store i32 2, i32* %6, align 4
  br label %30

30:                                               ; preds = %55, %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 4
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %5, align 1
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i8, i8* %5, align 1
  %54 = call i32 @SiS_SetReg(%struct.SiS_Private* %48, i32 %51, i32 %52, i8 zeroext %53)
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %30

58:                                               ; preds = %30
  ret void
}

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
