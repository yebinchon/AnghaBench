; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i64*, %struct.device_node* }
%struct.stm32_usbphyc = type { i32, i64, %struct.stm32_usbphyc_phy** }
%struct.stm32_usbphyc_phy = type { i32, %struct.phy* }

@.str = private unnamed_addr constant [20 x i8] c"failed to find phy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid number of cells for phy port%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"phy port1 already used\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @stm32_usbphyc_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @stm32_usbphyc_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.stm32_usbphyc*, align 8
  %7 = alloca %struct.stm32_usbphyc_phy*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.stm32_usbphyc* @dev_get_drvdata(%struct.device* %10)
  store %struct.stm32_usbphyc* %11, %struct.stm32_usbphyc** %6, align 8
  store %struct.stm32_usbphyc_phy* null, %struct.stm32_usbphyc_phy** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 2
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %23, i32 0, i32 2
  %25 = load %struct.stm32_usbphyc_phy**, %struct.stm32_usbphyc_phy*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %25, i64 %27
  %29 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %28, align 8
  %30 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %29, i32 0, i32 1
  %31 = load %struct.phy*, %struct.phy** %30, align 8
  %32 = getelementptr inbounds %struct.phy, %struct.phy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.device_node*, %struct.device_node** %33, align 8
  %35 = icmp eq %struct.device_node* %22, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %38 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %37, i32 0, i32 2
  %39 = load %struct.stm32_usbphyc_phy**, %struct.stm32_usbphyc_phy*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %39, i64 %41
  %43 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %42, align 8
  store %struct.stm32_usbphyc_phy* %43, %struct.stm32_usbphyc_phy** %7, align 8
  br label %48

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %15

48:                                               ; preds = %36, %15
  %49 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %50 = icmp ne %struct.stm32_usbphyc_phy* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.phy* @ERR_PTR(i32 %55)
  store %struct.phy* %56, %struct.phy** %3, align 8
  br label %126

57:                                               ; preds = %48
  %58 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %59 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %64 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %69 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %74 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %72, %62
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %80 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.phy* @ERR_PTR(i32 %84)
  store %struct.phy* %85, %struct.phy** %3, align 8
  br label %126

86:                                               ; preds = %72, %67
  %87 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %88 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %122

91:                                               ; preds = %86
  %92 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %98 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %99 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @stm32_usbphyc_switch_setup(%struct.stm32_usbphyc* %97, i64 %102)
  br label %121

104:                                              ; preds = %91
  %105 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %106 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %6, align 8
  %111 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  %119 = call %struct.phy* @ERR_PTR(i32 %118)
  store %struct.phy* %119, %struct.phy** %3, align 8
  br label %126

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %96
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.stm32_usbphyc_phy*, %struct.stm32_usbphyc_phy** %7, align 8
  %124 = getelementptr inbounds %struct.stm32_usbphyc_phy, %struct.stm32_usbphyc_phy* %123, i32 0, i32 1
  %125 = load %struct.phy*, %struct.phy** %124, align 8
  store %struct.phy* %125, %struct.phy** %3, align 8
  br label %126

126:                                              ; preds = %122, %114, %77, %51
  %127 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %127
}

declare dso_local %struct.stm32_usbphyc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @stm32_usbphyc_switch_setup(%struct.stm32_usbphyc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
