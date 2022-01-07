; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_triplet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_triplet(%struct.w1_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %10 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %17 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %22 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %20(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %30 = call i32 @w1_touch_bit(%struct.w1_master* %29, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %32 = call i32 @w1_touch_bit(%struct.w1_master* %31, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 3, i32* %3, align 4
  br label %73

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 4, i32 0
  store i32 %49, i32* %8, align 4
  br label %56

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 5, i32 2
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %58 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @w1_touch_bit(%struct.w1_master* %64, i32 %65)
  br label %71

67:                                               ; preds = %56
  %68 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @w1_write_bit(%struct.w1_master* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %38, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @w1_touch_bit(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_write_bit(%struct.w1_master*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
