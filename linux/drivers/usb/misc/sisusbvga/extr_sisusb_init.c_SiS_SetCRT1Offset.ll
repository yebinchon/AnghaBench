; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1Offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1Offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@InterlaceMode = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1Offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1Offset(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %13 = load i16, i16* %6, align 2
  %14 = load i16, i16* %7, align 2
  %15 = load i16, i16* %8, align 2
  %16 = call zeroext i16 @SiS_GetOffset(%struct.SiS_Private* %12, i16 zeroext %13, i16 zeroext %14, i16 zeroext %15)
  store i16 %16, i16* %9, align 2
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i16, i16* %8, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %10, align 2
  %25 = load i16, i16* %9, align 2
  %26 = zext i16 %25 to i32
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 15
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %11, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i16, i16* %11, align 2
  %35 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %30, i32 %33, i32 14, i32 240, i16 zeroext %34)
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i16, i16* %9, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i16
  %44 = call i32 @SiS_SetReg(%struct.SiS_Private* %36, i32 %39, i32 19, i16 zeroext %43)
  %45 = load i16, i16* %10, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @InterlaceMode, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load i16, i16* %9, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 1
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %9, align 2
  br label %56

56:                                               ; preds = %51, %4
  %57 = load i16, i16* %9, align 2
  %58 = zext i16 %57 to i32
  %59 = shl i32 %58, 5
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %9, align 2
  %61 = load i16, i16* %9, align 2
  %62 = zext i16 %61 to i32
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %11, align 2
  %66 = load i16, i16* %9, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 255
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i16, i16* %11, align 2
  %72 = add i16 %71, 1
  store i16 %72, i16* %11, align 2
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i16, i16* %11, align 2
  %75 = add i16 %74, 1
  store i16 %75, i16* %11, align 2
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %78 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i16, i16* %11, align 2
  %81 = call i32 @SiS_SetReg(%struct.SiS_Private* %76, i32 %79, i32 16, i16 zeroext %80)
  ret void
}

declare dso_local zeroext i16 @SiS_GetOffset(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(%struct.SiS_Private*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
