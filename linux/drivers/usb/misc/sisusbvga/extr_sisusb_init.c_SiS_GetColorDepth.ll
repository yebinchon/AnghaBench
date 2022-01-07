; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetColorDepth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetColorDepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }

@SiS_GetColorDepth.ColorDepth = internal constant [6 x i16] [i16 1, i16 2, i16 4, i16 4, i16 6, i16 8], align 2
@ModeTypeMask = common dso_local global i16 0, align 2
@ModeEGA = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16, i16)* @SiS_GetColorDepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp sle i32 %10, 19
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %7, align 2
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %7, align 2
  br label %30

30:                                               ; preds = %21, %12
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @ModeTypeMask, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = load i16, i16* @ModeEGA, align 2
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %8, align 2
  %40 = load i16, i16* %8, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i16 0, i16* %8, align 2
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i16, i16* %8, align 2
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds [6 x i16], [6 x i16]* @SiS_GetColorDepth.ColorDepth, i64 0, i64 %46
  %48 = load i16, i16* %47, align 2
  ret i16 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
