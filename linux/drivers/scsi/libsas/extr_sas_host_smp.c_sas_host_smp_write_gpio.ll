; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_host_smp_write_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_host_smp_write_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)* }

@SMP_RESP_FUNC_UNK = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_ha_struct*, i32*, i32, i32, i32, i32*)* @sas_host_smp_write_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_host_smp_write_gpio(%struct.sas_ha_struct* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sas_internal*, align 8
  %15 = alloca i32, align 4
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sas_internal* @to_sas_internal(i32 %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %14, align 8
  %23 = load %struct.sas_internal*, %struct.sas_internal** %14, align 8
  %24 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)*, i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)** %26, align 8
  %28 = icmp eq i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* @SMP_RESP_FUNC_UNK, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %57

33:                                               ; preds = %6
  %34 = load %struct.sas_internal*, %struct.sas_internal** %14, align 8
  %35 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)*, i32 (%struct.sas_ha_struct*, i32, i32, i32, i32*)** %37, align 8
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 %38(%struct.sas_ha_struct* %39, i32 %40, i32 %41, i32 %42, i32* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @SMP_RESP_FUNC_FAILED, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %15, align 4
  br label %55

51:                                               ; preds = %33
  %52 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %29
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
