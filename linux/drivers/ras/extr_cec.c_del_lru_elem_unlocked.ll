; ModuleID = '/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_del_lru_elem_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_del_lru_elem_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_array = type { i32, i32* }

@FULL_COUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ce_array*)* @del_lru_elem_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_lru_elem_unlocked(%struct.ce_array* %0) #0 {
  %2 = alloca %struct.ce_array*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ce_array* %0, %struct.ce_array** %2, align 8
  %7 = load i32, i32* @FULL_COUNT_MASK, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %11 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %16 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FULL_COUNT(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @del_elem(%struct.ce_array* %34, i32 %35)
  %37 = load %struct.ce_array*, %struct.ce_array** %2, align 8
  %38 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PFN(i32 %43)
  ret i32 %44
}

declare dso_local i32 @FULL_COUNT(i32) #1

declare dso_local i32 @del_elem(%struct.ce_array*, i32) #1

declare dso_local i32 @PFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
