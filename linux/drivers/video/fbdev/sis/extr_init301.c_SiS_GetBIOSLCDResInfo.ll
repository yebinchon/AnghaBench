; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetBIOSLCDResInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetBIOSLCDResInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16 }

@Panel_1280x768 = common dso_local global i16 0, align 2
@Panel_1280x800 = common dso_local global i16 0, align 2
@Panel661_1280x854 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_GetBIOSLCDResInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetBIOSLCDResInfo(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %3, align 2
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  switch i32 %8, label %15 [
    i32 130, label %9
    i32 129, label %11
    i32 128, label %13
  ]

9:                                                ; preds = %1
  %10 = load i16, i16* @Panel_1280x768, align 2
  store i16 %10, i16* %3, align 2
  br label %15

11:                                               ; preds = %1
  %12 = load i16, i16* @Panel_1280x800, align 2
  store i16 %12, i16* %3, align 2
  br label %15

13:                                               ; preds = %1
  %14 = load i16, i16* @Panel661_1280x854, align 2
  store i16 %14, i16* %3, align 2
  br label %15

15:                                               ; preds = %1, %13, %11, %9
  %16 = load i16, i16* %3, align 2
  ret i16 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
