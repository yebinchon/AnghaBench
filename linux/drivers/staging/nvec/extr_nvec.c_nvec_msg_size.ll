; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_msg_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_msg = type { i32*, i64, i64 }

@NVEC_VAR_SIZE = common dso_local global i32 0, align 4
@NVEC_2BYTES = common dso_local global i32 0, align 4
@NVEC_3BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvec_msg*)* @nvec_msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvec_msg_size(%struct.nvec_msg* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nvec_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvec_msg* %0, %struct.nvec_msg** %3, align 8
  %6 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  %7 = call i32 @nvec_msg_is_event(%struct.nvec_msg* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  %9 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 96
  %14 = ashr i32 %13, 5
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NVEC_VAR_SIZE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17, %1
  %22 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  %23 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  %28 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %21
  %32 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  %33 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi i32 [ %37, %31 ], [ 0, %38 ]
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %2, align 8
  br label %55

42:                                               ; preds = %17
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @NVEC_2BYTES, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 2, i64* %2, align 8
  br label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NVEC_3BYTES, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 3, i64* %2, align 8
  br label %55

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  store i64 0, i64* %2, align 8
  br label %55

55:                                               ; preds = %54, %51, %46, %39
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @nvec_msg_is_event(%struct.nvec_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
