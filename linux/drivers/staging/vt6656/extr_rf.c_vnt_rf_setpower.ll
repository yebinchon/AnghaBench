; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_setpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_setpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32*, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL_24G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_rf_setpower(%struct.vnt_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  switch i64 %18, label %53 [
    i64 136, label %19
    i64 134, label %19
    i64 130, label %19
    i64 139, label %19
    i64 129, label %32
    i64 128, label %32
    i64 138, label %32
    i64 137, label %32
    i64 135, label %32
    i64 133, label %32
    i64 132, label %32
    i64 131, label %32
  ]

19:                                               ; preds = %17, %17, %17, %17
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24, %19
  br label %53

32:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, 15
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %52

44:                                               ; preds = %32
  %45 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %17, %52, %31
  %54 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @vnt_rf_set_txpower(%struct.vnt_private* %54, i32 %55, i64 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @vnt_rf_set_txpower(%struct.vnt_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
