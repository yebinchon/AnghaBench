; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_has_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_has_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vfio_ap_queue_reserved = type { i64*, i64*, i32 }
%struct.ap_queue = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @vfio_ap_has_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_has_queue(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_ap_queue_reserved*, align 8
  %7 = alloca %struct.ap_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vfio_ap_queue_reserved*
  store %struct.vfio_ap_queue_reserved* %11, %struct.vfio_ap_queue_reserved** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ap_queue* @to_ap_queue(%struct.device* %12)
  store %struct.ap_queue* %13, %struct.ap_queue** %7, align 8
  %14 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %15 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %20 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %25 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %29 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @AP_MKQID(i64 %27, i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %35 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %40 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %23
  br label %97

42:                                               ; preds = %18, %2
  %43 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %44 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %49 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %54 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @AP_QID_CARD(i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %59 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %65 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %52
  br label %96

67:                                               ; preds = %47, %42
  %68 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %69 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %74 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.ap_queue*, %struct.ap_queue** %7, align 8
  %79 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @AP_QID_QUEUE(i64 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %84 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.vfio_ap_queue_reserved*, %struct.vfio_ap_queue_reserved** %6, align 8
  %90 = getelementptr inbounds %struct.vfio_ap_queue_reserved, %struct.vfio_ap_queue_reserved* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %77
  br label %95

92:                                               ; preds = %72, %67
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %41
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ap_queue* @to_ap_queue(%struct.device*) #1

declare dso_local i64 @AP_MKQID(i64, i64) #1

declare dso_local i64 @AP_QID_CARD(i64) #1

declare dso_local i64 @AP_QID_QUEUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
