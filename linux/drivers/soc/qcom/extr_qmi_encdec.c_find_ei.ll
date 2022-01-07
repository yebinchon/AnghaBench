; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_find_ei.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_find_ei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_elem_info = type { i64, i64 }

@QMI_EOTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qmi_elem_info* (%struct.qmi_elem_info*, i64)* @find_ei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qmi_elem_info* @find_ei(%struct.qmi_elem_info* %0, i64 %1) #0 {
  %3 = alloca %struct.qmi_elem_info*, align 8
  %4 = alloca %struct.qmi_elem_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %4, align 8
  store %struct.qmi_elem_info* %7, %struct.qmi_elem_info** %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %6, align 8
  %10 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QMI_EOTI, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %6, align 8
  %16 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %6, align 8
  store %struct.qmi_elem_info* %21, %struct.qmi_elem_info** %3, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %6, align 8
  %24 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %23, i64 1
  store %struct.qmi_elem_info* %24, %struct.qmi_elem_info** %6, align 8
  br label %8

25:                                               ; preds = %8
  store %struct.qmi_elem_info* null, %struct.qmi_elem_info** %3, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %3, align 8
  ret %struct.qmi_elem_info* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
