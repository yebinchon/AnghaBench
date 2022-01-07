; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_OpenCRTC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_OpenCRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32 }

@IS_SIS650 = common dso_local global i64 0, align 8
@IS_SIS651 = common dso_local global i64 0, align 8
@IS_SIS661741660760 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_OpenCRTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_OpenCRTC(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load i64, i64* @IS_SIS650, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SiS_SetRegAND(i32 %8, i32 81, i32 31)
  %10 = load i64, i64* @IS_SIS651, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SiS_SetRegOR(i32 %15, i32 81, i32 32)
  br label %17

17:                                               ; preds = %12, %5
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SiS_SetRegAND(i32 %20, i32 86, i32 231)
  br label %49

22:                                               ; preds = %1
  %23 = load i64, i64* @IS_SIS661741660760, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SiS_SetRegAND(i32 %28, i32 97, i32 247)
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SiS_SetRegAND(i32 %32, i32 81, i32 31)
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SiS_SetRegAND(i32 %36, i32 86, i32 231)
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %25
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %44 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SiS_SetRegAND(i32 %45, i32 58, i32 239)
  br label %47

47:                                               ; preds = %42, %25
  br label %48

48:                                               ; preds = %47, %22
  br label %49

49:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
