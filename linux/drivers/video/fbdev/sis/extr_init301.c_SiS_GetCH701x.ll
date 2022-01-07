; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCH701x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCH701x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetCH701x(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %6 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %5, i32 0, i32 0
  store i32 17, i32* %6, align 4
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 1
  store i32 8, i32* %8, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 2
  store i32 4, i32* %10, align 4
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %11)
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 3
  store i32 234, i32* %14, align 4
  %15 = load i16, i16* %4, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 4
  store i16 %15, i16* %17, align 4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = call zeroext i16 @SiS_GetChReg(%struct.SiS_Private* %18, i32 0)
  ret i16 %19
}

declare dso_local i32 @SiS_SetupDDCN(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetChReg(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
