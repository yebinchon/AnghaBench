; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cpy_ext_pool_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cpy_ext_pool_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32 }
%struct.dasd_rssd_lcq = type { i32, %struct.dasd_ext_pool_sum* }
%struct.dasd_ext_pool_sum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_rssd_lcq*)* @dasd_eckd_cpy_ext_pool_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_cpy_ext_pool_data(%struct.dasd_device* %0, %struct.dasd_rssd_lcq* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_rssd_lcq*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_ext_pool_sum, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_rssd_lcq* %1, %struct.dasd_rssd_lcq** %4, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %10, align 8
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %5, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = call i32 @dasd_eckd_ext_pool_id(%struct.dasd_device* %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %4, align 8
  %17 = getelementptr inbounds %struct.dasd_rssd_lcq, %struct.dasd_rssd_lcq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %4, align 8
  %22 = getelementptr inbounds %struct.dasd_rssd_lcq, %struct.dasd_rssd_lcq* %21, i32 0, i32 1
  %23 = load %struct.dasd_ext_pool_sum*, %struct.dasd_ext_pool_sum** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dasd_ext_pool_sum, %struct.dasd_ext_pool_sum* %23, i64 %25
  %27 = bitcast %struct.dasd_ext_pool_sum* %7 to i8*
  %28 = bitcast %struct.dasd_ext_pool_sum* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.dasd_ext_pool_sum, %struct.dasd_ext_pool_sum* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %35 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %35, %struct.dasd_ext_pool_sum* %7, i32 4)
  br label %37

37:                                               ; preds = %33, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %14

41:                                               ; preds = %14
  ret void
}

declare dso_local i32 @dasd_eckd_ext_pool_id(%struct.dasd_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, %struct.dasd_ext_pool_sum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
