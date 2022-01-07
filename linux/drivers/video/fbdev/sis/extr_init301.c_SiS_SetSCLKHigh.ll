; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetSCLKHigh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetSCLKHigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_SetSCLKHigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_SetSCLKHigh(%struct.SiS_Private* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 1000, i16* %5, align 2
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 4
  %18 = call i32 @SiS_SetRegANDOR(i32 %8, i32 %11, i32 %14, i16 zeroext %17)
  br label %19

19:                                               ; preds = %41, %1
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call zeroext i16 @SiS_GetReg(i32 %22, i32 %25)
  store i16 %26, i16* %4, align 2
  br label %27

27:                                               ; preds = %19
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 4
  %33 = zext i16 %32 to i32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load i16, i16* %5, align 2
  %38 = add i16 %37, -1
  store i16 %38, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %27
  %42 = phi i1 [ false, %27 ], [ %40, %36 ]
  br i1 %42, label %19, label %43

43:                                               ; preds = %41
  %44 = load i16, i16* %5, align 2
  %45 = icmp ne i16 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i16 -1, i16* %2, align 2
  br label %51

47:                                               ; preds = %43
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %49 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %50 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %48, i32 %49)
  store i16 0, i16* %2, align 2
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i16, i16* %2, align 2
  ret i16 %52
}

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
