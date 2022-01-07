; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_UnLockCRT2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_UnLockCRT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32 }

@XGI_20 = common dso_local global i64 0, align 8
@SIS_315H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_UnLockCRT2(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @XGI_20, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SIS_315H, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SiS_SetRegOR(i32 %18, i32 47, i32 1)
  br label %25

20:                                               ; preds = %9
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @SiS_SetRegOR(i32 %23, i32 36, i32 1)
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %8, %25
  ret void
}

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
