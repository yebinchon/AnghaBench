; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SearchModeID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SearchModeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16*, i16*)* @SiS_SearchModeID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_SearchModeID(%struct.SiS_Private* %0, i16* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16* %2, i16** %7, align 8
  %8 = load i16*, i16** %6, align 8
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp sle i32 %10, 19
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i16*, i16** %6, align 8
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %58

18:                                               ; preds = %12
  %19 = load i16*, i16** %7, align 8
  store i16 0, i16* %19, align 2
  br label %57

20:                                               ; preds = %3
  %21 = load i16*, i16** %7, align 8
  store i16 0, i16* %21, align 2
  br label %22

22:                                               ; preds = %52, %20
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i16*, i16** %7, align 8
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16*, i16** %6, align 8
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %56

38:                                               ; preds = %22
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i16*, i16** %7, align 8
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %58

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load i16*, i16** %7, align 8
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, 1
  store i16 %55, i16* %53, align 2
  br label %22

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %18
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %50, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
