; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_select_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_select_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ap_queue_status = type { i64 }

@ap_domain_lock = common dso_local global i32 0, align 4
@ap_domain_index = common dso_local global i32 0, align 4
@AP_DOMAINS = common dso_local global i32 0, align 4
@ap_perms = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AP_DEVICES = common dso_local global i32 0, align 4
@AP_RESPONSE_NORMAL = common dso_local global i64 0, align 8
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"new ap_domain_index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ap_select_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_select_domain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_queue_status, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ap_queue_status, align 8
  %8 = call i32 @spin_lock_bh(i32* @ap_domain_lock)
  %9 = load i32, i32* @ap_domain_index, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @spin_unlock_bh(i32* @ap_domain_lock)
  br label %79

13:                                               ; preds = %0
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %66, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AP_DOMAINS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ap_test_config_usage_domain(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ap_perms, i32 0, i32 0), align 4
  %25 = call i32 @test_bit_inv(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %18
  br label %66

28:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AP_DEVICES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ap_test_config_card_id(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @AP_MKQID(i32 %39, i32 %40)
  %42 = call i32 (...) @ap_apft_available()
  %43 = call i64 @ap_test_queue(i32 %41, i32 %42, i32* null)
  %44 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %7, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = bitcast %struct.ap_queue_status* %4 to i8*
  %46 = bitcast %struct.ap_queue_status* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AP_RESPONSE_NORMAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %52, %51, %37
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %14

69:                                               ; preds = %14
  %70 = load i32, i32* %3, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* @ap_domain_index, align 4
  %74 = load i32, i32* @DBF_DEBUG, align 4
  %75 = load i32, i32* @ap_domain_index, align 4
  %76 = call i32 @AP_DBF(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = call i32 @spin_unlock_bh(i32* @ap_domain_lock)
  br label %79

79:                                               ; preds = %77, %11
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ap_test_config_usage_domain(i32) #1

declare dso_local i32 @test_bit_inv(i32, i32) #1

declare dso_local i32 @ap_test_config_card_id(i32) #1

declare dso_local i64 @ap_test_queue(i32, i32, i32*) #1

declare dso_local i32 @AP_MKQID(i32, i32) #1

declare dso_local i32 @ap_apft_available(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AP_DBF(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
