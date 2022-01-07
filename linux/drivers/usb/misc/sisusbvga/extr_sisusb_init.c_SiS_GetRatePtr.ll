; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetRatePtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_GetRatePtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i16 }

@ModeTypeMask = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16, i16)* @SiS_GetRatePtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
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
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 19
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %109

16:                                               ; preds = %3
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SiS_GetReg(%struct.SiS_Private* %17, i32 %20, i32 51)
  %22 = and i32 %21, 15
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %10, align 2
  %24 = load i16, i16* %10, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i16, i16* %10, align 2
  %29 = add i16 %28, -1
  store i16 %29, i16* %10, align 2
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %8, align 2
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 2
  store i16 %46, i16* %6, align 2
  store i16 0, i16* %9, align 2
  br label %47

47:                                               ; preds = %96, %30
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i16, i16* %8, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %6, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %100

65:                                               ; preds = %47
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i16, i16* %8, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @ModeTypeMask, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %78, %80
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %11, align 2
  %83 = load i16, i16* %11, align 2
  %84 = zext i16 %83 to i32
  %85 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %86 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %85, i32 0, i32 0
  %87 = load i16, i16* %86, align 8
  %88 = zext i16 %87 to i32
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  br label %100

91:                                               ; preds = %65
  %92 = load i16, i16* %9, align 2
  %93 = add i16 %92, 1
  store i16 %93, i16* %9, align 2
  %94 = load i16, i16* %10, align 2
  %95 = add i16 %94, -1
  store i16 %95, i16* %10, align 2
  br label %96

96:                                               ; preds = %91
  %97 = load i16, i16* %10, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp ne i32 %98, 65535
  br i1 %99, label %47, label %100

100:                                              ; preds = %96, %90, %64
  %101 = load i16, i16* %9, align 2
  %102 = add i16 %101, -1
  store i16 %102, i16* %9, align 2
  %103 = load i16, i16* %8, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* %9, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %4, align 2
  br label %109

109:                                              ; preds = %100, %15
  %110 = load i16, i16* %4, align 2
  ret i16 %110
}

declare dso_local i32 @SiS_GetReg(%struct.SiS_Private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
