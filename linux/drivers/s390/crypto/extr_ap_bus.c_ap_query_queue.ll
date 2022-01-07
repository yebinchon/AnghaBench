; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_query_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_query_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue_status = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ap_max_domain_id = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @ap_query_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_query_queue(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ap_queue_status, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ap_queue_status, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @AP_QID_CARD(i32 %14)
  %16 = call i32 @ap_test_config_card_id(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (...) @ap_apft_available()
  %24 = call i32 @ap_test_queue(i32 %22, i32 %23, i64* %11)
  %25 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.ap_queue_status* %10 to i8*
  %27 = bitcast %struct.ap_queue_status* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %76 [
    i32 131, label %30
    i32 129, label %70
    i32 133, label %70
    i32 134, label %70
    i32 132, label %70
    i32 128, label %73
    i32 130, label %73
    i32 135, label %73
  ]

30:                                               ; preds = %21
  %31 = load i64, i64* %11, align 8
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* %11, align 8
  %36 = lshr i64 %35, 24
  %37 = and i64 %36, 255
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %11, align 8
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %11, align 8
  %45 = lshr i64 %44, 16
  %46 = and i64 %45, 255
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i64, i64* %11, align 8
  %49 = and i64 %48, 144115188075855872
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* @ap_max_domain_id, align 4
  br label %57

56:                                               ; preds = %51, %30
  store i32 15, i32* @ap_max_domain_id, align 4
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %68 [
    i32 139, label %60
    i32 137, label %60
    i32 138, label %64
    i32 136, label %64
  ]

60:                                               ; preds = %57, %57
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 134217728
  store i32 %63, i32* %61, align 4
  br label %69

64:                                               ; preds = %57, %57
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 268435456
  store i32 %67, i32* %65, align 4
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %64, %60
  store i32 0, i32* %5, align 4
  br label %78

70:                                               ; preds = %21, %21, %21, %21
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %21, %21, %21
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %78

76:                                               ; preds = %21
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %18, %69, %70, %73, %76
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @ap_test_config_card_id(i32) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @ap_test_queue(i32, i32, i64*) #1

declare dso_local i32 @ap_apft_available(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
