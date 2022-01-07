; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_skip_to_next_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_skip_to_next_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_elem_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qmi_elem_info* (%struct.qmi_elem_info*, i32)* @skip_to_next_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %0, i32 %1) #0 {
  %3 = alloca %struct.qmi_elem_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qmi_elem_info*, align 8
  %6 = alloca i64, align 8
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %3, align 8
  store %struct.qmi_elem_info* %7, %struct.qmi_elem_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %5, align 8
  %12 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %11, i64 1
  store %struct.qmi_elem_info* %12, %struct.qmi_elem_info** %5, align 8
  br label %27

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %20, %13
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %5, align 8
  %16 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %5, align 8
  %19 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %18, i64 1
  store %struct.qmi_elem_info* %19, %struct.qmi_elem_info** %5, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %10
  %28 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %5, align 8
  ret %struct.qmi_elem_info* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
