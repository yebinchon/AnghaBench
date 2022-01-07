; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_change_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_change_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@efuse_available_max_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_efuse_change_max_size(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [5 x i32], align 16
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i64 507, i64* %3, align 8
  store i64 5, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %16
  %18 = call i32 @efuse_one_byte_read(%struct._adapter* %12, i64 %15, i32* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %7

22:                                               ; preds = %7
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %40 = load i32, i32* %39, align 16
  %41 = icmp eq i32 %40, 12
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @efuse_available_max_size, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @efuse_available_max_size, align 4
  br label %48

48:                                               ; preds = %42, %38, %34, %30, %26, %22
  ret void
}

declare dso_local i32 @efuse_one_byte_read(%struct._adapter*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
