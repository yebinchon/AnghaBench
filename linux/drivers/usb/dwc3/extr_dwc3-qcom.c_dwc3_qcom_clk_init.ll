; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { i32, %struct.clk**, %struct.device* }
%struct.clk = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_qcom*, i32)* @dwc3_qcom_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_clk_init(%struct.dwc3_qcom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3_qcom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %12 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %121

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  br label %121

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %31 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %34 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.clk** @devm_kcalloc(%struct.device* %32, i32 %35, i32 8, i32 %36)
  %38 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %39 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %38, i32 0, i32 1
  store %struct.clk** %37, %struct.clk*** %39, align 8
  %40 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %41 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %40, i32 0, i32 1
  %42 = load %struct.clk**, %struct.clk*** %41, align 8
  %43 = icmp ne %struct.clk** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %121

47:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %117, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %51 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %48
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.clk* @of_clk_get(%struct.device_node* %55, i32 %56)
  store %struct.clk* %57, %struct.clk** %9, align 8
  %58 = load %struct.clk*, %struct.clk** %9, align 8
  %59 = call i64 @IS_ERR(%struct.clk* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %68 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %67, i32 0, i32 1
  %69 = load %struct.clk**, %struct.clk*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.clk*, %struct.clk** %69, i64 %71
  %73 = load %struct.clk*, %struct.clk** %72, align 8
  %74 = call i32 @clk_put(%struct.clk* %73)
  br label %62

75:                                               ; preds = %62
  %76 = load %struct.clk*, %struct.clk** %9, align 8
  %77 = call i32 @PTR_ERR(%struct.clk* %76)
  store i32 %77, i32* %3, align 4
  br label %121

78:                                               ; preds = %54
  %79 = load %struct.clk*, %struct.clk** %9, align 8
  %80 = call i32 @clk_prepare_enable(%struct.clk* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %90 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %89, i32 0, i32 1
  %91 = load %struct.clk**, %struct.clk*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.clk*, %struct.clk** %91, i64 %93
  %95 = load %struct.clk*, %struct.clk** %94, align 8
  %96 = call i32 @clk_disable_unprepare(%struct.clk* %95)
  %97 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %98 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %97, i32 0, i32 1
  %99 = load %struct.clk**, %struct.clk*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.clk*, %struct.clk** %99, i64 %101
  %103 = load %struct.clk*, %struct.clk** %102, align 8
  %104 = call i32 @clk_put(%struct.clk* %103)
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.clk*, %struct.clk** %9, align 8
  %107 = call i32 @clk_put(%struct.clk* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %121

109:                                              ; preds = %78
  %110 = load %struct.clk*, %struct.clk** %9, align 8
  %111 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %112 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %111, i32 0, i32 1
  %113 = load %struct.clk**, %struct.clk*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.clk*, %struct.clk** %113, i64 %115
  store %struct.clk* %110, %struct.clk** %116, align 8
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %48

120:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %105, %75, %44, %26, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.clk** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
