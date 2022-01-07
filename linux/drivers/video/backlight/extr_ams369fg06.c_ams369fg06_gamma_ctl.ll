; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_gamma_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_gamma_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.ams369fg06 = type { i32 }

@gamma_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams369fg06*, i32)* @ams369fg06_gamma_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_gamma_ctl(%struct.ams369fg06* %0, i32 %1) #0 {
  %3 = alloca %struct.ams369fg06*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ams369fg06* %0, %struct.ams369fg06** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 50
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %45

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 50
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 100
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %44

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 100
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 150
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %6, align 4
  br label %43

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 150
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 200
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 3, i32* %6, align 4
  br label %42

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 200
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37, %34
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %12
  %46 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gamma_table, i32 0, i32 0), align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_ams369fg06_gamma_ctl(%struct.ams369fg06* %46, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @_ams369fg06_gamma_ctl(%struct.ams369fg06*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
