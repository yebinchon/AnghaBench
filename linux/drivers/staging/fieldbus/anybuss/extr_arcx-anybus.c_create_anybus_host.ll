; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_create_anybus_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_create_anybus_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32 }
%struct.platform_device = type { i32 }
%struct.anybuss_ops = type { i32, i64, i32, i32 }

@export_reset_0 = common dso_local global i32 0, align 4
@export_reset_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.anybuss_host* (%struct.platform_device*, i32)* @create_anybus_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.anybuss_host* @create_anybus_host(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.anybuss_host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anybuss_ops, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.anybuss_ops* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 0, label %9
    i32 1, label %12
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @export_reset_0, align 4
  %11 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @export_reset_1, align 4
  %14 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.anybuss_host* @ERR_PTR(i32 %17)
  store %struct.anybuss_host* %18, %struct.anybuss_host** %3, align 8
  br label %50

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @create_parallel_regmap(%struct.platform_device* %22, i32 %23)
  %25 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.anybuss_host* @ERR_CAST(i32 %32)
  store %struct.anybuss_host* %33, %struct.anybuss_host** %3, align 8
  br label %50

34:                                               ; preds = %19
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @platform_get_irq(%struct.platform_device* %35, i32 %36)
  %38 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.anybuss_ops, %struct.anybuss_ops* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.anybuss_host* @ERR_PTR(i32 %44)
  store %struct.anybuss_host* %45, %struct.anybuss_host** %3, align 8
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call %struct.anybuss_host* @devm_anybuss_host_common_probe(i32* %48, %struct.anybuss_ops* %6)
  store %struct.anybuss_host* %49, %struct.anybuss_host** %3, align 8
  br label %50

50:                                               ; preds = %46, %42, %30, %15
  %51 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  ret %struct.anybuss_host* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.anybuss_host* @ERR_PTR(i32) #2

declare dso_local i32 @create_parallel_regmap(%struct.platform_device*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local %struct.anybuss_host* @ERR_CAST(i32) #2

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local %struct.anybuss_host* @devm_anybuss_host_common_probe(i32*, %struct.anybuss_ops*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
