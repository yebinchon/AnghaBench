; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_apqn_in_matrix_owned_by_def_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_apqn_in_matrix_owned_by_def_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@ap_perms_mutex = common dso_local global i32 0, align 4
@AP_DEVICES = common dso_local global i32 0, align 4
@ap_perms = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AP_DOMAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_apqn_in_matrix_owned_by_def_drv(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @ap_perms_mutex)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %55, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AP_DEVICES, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %58

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = load i64*, i64** %3, align 8
  %21 = call i64 @test_bit_inv(i32 %19, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ap_perms, i32 0, i32 0), align 8
  %26 = call i64 @test_bit_inv(i32 %24, i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AP_DOMAINS, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = load i64*, i64** %4, align 8
  %41 = call i64 @test_bit_inv(i32 %39, i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ap_perms, i32 0, i32 1), align 8
  %46 = call i64 @test_bit_inv(i32 %44, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %43, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %29

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %23, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %9

58:                                               ; preds = %16
  %59 = call i32 @mutex_unlock(i32* @ap_perms_mutex)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit_inv(i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
