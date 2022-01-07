; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSSetLVDSetc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSSetLVDSetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiSSetLVDSetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiSSetLVDSetc(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %5 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %38

19:                                               ; preds = %1
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SiS_GetReg(i32 %22, i32 0)
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %3, align 2
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i16, i16* %3, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  br label %38

33:                                               ; preds = %28
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %18, %32, %37
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
