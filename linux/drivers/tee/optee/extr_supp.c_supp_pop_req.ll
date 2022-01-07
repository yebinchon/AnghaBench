; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_supp_pop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_supp_pop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_supp_req = type { i64 }
%struct.optee_supp = type { i32, i32 }
%struct.tee_param = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT = common dso_local global i64 0, align 8
@TEE_IOCTL_PARAM_ATTR_META = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.optee_supp_req* (%struct.optee_supp*, i64, %struct.tee_param*, i64*)* @supp_pop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.optee_supp_req* @supp_pop_req(%struct.optee_supp* %0, i64 %1, %struct.tee_param* %2, i64* %3) #0 {
  %5 = alloca %struct.optee_supp_req*, align 8
  %6 = alloca %struct.optee_supp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tee_param*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.optee_supp_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.optee_supp* %0, %struct.optee_supp** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.tee_param* %2, %struct.tee_param** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* @TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT, align 8
  %15 = load i64, i64* @TEE_IOCTL_PARAM_ATTR_META, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.optee_supp_req* @ERR_PTR(i32 %21)
  store %struct.optee_supp_req* %22, %struct.optee_supp_req** %5, align 8
  br label %81

23:                                               ; preds = %4
  %24 = load %struct.optee_supp*, %struct.optee_supp** %6, align 8
  %25 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.tee_param*, %struct.tee_param** %8, align 8
  %30 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.optee_supp_req* @ERR_PTR(i32 %36)
  store %struct.optee_supp_req* %37, %struct.optee_supp_req** %5, align 8
  br label %81

38:                                               ; preds = %28
  %39 = load %struct.tee_param*, %struct.tee_param** %8, align 8
  %40 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  store i64 1, i64* %12, align 8
  br label %48

44:                                               ; preds = %23
  %45 = load %struct.optee_supp*, %struct.optee_supp** %6, align 8
  %46 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.optee_supp*, %struct.optee_supp** %6, align 8
  %50 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %49, i32 0, i32 1
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.optee_supp_req* @idr_find(i32* %50, i32 %51)
  store %struct.optee_supp_req* %52, %struct.optee_supp_req** %10, align 8
  %53 = load %struct.optee_supp_req*, %struct.optee_supp_req** %10, align 8
  %54 = icmp ne %struct.optee_supp_req* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.optee_supp_req* @ERR_PTR(i32 %57)
  store %struct.optee_supp_req* %58, %struct.optee_supp_req** %5, align 8
  br label %81

59:                                               ; preds = %48
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %60, %61
  %63 = load %struct.optee_supp_req*, %struct.optee_supp_req** %10, align 8
  %64 = getelementptr inbounds %struct.optee_supp_req, %struct.optee_supp_req* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.optee_supp_req* @ERR_PTR(i32 %69)
  store %struct.optee_supp_req* %70, %struct.optee_supp_req** %5, align 8
  br label %81

71:                                               ; preds = %59
  %72 = load %struct.optee_supp*, %struct.optee_supp** %6, align 8
  %73 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %72, i32 0, i32 1
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @idr_remove(i32* %73, i32 %74)
  %76 = load %struct.optee_supp*, %struct.optee_supp** %6, align 8
  %77 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 4
  %78 = load i64, i64* %12, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  %80 = load %struct.optee_supp_req*, %struct.optee_supp_req** %10, align 8
  store %struct.optee_supp_req* %80, %struct.optee_supp_req** %5, align 8
  br label %81

81:                                               ; preds = %71, %67, %55, %34, %19
  %82 = load %struct.optee_supp_req*, %struct.optee_supp_req** %5, align 8
  ret %struct.optee_supp_req* %82
}

declare dso_local %struct.optee_supp_req* @ERR_PTR(i32) #1

declare dso_local %struct.optee_supp_req* @idr_find(i32*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
