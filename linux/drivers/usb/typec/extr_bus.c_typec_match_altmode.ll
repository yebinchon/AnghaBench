; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_match_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_match_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_match_altmode(%struct.typec_altmode** %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca %struct.typec_altmode**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.typec_altmode** %0, %struct.typec_altmode*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %51, %4
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %17, i64 %19
  %21 = load %struct.typec_altmode*, %struct.typec_altmode** %20, align 8
  %22 = icmp ne %struct.typec_altmode* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %25, i64 %27
  %29 = load %struct.typec_altmode*, %struct.typec_altmode** %28, align 8
  %30 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %35, i64 %37
  %39 = load %struct.typec_altmode*, %struct.typec_altmode** %38, align 8
  %40 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %45, i64 %47
  %49 = load %struct.typec_altmode*, %struct.typec_altmode** %48, align 8
  store %struct.typec_altmode* %49, %struct.typec_altmode** %5, align 8
  br label %55

50:                                               ; preds = %34, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %11

54:                                               ; preds = %23, %11
  store %struct.typec_altmode* null, %struct.typec_altmode** %5, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  ret %struct.typec_altmode* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
