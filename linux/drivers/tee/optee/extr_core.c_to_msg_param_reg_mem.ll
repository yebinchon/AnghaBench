; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_to_msg_param_reg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_to_msg_param_reg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_msg_param = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.tee_param = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@OPTEE_MSG_ATTR_TYPE_RMEM_INPUT = common dso_local global i64 0, align 8
@TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.optee_msg_param*, %struct.tee_param*)* @to_msg_param_reg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_msg_param_reg_mem(%struct.optee_msg_param* %0, %struct.tee_param* %1) #0 {
  %3 = alloca %struct.optee_msg_param*, align 8
  %4 = alloca %struct.tee_param*, align 8
  store %struct.optee_msg_param* %0, %struct.optee_msg_param** %3, align 8
  store %struct.tee_param* %1, %struct.tee_param** %4, align 8
  %5 = load i64, i64* @OPTEE_MSG_ATTR_TYPE_RMEM_INPUT, align 8
  %6 = load %struct.tee_param*, %struct.tee_param** %4, align 8
  %7 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load i64, i64* @TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load %struct.optee_msg_param*, %struct.optee_msg_param** %3, align 8
  %13 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.tee_param*, %struct.tee_param** %4, align 8
  %15 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.optee_msg_param*, %struct.optee_msg_param** %3, align 8
  %20 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load %struct.tee_param*, %struct.tee_param** %4, align 8
  %24 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.optee_msg_param*, %struct.optee_msg_param** %3, align 8
  %29 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.tee_param*, %struct.tee_param** %4, align 8
  %33 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.optee_msg_param*, %struct.optee_msg_param** %3, align 8
  %38 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
