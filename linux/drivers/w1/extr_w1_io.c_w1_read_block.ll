; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_read_block(%struct.w1_master* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %10 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32*, i32)* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %17 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %19, align 8
  %21 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %22 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %20(i32 %25, i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %46

29:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %36 = call i32 @w1_read_8(%struct.w1_master* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %15
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @w1_read_8(%struct.w1_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
