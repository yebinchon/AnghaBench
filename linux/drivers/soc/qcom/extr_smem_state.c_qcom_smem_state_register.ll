; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem_state = type { i32, i8*, %struct.qcom_smem_state_ops, %struct.device_node*, i32 }
%struct.qcom_smem_state_ops = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@smem_states = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_smem_state* @qcom_smem_state_register(%struct.device_node* %0, %struct.qcom_smem_state_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.qcom_smem_state*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.qcom_smem_state_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qcom_smem_state*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.qcom_smem_state_ops* %1, %struct.qcom_smem_state_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.qcom_smem_state* @kzalloc(i32 40, i32 %9)
  store %struct.qcom_smem_state* %10, %struct.qcom_smem_state** %8, align 8
  %11 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %12 = icmp ne %struct.qcom_smem_state* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.qcom_smem_state* @ERR_PTR(i32 %15)
  store %struct.qcom_smem_state* %16, %struct.qcom_smem_state** %4, align 8
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %19 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %18, i32 0, i32 4
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %23 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %22, i32 0, i32 3
  store %struct.device_node* %21, %struct.device_node** %23, align 8
  %24 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %25 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %24, i32 0, i32 2
  %26 = load %struct.qcom_smem_state_ops*, %struct.qcom_smem_state_ops** %6, align 8
  %27 = bitcast %struct.qcom_smem_state_ops* %25 to i8*
  %28 = bitcast %struct.qcom_smem_state_ops* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %31 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = call i32 @mutex_lock(i32* @list_lock)
  %33 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %34 = getelementptr inbounds %struct.qcom_smem_state, %struct.qcom_smem_state* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %34, i32* @smem_states)
  %36 = call i32 @mutex_unlock(i32* @list_lock)
  %37 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  store %struct.qcom_smem_state* %37, %struct.qcom_smem_state** %4, align 8
  br label %38

38:                                               ; preds = %17, %13
  %39 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %4, align 8
  ret %struct.qcom_smem_state* %39
}

declare dso_local %struct.qcom_smem_state* @kzalloc(i32, i32) #1

declare dso_local %struct.qcom_smem_state* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
