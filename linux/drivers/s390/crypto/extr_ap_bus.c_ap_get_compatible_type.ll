; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_get_compatible_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_get_compatible_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue_status = type { i64 }
%union.ap_qact_ap_info = type { i32 }

@AP_DEVICE_TYPE_CEX2A = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_CEX7 = common dso_local global i32 0, align 4
@AP_RESPONSE_NORMAL = common dso_local global i64 0, align 8
@DBF_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"queue=%02x.%04x unable to map type %d\0A\00", align 1
@DBF_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"queue=%02x.%04x map type %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ap_get_compatible_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_get_compatible_type(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ap_queue_status, align 8
  %10 = alloca %union.ap_qact_ap_info, align 4
  %11 = alloca %struct.ap_queue_status, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AP_DEVICE_TYPE_CEX2A, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AP_DEVICE_TYPE_CEX7, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %4, align 4
  br label %83

22:                                               ; preds = %16
  %23 = call i64 (...) @ap_qact_available()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = bitcast %union.ap_qact_ap_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %27, 26
  %29 = and i32 %28, 7
  %30 = bitcast %union.ap_qact_ap_info* %10 to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @AP_DEVICE_TYPE_CEX7, align 4
  %32 = bitcast %union.ap_qact_ap_info* %10 to i32*
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @ap_qact(i32 %33, i32 0, %union.ap_qact_ap_info* %10)
  %35 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %11, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = bitcast %struct.ap_queue_status* %9 to i8*
  %37 = bitcast %struct.ap_queue_status* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AP_RESPONSE_NORMAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %25
  %43 = bitcast %union.ap_qact_ap_info* %10 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AP_DEVICE_TYPE_CEX2A, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = bitcast %union.ap_qact_ap_info* %10 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AP_DEVICE_TYPE_CEX7, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = bitcast %union.ap_qact_ap_info* %10 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %47, %42, %25
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @DBF_WARN, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @AP_QID_CARD(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @AP_QID_QUEUE(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, i8*, i32, i32, i32, ...) @AP_DBF(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i32 %65)
  br label %81

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* @DBF_INFO, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @AP_QID_CARD(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @AP_QID_QUEUE(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, i8*, i32, i32, i32, ...) @AP_DBF(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %67
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %20, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @ap_qact_available(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ap_qact(i32, i32, %union.ap_qact_ap_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AP_DBF(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
