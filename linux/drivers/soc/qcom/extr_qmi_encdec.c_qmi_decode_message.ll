; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_qmi_decode_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_qmi_decode_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_elem_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_decode_message(i8* %0, i64 %1, %struct.qmi_elem_info* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qmi_elem_info*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.qmi_elem_info* %2, %struct.qmi_elem_info** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %8, align 8
  %11 = icmp ne %struct.qmi_elem_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %35

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr i8, i8* %30, i64 4
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 4
  %34 = call i32 @qmi_decode(%struct.qmi_elem_info* %28, i8* %29, i8* %31, i64 %33, i32 1)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %24, %12
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @qmi_decode(%struct.qmi_elem_info*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
