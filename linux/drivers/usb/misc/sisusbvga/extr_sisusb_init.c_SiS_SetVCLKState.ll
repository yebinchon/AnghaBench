; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetVCLKState.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetVCLKState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetVCLKState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetVCLKState(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sgt i32 %11, 19
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %9, align 2
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i16, i16* %9, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %8, align 2
  br label %30

30:                                               ; preds = %13, %3
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sge i32 %32, 166
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i16, i16* %7, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, 12
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %7, align 2
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i16, i16* %7, align 2
  %45 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %40, i32 %43, i32 50, i32 243, i16 zeroext %44)
  %46 = load i16, i16* %8, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sge i32 %47, 166
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %50, i32 %53, i32 31, i32 231)
  br label %55

55:                                               ; preds = %49, %39
  store i16 3, i16* %7, align 2
  %56 = load i16, i16* %8, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp sge i32 %57, 260
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i16 0, i16* %7, align 2
  br label %72

60:                                               ; preds = %55
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp sge i32 %62, 160
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i16 1, i16* %7, align 2
  br label %71

65:                                               ; preds = %60
  %66 = load i16, i16* %8, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp sge i32 %67, 135
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i16 2, i16* %7, align 2
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i16, i16* %7, align 2
  %78 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %73, i32 %76, i32 7, i32 248, i16 zeroext %77)
  ret void
}

declare dso_local i32 @SiS_SetRegANDOR(%struct.SiS_Private*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
