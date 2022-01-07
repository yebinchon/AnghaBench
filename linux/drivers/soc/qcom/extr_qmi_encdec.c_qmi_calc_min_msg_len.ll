; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_qmi_calc_min_msg_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_encdec.c_qmi_calc_min_msg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_elem_info = type { i64, i32, i32, %struct.qmi_elem_info* }

@QMI_EOTI = common dso_local global i64 0, align 8
@QMI_OPT_FLAG = common dso_local global i64 0, align 8
@QMI_DATA_LEN = common dso_local global i64 0, align 8
@QMI_STRUCT = common dso_local global i64 0, align 8
@QMI_STRING = common dso_local global i64 0, align 8
@U8_MAX = common dso_local global i32 0, align 4
@TLV_TYPE_SIZE = common dso_local global i64 0, align 8
@TLV_LEN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_elem_info*, i32)* @qmi_calc_min_msg_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_calc_min_msg_len(%struct.qmi_elem_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qmi_elem_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %4, align 8
  store %struct.qmi_elem_info* %8, %struct.qmi_elem_info** %7, align 8
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %4, align 8
  %10 = icmp ne %struct.qmi_elem_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %128

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %125, %36, %26, %13
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %16 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QMI_EOTI, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %14
  %21 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %22 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QMI_OPT_FLAG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %27, i32 %28)
  store %struct.qmi_elem_info* %29, %struct.qmi_elem_info** %7, align 8
  br label %14

30:                                               ; preds = %20
  %31 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %32 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QMI_DATA_LEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %38 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 4
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i64 4, i64 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %49 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %48, i32 1
  store %struct.qmi_elem_info* %49, %struct.qmi_elem_info** %7, align 8
  br label %14

50:                                               ; preds = %30
  %51 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %52 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QMI_STRUCT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %58 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %57, i32 0, i32 3
  %59 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @qmi_calc_min_msg_len(%struct.qmi_elem_info* %59, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %66 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %65, i32 1
  store %struct.qmi_elem_info* %66, %struct.qmi_elem_info** %7, align 8
  br label %113

67:                                               ; preds = %50
  %68 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %69 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @QMI_STRING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %78 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @U8_MAX, align 4
  %81 = icmp sle i32 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i64 4, i64 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %76, %73
  %89 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %90 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %93 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %91, %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %99 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %98, i32 1
  store %struct.qmi_elem_info* %99, %struct.qmi_elem_info** %7, align 8
  br label %112

100:                                              ; preds = %67
  %101 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %102 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %105 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %7, align 8
  %111 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %110, i32 1
  store %struct.qmi_elem_info* %111, %struct.qmi_elem_info** %7, align 8
  br label %112

112:                                              ; preds = %100, %88
  br label %113

113:                                              ; preds = %112, %56
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i64, i64* @TLV_TYPE_SIZE, align 8
  %119 = load i64, i64* @TLV_LEN_SIZE, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %117, %114
  br label %14

126:                                              ; preds = %14
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %11
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
