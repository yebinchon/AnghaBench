; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCH701x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCH701x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetCH701x(%struct.SiS_Private* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 0
  store i32 17, i32* %8, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 1
  store i32 8, i32* %10, align 4
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 2
  store i32 4, i32* %12, align 4
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %13)
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 3
  store i32 234, i32* %16, align 4
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %18 = load i16, i16* %5, align 2
  %19 = load i8, i8* %6, align 1
  %20 = call i32 @SiS_SetChReg(%struct.SiS_Private* %17, i16 zeroext %18, i8 zeroext %19, i32 0)
  ret void
}

declare dso_local i32 @SiS_SetupDDCN(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetChReg(%struct.SiS_Private*, i16 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
