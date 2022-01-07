; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_get_ex_change_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_get_ex_change_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_resp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.domain_device = type { i32 }

@RG_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RG_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_REPORT_GENERAL = common dso_local global %struct.smp_resp zeroinitializer, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*)* @sas_get_ex_change_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_get_ex_change_count(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smp_resp*, align 8
  %8 = alloca %struct.smp_resp*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @RG_REQ_SIZE, align 4
  %10 = call %struct.smp_resp* @alloc_smp_req(i32 %9)
  store %struct.smp_resp* %10, %struct.smp_resp** %7, align 8
  %11 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %12 = icmp ne %struct.smp_resp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* @RG_RESP_SIZE, align 4
  %18 = call %struct.smp_resp* @alloc_smp_resp(i32 %17)
  store %struct.smp_resp* %18, %struct.smp_resp** %8, align 8
  %19 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %20 = icmp ne %struct.smp_resp* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %23 = call i32 @kfree(%struct.smp_resp* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %16
  %27 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %28 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %27, i64 1
  %29 = bitcast %struct.smp_resp* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.smp_resp* @SMP_REPORT_GENERAL to i8*), i64 8, i1 false)
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %32 = load i32, i32* @RG_REQ_SIZE, align 4
  %33 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %34 = load i32, i32* @RG_RESP_SIZE, align 4
  %35 = call i32 @smp_execute_task(%struct.domain_device* %30, %struct.smp_resp* %31, i32 %32, %struct.smp_resp* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %56

39:                                               ; preds = %26
  %40 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %41 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %47 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %56

49:                                               ; preds = %39
  %50 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %51 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %45, %38
  %57 = load %struct.smp_resp*, %struct.smp_resp** %8, align 8
  %58 = call i32 @kfree(%struct.smp_resp* %57)
  %59 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %60 = call i32 @kfree(%struct.smp_resp* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %21, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.smp_resp* @alloc_smp_req(i32) #1

declare dso_local %struct.smp_resp* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(%struct.smp_resp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smp_execute_task(%struct.domain_device*, %struct.smp_resp*, i32, %struct.smp_resp*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
