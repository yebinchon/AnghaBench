; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_get_current_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_get_current_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@efuse_available_max_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r8712_efuse_get_current_size(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @efuse_one_byte_read(%struct._adapter* %12, i64 %13, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @efuse_available_max_size, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %16, %11, %8
  %21 = phi i1 [ false, %11 ], [ false, %8 ], [ %19, %16 ]
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 255
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @calculate_word_cnts(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  br label %8

38:                                               ; preds = %20
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @efuse_one_byte_read(%struct._adapter*, i64, i32*) #1

declare dso_local i32 @calculate_word_cnts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
