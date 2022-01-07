; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_handle_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i64, i32, i32, i32, i32, %struct.qmi_ops, %struct.qmi_msg_handler*, i32, i32, i32, i32, i32, i32, i32 }
%struct.qmi_ops = type { i32 }
%struct.qmi_msg_handler = type { i32 }

@qmi_data_ready_work = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"qmi_msg_handler\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create QMI socket\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_handle_init(%struct.qmi_handle* %0, i64 %1, %struct.qmi_ops* %2, %struct.qmi_msg_handler* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qmi_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qmi_ops*, align 8
  %9 = alloca %struct.qmi_msg_handler*, align 8
  %10 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.qmi_ops* %2, %struct.qmi_ops** %8, align 8
  store %struct.qmi_msg_handler* %3, %struct.qmi_msg_handler** %9, align 8
  %11 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %12 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %11, i32 0, i32 13
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %15 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %14, i32 0, i32 12
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %18 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %17, i32 0, i32 11
  %19 = call i32 @idr_init(i32* %18)
  %20 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %21 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %24 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %23, i32 0, i32 9
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %27 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %26, i32 0, i32 8
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %30 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %29, i32 0, i32 7
  %31 = load i32, i32* @qmi_data_ready_work, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %9, align 8
  %34 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %35 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %34, i32 0, i32 6
  store %struct.qmi_msg_handler* %33, %struct.qmi_msg_handler** %35, align 8
  %36 = load %struct.qmi_ops*, %struct.qmi_ops** %8, align 8
  %37 = icmp ne %struct.qmi_ops* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %40 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %39, i32 0, i32 5
  %41 = load %struct.qmi_ops*, %struct.qmi_ops** %8, align 8
  %42 = bitcast %struct.qmi_ops* %40 to i8*
  %43 = bitcast %struct.qmi_ops* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %38, %4
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i64 4, i64* %7, align 8
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %53 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @kzalloc(i64 %54, i32 %55)
  %57 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %58 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %60 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %108

66:                                               ; preds = %50
  %67 = load i32, i32* @WQ_UNBOUND, align 4
  %68 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %67, i32 1)
  %69 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %70 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %72 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %102

78:                                               ; preds = %66
  %79 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %80 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %81 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %80, i32 0, i32 4
  %82 = call i32 @qmi_sock_create(%struct.qmi_handle* %79, i32* %81)
  %83 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %84 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %86 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %93 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %10, align 4
  br label %97

96:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %108

97:                                               ; preds = %90
  %98 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %99 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @destroy_workqueue(i32 %100)
  br label %102

102:                                              ; preds = %97, %75
  %103 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %104 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @kfree(i32 %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %96, %63
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @qmi_sock_create(%struct.qmi_handle*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
