; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_domain_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_domain_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bus_type = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@ap_max_domain_id = common dso_local global i32 0, align 4
@ap_perms = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i64 0, align 8
@ap_domain_lock = common dso_local global i32 0, align 4
@ap_domain_index = common dso_local global i32 0, align 4
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"stored new default domain=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bus_type*, i8*, i64)* @ap_domain_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ap_domain_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ap_max_domain_id, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ap_perms, i32 0, i32 0), align 4
  %22 = call i32 @test_bit_inv(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %15, %12, %3
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %35

27:                                               ; preds = %19
  %28 = call i32 @spin_lock_bh(i32* @ap_domain_lock)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* @ap_domain_index, align 4
  %30 = call i32 @spin_unlock_bh(i32* @ap_domain_lock)
  %31 = load i32, i32* @DBF_DEBUG, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @AP_DBF(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @test_bit_inv(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @AP_DBF(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
