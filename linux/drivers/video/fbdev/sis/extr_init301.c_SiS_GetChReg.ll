; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetChReg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetChReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i16, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16)* @SiS_GetChReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetChReg(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 0, i16* %8, align 2
  br label %9

9:                                                ; preds = %76, %2
  %10 = load i16, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %11, 20
  br i1 %12, label %13, label %79

13:                                               ; preds = %9
  %14 = load i16, i16* %8, align 2
  %15 = icmp ne i16 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %18 = call i64 @SiS_SetStop(%struct.SiS_Private* %17)
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %20 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %21 = mul nsw i32 %20, 4
  %22 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %19, i32 %21)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %25 = call i64 @SiS_SetStart(%struct.SiS_Private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %76

28:                                               ; preds = %23
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %29, i32 %32)
  store i16 %33, i16* %7, align 2
  %34 = load i16, i16* %7, align 2
  %35 = icmp ne i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %76

37:                                               ; preds = %28
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 4
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %42, %44
  %46 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %38, i32 %45)
  store i16 %46, i16* %7, align 2
  %47 = load i16, i16* %7, align 2
  %48 = icmp ne i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %76

50:                                               ; preds = %37
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %52 = call i64 @SiS_SetStart(%struct.SiS_Private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %76

55:                                               ; preds = %50
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 1
  %61 = call zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %56, i32 %60)
  store i16 %61, i16* %7, align 2
  %62 = load i16, i16* %7, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %76

65:                                               ; preds = %55
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %67 = call zeroext i16 @SiS_ReadDDC2Data(%struct.SiS_Private* %66)
  store i16 %67, i16* %6, align 2
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %69 = call i64 @SiS_SetStop(%struct.SiS_Private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load i16, i16* %6, align 2
  store i16 %75, i16* %3, align 2
  br label %80

76:                                               ; preds = %71, %64, %54, %49, %36, %27
  %77 = load i16, i16* %8, align 2
  %78 = add i16 %77, 1
  store i16 %78, i16* %8, align 2
  br label %9

79:                                               ; preds = %9
  store i16 -1, i16* %3, align 2
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i16, i16* %3, align 2
  ret i16 %81
}

declare dso_local i64 @SiS_SetStop(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

declare dso_local i64 @SiS_SetStart(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private*, i32) #1

declare dso_local zeroext i16 @SiS_ReadDDC2Data(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
