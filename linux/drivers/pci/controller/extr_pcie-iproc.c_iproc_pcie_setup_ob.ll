; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_setup_ob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_setup_ob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { %struct.iproc_pcie_ob_map*, %struct.device*, %struct.iproc_pcie_ob }
%struct.iproc_pcie_ob_map = type { i32, i64* }
%struct.device = type { i32 }
%struct.iproc_pcie_ob = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"axi address %pap less than offset %pap\0A\00", align 1
@SZ_1M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"axi %pap or pci %pap not aligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to configure outbound mapping\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"axi %pap, axi offset %pap, pci %pap, res size %pap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, i64, i64, i64)* @iproc_pcie_setup_ob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_setup_ob(%struct.iproc_pcie* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iproc_pcie*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iproc_pcie_ob*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iproc_pcie_ob_map*, align 8
  %16 = alloca i64, align 8
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.iproc_pcie*, %struct.iproc_pcie** %6, align 8
  %18 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %17, i32 0, i32 2
  store %struct.iproc_pcie_ob* %18, %struct.iproc_pcie_ob** %10, align 8
  %19 = load %struct.iproc_pcie*, %struct.iproc_pcie** %6, align 8
  %20 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.iproc_pcie_ob*, %struct.iproc_pcie_ob** %10, align 8
  %26 = getelementptr inbounds %struct.iproc_pcie_ob, %struct.iproc_pcie_ob* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %11, align 8
  %31 = load %struct.iproc_pcie_ob*, %struct.iproc_pcie_ob** %10, align 8
  %32 = getelementptr inbounds %struct.iproc_pcie_ob, %struct.iproc_pcie_ob* %31, i32 0, i32 0
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64* %7, i64* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %152

36:                                               ; preds = %4
  %37 = load %struct.iproc_pcie_ob*, %struct.iproc_pcie_ob** %10, align 8
  %38 = getelementptr inbounds %struct.iproc_pcie_ob, %struct.iproc_pcie_ob* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load %struct.iproc_pcie_ob*, %struct.iproc_pcie_ob** %10, align 8
  %43 = getelementptr inbounds %struct.iproc_pcie_ob, %struct.iproc_pcie_ob* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %140, %36
  %47 = load i32, i32* %13, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %143

49:                                               ; preds = %46
  %50 = load %struct.iproc_pcie*, %struct.iproc_pcie** %6, align 8
  %51 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %50, i32 0, i32 0
  %52 = load %struct.iproc_pcie_ob_map*, %struct.iproc_pcie_ob_map** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iproc_pcie_ob_map, %struct.iproc_pcie_ob_map* %52, i64 %54
  store %struct.iproc_pcie_ob_map* %55, %struct.iproc_pcie_ob_map** %15, align 8
  %56 = load %struct.iproc_pcie*, %struct.iproc_pcie** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @iproc_pcie_ob_is_valid(%struct.iproc_pcie* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %140

61:                                               ; preds = %49
  %62 = load %struct.iproc_pcie_ob_map*, %struct.iproc_pcie_ob_map** %15, align 8
  %63 = getelementptr inbounds %struct.iproc_pcie_ob_map, %struct.iproc_pcie_ob_map* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %136, %61
  %67 = load i32, i32* %14, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %66
  %70 = load %struct.iproc_pcie_ob_map*, %struct.iproc_pcie_ob_map** %15, align 8
  %71 = getelementptr inbounds %struct.iproc_pcie_ob_map, %struct.iproc_pcie_ob_map* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SZ_1M, align 8
  %78 = mul nsw i64 %76, %77
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %16, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %69
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82
  br label %136

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %16, align 8
  %92 = call i64 @ALIGN_DOWN(i64 %90, i64 %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i64 @ALIGN_DOWN(i64 %93, i64 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %16, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %89, %69
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @IS_ALIGNED(i64 %98, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @IS_ALIGNED(i64 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.device*, %struct.device** %11, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64* %7, i64* %8)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %152

112:                                              ; preds = %102
  %113 = load %struct.iproc_pcie*, %struct.iproc_pcie** %6, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @iproc_pcie_ob_write(%struct.iproc_pcie* %113, i32 %114, i32 %115, i64 %116, i64 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %144

122:                                              ; preds = %112
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %152

129:                                              ; preds = %122
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %7, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %8, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %8, align 8
  br label %139

136:                                              ; preds = %88
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %14, align 4
  br label %66

139:                                              ; preds = %129, %66
  br label %140

140:                                              ; preds = %139, %60
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %13, align 4
  br label %46

143:                                              ; preds = %46
  br label %144

144:                                              ; preds = %143, %121
  %145 = load %struct.device*, %struct.device** %11, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.device*, %struct.device** %11, align 8
  %148 = load %struct.iproc_pcie_ob*, %struct.iproc_pcie_ob** %10, align 8
  %149 = getelementptr inbounds %struct.iproc_pcie_ob, %struct.iproc_pcie_ob* %148, i32 0, i32 0
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64* %7, i64* %149, i64* %8, i64* %9)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %144, %128, %107, %29
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @iproc_pcie_ob_is_valid(%struct.iproc_pcie*, i32) #1

declare dso_local i64 @ALIGN_DOWN(i64, i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @iproc_pcie_ob_write(%struct.iproc_pcie*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
