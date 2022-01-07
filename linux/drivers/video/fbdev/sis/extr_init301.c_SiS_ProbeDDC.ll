; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ProbeDDC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ProbeDDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_ProbeDDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_ProbeDDC(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 384, i16* %3, align 2
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 0
  store i32 160, i32* %5, align 4
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = call i32 @SiS_DoProbeDDC(%struct.SiS_Private* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %11, 2
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %3, align 2
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 0
  store i32 162, i32* %16, align 4
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %18 = call i32 @SiS_DoProbeDDC(%struct.SiS_Private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %22, 8
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %3, align 2
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 0
  store i32 166, i32* %27, align 4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %29 = call i32 @SiS_DoProbeDDC(%struct.SiS_Private* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = or i32 %33, 16
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %3, align 2
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i16, i16* %3, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 26
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i16 0, i16* %3, align 2
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i16, i16* %3, align 2
  ret i16 %43
}

declare dso_local i32 @SiS_DoProbeDDC(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
