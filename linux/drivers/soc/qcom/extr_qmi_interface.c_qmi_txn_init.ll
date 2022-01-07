; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_txn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_txn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32, i32 }
%struct.qmi_txn = type { i32, i8*, %struct.qmi_elem_info*, %struct.qmi_handle*, i32, i32 }
%struct.qmi_elem_info = type { i32 }

@U16_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to allocate transaction id\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_txn_init(%struct.qmi_handle* %0, %struct.qmi_txn* %1, %struct.qmi_elem_info* %2, i8* %3) #0 {
  %5 = alloca %struct.qmi_handle*, align 8
  %6 = alloca %struct.qmi_txn*, align 8
  %7 = alloca %struct.qmi_elem_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %5, align 8
  store %struct.qmi_txn* %1, %struct.qmi_txn** %6, align 8
  store %struct.qmi_elem_info* %2, %struct.qmi_elem_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %11 = call i32 @memset(%struct.qmi_txn* %10, i32 0, i32 40)
  %12 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %13 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %12, i32 0, i32 5
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %16 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %15, i32 0, i32 4
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %19 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %20 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %19, i32 0, i32 3
  store %struct.qmi_handle* %18, %struct.qmi_handle** %20, align 8
  %21 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %22 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %23 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %22, i32 0, i32 2
  store %struct.qmi_elem_info* %21, %struct.qmi_elem_info** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %26 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %28 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %31 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %30, i32 0, i32 1
  %32 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %33 = load i32, i32* @U16_MAX, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @idr_alloc_cyclic(i32* %31, %struct.qmi_txn* %32, i32 0, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.qmi_txn*, %struct.qmi_txn** %6, align 8
  %43 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %45 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.qmi_txn*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.qmi_txn*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
