; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_addpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_addpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64 }

@RF_VT3226D0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @vnt_rf_addpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_rf_addpower(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 7, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RF_VT3226D0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, -70
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 9, i32* %2, align 4
  br label %49

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, -65
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 7, i32* %2, align 4
  br label %49

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, -60
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 5, i32* %2, align 4
  br label %49

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %48

33:                                               ; preds = %12
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, -80
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 9, i32* %2, align 4
  br label %49

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, -75
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 7, i32* %2, align 4
  br label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, -70
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 5, i32* %2, align 4
  br label %49

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %32
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %40, %36, %29, %25, %21, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
