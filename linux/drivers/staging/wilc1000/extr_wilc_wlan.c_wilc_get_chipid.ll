; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_get_chipid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_get_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32, i32*)* }

@wilc_get_chipid.chipid = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_get_chipid(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @wilc_get_chipid.chipid, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %10, %2
  %14 = load %struct.wilc*, %struct.wilc** %4, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32*)** %17, align 8
  %19 = load %struct.wilc*, %struct.wilc** %4, align 8
  %20 = call i32 %18(%struct.wilc* %19, i32 4096, i32* %6)
  %21 = load %struct.wilc*, %struct.wilc** %4, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.wilc*, i32, i32*)*, i32 (%struct.wilc*, i32, i32*)** %24, align 8
  %26 = load %struct.wilc*, %struct.wilc** %4, align 8
  %27 = call i32 %25(%struct.wilc* %26, i32 5108, i32* %7)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @is_wilc1000(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  store i32 0, i32* @wilc_get_chipid.chipid, align 4
  %32 = load i32, i32* @wilc_get_chipid.chipid, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 1049248
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1049249, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1049264
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1049265, i32* %6, align 4
  br label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1049266, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* @wilc_get_chipid.chipid, align 4
  br label %57

57:                                               ; preds = %55, %10
  %58 = load i32, i32* @wilc_get_chipid.chipid, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @is_wilc1000(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
