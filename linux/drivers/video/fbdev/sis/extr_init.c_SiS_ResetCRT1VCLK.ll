; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_ResetCRT1VCLK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_ResetCRT1VCLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SIS_315H = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_ResetCRT1VCLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_ResetCRT1VCLK(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SIS_315H, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIS_661, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %93

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %8
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VB_SIS30xBLV, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %93

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SiS_SetRegANDOR(i32 %39, i32 49, i32 207, i32 32)
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SiS_SetReg(i32 %43, i32 43, i32 %49)
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SiS_SetReg(i32 %53, i32 44, i32 %59)
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SiS_SetReg(i32 %63, i32 45, i32 128)
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %66 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SiS_SetRegANDOR(i32 %67, i32 49, i32 207, i32 16)
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SiS_SetReg(i32 %71, i32 43, i32 %77)
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SiS_SetReg(i32 %81, i32 44, i32 %87)
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SiS_SetReg(i32 %91, i32 45, i32 128)
  br label %93

93:                                               ; preds = %36, %34, %19
  ret void
}

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
