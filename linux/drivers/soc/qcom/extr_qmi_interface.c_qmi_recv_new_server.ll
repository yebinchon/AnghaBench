; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_recv_new_server.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_recv_new_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32, %struct.qmi_ops }
%struct.qmi_ops = type { i32 (%struct.qmi_handle.0*, %struct.qmi_service*)* }
%struct.qmi_handle.0 = type opaque
%struct.qmi_service = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, i32, i32, i32, i32)* @qmi_recv_new_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_recv_new_server(%struct.qmi_handle* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qmi_ops*, align 8
  %12 = alloca %struct.qmi_service*, align 8
  %13 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %15 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %14, i32 0, i32 1
  store %struct.qmi_ops* %15, %struct.qmi_ops** %11, align 8
  %16 = load %struct.qmi_ops*, %struct.qmi_ops** %11, align 8
  %17 = getelementptr inbounds %struct.qmi_ops, %struct.qmi_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.qmi_handle.0*, %struct.qmi_service*)*, i32 (%struct.qmi_handle.0*, %struct.qmi_service*)** %17, align 8
  %19 = icmp ne i32 (%struct.qmi_handle.0*, %struct.qmi_service*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %70

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %70

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.qmi_service* @kzalloc(i32 24, i32 %29)
  store %struct.qmi_service* %30, %struct.qmi_service** %12, align 8
  %31 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %32 = icmp ne %struct.qmi_service* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %70

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %37 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %41 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = lshr i32 %42, 8
  %44 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %45 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %48 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %51 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qmi_ops*, %struct.qmi_ops** %11, align 8
  %53 = getelementptr inbounds %struct.qmi_ops, %struct.qmi_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.qmi_handle.0*, %struct.qmi_service*)*, i32 (%struct.qmi_handle.0*, %struct.qmi_service*)** %53, align 8
  %55 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %56 = bitcast %struct.qmi_handle* %55 to %struct.qmi_handle.0*
  %57 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %58 = call i32 %54(%struct.qmi_handle.0* %56, %struct.qmi_service* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %34
  %62 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %63 = call i32 @kfree(%struct.qmi_service* %62)
  br label %70

64:                                               ; preds = %34
  %65 = load %struct.qmi_service*, %struct.qmi_service** %12, align 8
  %66 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %65, i32 0, i32 5
  %67 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %68 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %67, i32 0, i32 0
  %69 = call i32 @list_add(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %20, %27, %33, %64, %61
  ret void
}

declare dso_local %struct.qmi_service* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.qmi_service*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
