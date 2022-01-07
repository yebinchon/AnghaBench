; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_add_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_add_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.qmi_service = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_add_lookup(%struct.qmi_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qmi_service*, align 8
  store %struct.qmi_handle* %0, %struct.qmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qmi_service* @kzalloc(i32 16, i32 %11)
  store %struct.qmi_service* %12, %struct.qmi_service** %10, align 8
  %13 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %14 = icmp ne %struct.qmi_service* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %21 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %24 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %27 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %29 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %28, i32 0, i32 3
  %30 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %31 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %29, i32* %31)
  %33 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %34 = load %struct.qmi_service*, %struct.qmi_service** %10, align 8
  %35 = call i32 @qmi_send_new_lookup(%struct.qmi_handle* %33, %struct.qmi_service* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.qmi_service* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @qmi_send_new_lookup(%struct.qmi_handle*, %struct.qmi_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
