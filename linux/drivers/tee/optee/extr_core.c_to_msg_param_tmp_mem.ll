; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_to_msg_param_tmp_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_to_msg_param_tmp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_msg_param = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.tee_param = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }

@OPTEE_MSG_ATTR_TYPE_TMEM_INPUT = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_CACHE_PREDEFINED = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.optee_msg_param*, %struct.tee_param*)* @to_msg_param_tmp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_msg_param_tmp_mem(%struct.optee_msg_param* %0, %struct.tee_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.optee_msg_param*, align 8
  %5 = alloca %struct.tee_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.optee_msg_param* %0, %struct.optee_msg_param** %4, align 8
  store %struct.tee_param* %1, %struct.tee_param** %5, align 8
  %8 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_TMEM_INPUT, align 4
  %9 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %10 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  %13 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %16 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %18 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %23 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %27 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %32 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 4
  %35 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %36 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %43 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %75

46:                                               ; preds = %2
  %47 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %48 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %53 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tee_shm_get_pa(i64 %51, i32 %56, i32* %7)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %65 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @OPTEE_MSG_ATTR_CACHE_PREDEFINED, align 4
  %69 = load i32, i32* @OPTEE_MSG_ATTR_CACHE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.optee_msg_param*, %struct.optee_msg_param** %4, align 8
  %72 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %60, %41
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @tee_shm_get_pa(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
