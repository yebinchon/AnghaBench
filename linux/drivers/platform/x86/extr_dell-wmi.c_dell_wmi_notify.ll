; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.dell_wmi_priv = type { i64 }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"bad response type %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Received WMI event (%*ph)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid length of WMI event\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Process buffer (%*ph)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unknown WMI event type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi_device*, %union.acpi_object*)* @dell_wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dell_wmi_notify(%struct.wmi_device* %0, %union.acpi_object* %1) #0 {
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.dell_wmi_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  store %union.acpi_object* %1, %union.acpi_object** %4, align 8
  %11 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %12 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %11, i32 0, i32 0
  %13 = call %struct.dell_wmi_priv* @dev_get_drvdata(i32* %12)
  store %struct.dell_wmi_priv* %13, %struct.dell_wmi_priv** %5, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %15 = bitcast %union.acpi_object* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %21 = bitcast %union.acpi_object* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %145

24:                                               ; preds = %2
  %25 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32* %32)
  %34 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %7, align 8
  %47 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %5, align 8
  %48 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %24
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = icmp ugt i32* %56, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32* %72, i32** %7, align 8
  br label %73

73:                                               ; preds = %65, %55
  br label %74

74:                                               ; preds = %73, %51, %24
  br label %75

75:                                               ; preds = %140, %74
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ult i32* %76, %77
  br i1 %78, label %79, label %145

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %145

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %7, align 8
  %94 = icmp ugt i32* %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %145

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %98, 2
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %135 [
    i32 0, label %105
    i32 16, label %115
    i32 17, label %115
  ]

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dell_wmi_process_key(%struct.wmi_device* %109, i32 0, i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  br label %140

115:                                              ; preds = %97, %97
  store i32 2, i32* %10, align 4
  br label %116

116:                                              ; preds = %131, %115
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dell_wmi_process_key(%struct.wmi_device* %121, i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %116

134:                                              ; preds = %116
  br label %140

135:                                              ; preds = %97
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %134, %114
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %6, align 8
  br label %75

145:                                              ; preds = %19, %95, %85, %75
  ret void
}

declare dso_local %struct.dell_wmi_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*) #1

declare dso_local i32 @dell_wmi_process_key(%struct.wmi_device*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
