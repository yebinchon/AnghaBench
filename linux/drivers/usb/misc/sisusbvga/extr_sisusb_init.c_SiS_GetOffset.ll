; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetOffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16, i16 }

@InterlaceMode = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetOffset(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %12, align 2
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i16, i16* %8, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %9, align 2
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %30 = load i16, i16* %6, align 2
  %31 = load i16, i16* %7, align 2
  %32 = call zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private* %29, i16 zeroext %30, i16 zeroext %31)
  store i16 %32, i16* %11, align 2
  %33 = load i16, i16* %9, align 2
  %34 = zext i16 %33 to i32
  %35 = sdiv i32 %34, 16
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %10, align 2
  %37 = load i16, i16* %12, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @InterlaceMode, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %4
  %44 = load i16, i16* %10, align 2
  %45 = zext i16 %44 to i32
  %46 = shl i32 %45, 1
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %10, align 2
  br label %48

48:                                               ; preds = %43, %4
  %49 = load i16, i16* %11, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %10, align 2
  %52 = zext i16 %51 to i32
  %53 = mul nsw i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %10, align 2
  %55 = load i16, i16* %9, align 2
  %56 = zext i16 %55 to i32
  %57 = srem i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i16, i16* %11, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 1
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %64, %62
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %10, align 2
  br label %67

67:                                               ; preds = %59, %48
  %68 = load i16, i16* %10, align 2
  ret i16 %68
}

declare dso_local zeroext i16 @SiS_GetColorDepth(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
