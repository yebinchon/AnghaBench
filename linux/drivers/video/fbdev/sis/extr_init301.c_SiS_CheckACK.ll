; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_CheckACK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_CheckACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_CheckACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_CheckACK(%struct.SiS_Private* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %6 = call i32 @SiS_SetSCLKLow(%struct.SiS_Private* %5)
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 4
  %19 = call i32 @SiS_SetRegANDOR(i32 %9, i32 %12, i32 %15, i16 zeroext %18)
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %21 = call i32 @SiS_SetSCLKHigh(%struct.SiS_Private* %20)
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call zeroext i16 @SiS_GetReg(i32 %24, i32 %27)
  store i16 %28, i16* %4, align 2
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %30 = call i32 @SiS_SetSCLKLow(%struct.SiS_Private* %29)
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 4
  %36 = zext i16 %35 to i32
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i16 1, i16* %2, align 2
  br label %41

40:                                               ; preds = %1
  store i16 0, i16* %2, align 2
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i16, i16* %2, align 2
  ret i16 %42
}

declare dso_local i32 @SiS_SetSCLKLow(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetSCLKHigh(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
