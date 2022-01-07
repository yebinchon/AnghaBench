; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_parse_host_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_parse_host_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i8*, i8*, i8*, i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vpcie12v\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no vpcie12v regulator found\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vpcie3v3\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"no vpcie3v3 regulator found\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vpcie1v8\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"no vpcie1v8 regulator found\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vpcie0v9\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"no vpcie0v9 regulator found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_parse_host_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_parse_host_dt(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %6 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %6, i32 0, i32 4
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %10 = call i32 @rockchip_pcie_parse_dt(%struct.rockchip_pcie* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %17 = call i32 @rockchip_pcie_setup_irq(%struct.rockchip_pcie* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %127

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i8* @devm_regulator_get_optional(%struct.device* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %127

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %22
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i8* @devm_regulator_get_optional(%struct.device* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %54 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %48
  %59 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %60 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %68 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %127

71:                                               ; preds = %58
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_info(%struct.device* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %48
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i8* @devm_regulator_get_optional(%struct.device* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %78 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %80 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %74
  %85 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %86 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %94 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %84
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @dev_info(%struct.device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %74
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i8* @devm_regulator_get_optional(%struct.device* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %104 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %106 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %100
  %111 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %112 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @PTR_ERR(i8* %113)
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %120 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %127

123:                                              ; preds = %110
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_info(%struct.device* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %100
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %118, %92, %66, %40, %20, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @rockchip_pcie_parse_dt(%struct.rockchip_pcie*) #1

declare dso_local i32 @rockchip_pcie_setup_irq(%struct.rockchip_pcie*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
