; ModuleID = '/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_do_spring_cleaning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_do_spring_cleaning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_array = type { i32, i32*, i32, i64 }

@DECAY_MASK = common dso_local global i32 0, align 4
@COUNT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ce_array*)* @do_spring_cleaning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_spring_cleaning(%struct.ce_array* %0) #0 {
  %2 = alloca %struct.ce_array*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ce_array* %0, %struct.ce_array** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %49, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %8 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %5
  %12 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %13 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DECAY(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %49

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @DECAY_MASK, align 4
  %27 = load i32, i32* @COUNT_BITS, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %31 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %29
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @COUNT_BITS, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %42 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %23, %22
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %5

52:                                               ; preds = %5
  %53 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %54 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %56 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  ret void
}

declare dso_local i32 @DECAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
