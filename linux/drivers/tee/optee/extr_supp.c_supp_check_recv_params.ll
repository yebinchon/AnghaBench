; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_supp_check_recv_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_supp_check_recv_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_param = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_META = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.tee_param*, i64*)* @supp_check_recv_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supp_check_recv_params(i64 %0, %struct.tee_param* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tee_param*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.tee_param* %1, %struct.tee_param** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %85

14:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %20, i64 %21
  %23 = call i64 @tee_param_is_memref(%struct.tee_param* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %26, i64 %27
  %29 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %35, i64 %36
  %38 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @tee_shm_put(i64 %41)
  br label %43

43:                                               ; preds = %34, %25, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %15

47:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %53, i64 %54
  %56 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %60, i64 %61
  %63 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TEE_IOCTL_PARAM_ATTR_META, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %59, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %48

74:                                               ; preds = %48
  %75 = load %struct.tee_param*, %struct.tee_param** %6, align 8
  %76 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TEE_IOCTL_PARAM_ATTR_META, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i64*, i64** %7, align 8
  store i64 1, i64* %81, align 8
  br label %84

82:                                               ; preds = %74
  %83 = load i64*, i64** %7, align 8
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %82, %80
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %67, %11
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @tee_param_is_memref(%struct.tee_param*) #1

declare dso_local i32 @tee_shm_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
