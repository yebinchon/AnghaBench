; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SiS30xBLOn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SiS30xBLOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SiS30xBLOn(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %3, i32 65280)
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %6 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SiS_GetReg(i32 %7, i32 38)
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SiS_SetRegOR(i32 %14, i32 38, i32 2)
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = call i32 @SiS_WaitVBRetrace(%struct.SiS_Private* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SiS_GetReg(i32 %21, i32 38)
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SiS_SetRegOR(i32 %28, i32 38, i32 1)
  br label %30

30:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_WaitVBRetrace(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
