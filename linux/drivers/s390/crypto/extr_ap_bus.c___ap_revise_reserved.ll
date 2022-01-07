; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c___ap_revise_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c___ap_revise_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ap_perms_mutex = common dso_local global i32 0, align 4
@ap_perms = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AP_DRIVER_FLAG_DEFAULT = common dso_local global i32 0, align 4
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reprobing queue=%02x.%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__ap_revise_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ap_revise_reserved(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @is_queue_dev(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.TYPE_4__* @to_ap_queue(%struct.device* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AP_QID_CARD(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.TYPE_4__* @to_ap_queue(%struct.device* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AP_QID_QUEUE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 @mutex_lock(i32* @ap_perms_mutex)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ap_perms, i32 0, i32 1), align 4
  %27 = call i64 @test_bit_inv(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ap_perms, i32 0, i32 0), align 4
  %32 = call i64 @test_bit_inv(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %13
  %35 = phi i1 [ false, %13 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = call i32 @mutex_unlock(i32* @ap_perms_mutex)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_5__* @to_ap_drv(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AP_DRIVER_FLAG_DEFAULT, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = icmp ne i32 %50, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %34
  %58 = load i32, i32* @DBF_DEBUG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @AP_DBF(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @device_reprobe(%struct.device* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %34
  br label %65

65:                                               ; preds = %64, %2
  ret i32 0
}

declare dso_local i64 @is_queue_dev(%struct.device*) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local %struct.TYPE_4__* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit_inv(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_5__* @to_ap_drv(i32) #1

declare dso_local i32 @AP_DBF(i32, i8*, i32, i32) #1

declare dso_local i32 @device_reprobe(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
