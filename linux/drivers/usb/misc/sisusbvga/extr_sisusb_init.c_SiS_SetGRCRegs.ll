; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetGRCRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetGRCRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@ModeVGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetGRCRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGRCRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %6, align 2
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i16, i16* %6, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 8
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %5, align 1
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i16, i16* %6, align 2
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @SiS_SetReg(%struct.SiS_Private* %24, i32 %27, i16 zeroext %28, i8 zeroext %29)
  br label %31

31:                                               ; preds = %11
  %32 = load i16, i16* %6, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %6, align 2
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ModeVGA, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %41, i32 %44, i32 5, i32 191)
  br label %46

46:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i16 zeroext, i8 zeroext) #1

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
