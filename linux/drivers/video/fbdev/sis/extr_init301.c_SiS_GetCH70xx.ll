; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCH70xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCH70xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16)* @SiS_GetCH70xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetCH70xx(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %12 = load i16, i16* %5, align 2
  %13 = call zeroext i16 @SiS_GetCH700x(%struct.SiS_Private* %11, i16 zeroext %12)
  store i16 %13, i16* %3, align 2
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %16 = load i16, i16* %5, align 2
  %17 = call zeroext i16 @SiS_GetCH701x(%struct.SiS_Private* %15, i16 zeroext %16)
  store i16 %17, i16* %3, align 2
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i16, i16* %3, align 2
  ret i16 %19
}

declare dso_local zeroext i16 @SiS_GetCH700x(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetCH701x(%struct.SiS_Private*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
