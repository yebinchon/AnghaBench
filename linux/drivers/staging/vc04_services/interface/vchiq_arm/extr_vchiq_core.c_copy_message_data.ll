; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_copy_message_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_copy_message_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64 (i8*, i8*, i64, i64)*, i8*, i8*, i64)* @copy_message_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_message_data(i64 (i8*, i8*, i64, i64)* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64 (i8*, i8*, i64, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 (i8*, i8*, i64, i64)* %0, i64 (i8*, i8*, i64, i64)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load i64 (i8*, i8*, i64, i64)*, i64 (i8*, i8*, i64, i64)** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i64 %21(i8* %22, i8* %25, i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %5, align 8
  br label %52

33:                                               ; preds = %17
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @EIO, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %52

39:                                               ; preds = %33
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @EIO, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %52

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %43, %36, %31
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
