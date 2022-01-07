; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dwc3_qcom = type { i32, i32, i32, i32, i32, %struct.dwc3_acpi_pdata* }
%struct.dwc3_acpi_pdata = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"hs_phy_irq\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@qcom_dwc3_resume_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"qcom_dwc3 HS\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hs_phy_irq failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dp_hs_phy_irq\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"qcom_dwc3 DP_HS\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"dp_hs_phy_irq failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dm_hs_phy_irq\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"qcom_dwc3 DM_HS\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"dm_hs_phy_irq failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ss_phy_irq\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"qcom_dwc3 SS\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ss_phy_irq failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_qcom_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_setup_irq(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc3_qcom*, align 8
  %5 = alloca %struct.dwc3_acpi_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.dwc3_qcom* %9, %struct.dwc3_qcom** %4, align 8
  %10 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %11 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %10, i32 0, i32 5
  %12 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %11, align 8
  store %struct.dwc3_acpi_pdata* %12, %struct.dwc3_acpi_pdata** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %15 = icmp ne %struct.dwc3_acpi_pdata* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %18 = getelementptr inbounds %struct.dwc3_acpi_pdata, %struct.dwc3_acpi_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ -1, %20 ]
  %23 = call i32 @dwc3_qcom_get_irq(%struct.platform_device* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %29 = call i32 @irq_set_status_flags(i32 %27, i32 %28)
  %30 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %31 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @qcom_dwc3_resume_irq, align 4
  %35 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %36 = load i32, i32* @IRQF_ONESHOT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %39 = call i32 @devm_request_threaded_irq(i32 %32, i32 %33, i32* null, i32 %34, i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.dwc3_qcom* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %44 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %177

49:                                               ; preds = %26
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %52 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %21
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %56 = icmp ne %struct.dwc3_acpi_pdata* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %59 = getelementptr inbounds %struct.dwc3_acpi_pdata, %struct.dwc3_acpi_pdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ -1, %61 ]
  %64 = call i32 @dwc3_qcom_get_irq(%struct.platform_device* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %70 = call i32 @irq_set_status_flags(i32 %68, i32 %69)
  %71 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %72 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @qcom_dwc3_resume_irq, align 4
  %76 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %80 = call i32 @devm_request_threaded_irq(i32 %73, i32 %74, i32* null, i32 %75, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.dwc3_qcom* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %67
  %84 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %85 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %177

90:                                               ; preds = %67
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %93 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %62
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %97 = icmp ne %struct.dwc3_acpi_pdata* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %100 = getelementptr inbounds %struct.dwc3_acpi_pdata, %struct.dwc3_acpi_pdata* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  br label %103

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32 [ %101, %98 ], [ -1, %102 ]
  %105 = call i32 @dwc3_qcom_get_irq(%struct.platform_device* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %111 = call i32 @irq_set_status_flags(i32 %109, i32 %110)
  %112 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %113 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @qcom_dwc3_resume_irq, align 4
  %117 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %118 = load i32, i32* @IRQF_ONESHOT, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %121 = call i32 @devm_request_threaded_irq(i32 %114, i32 %115, i32* null, i32 %116, i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), %struct.dwc3_qcom* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %108
  %125 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %126 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %177

131:                                              ; preds = %108
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %134 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %103
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %138 = icmp ne %struct.dwc3_acpi_pdata* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.dwc3_acpi_pdata*, %struct.dwc3_acpi_pdata** %5, align 8
  %141 = getelementptr inbounds %struct.dwc3_acpi_pdata, %struct.dwc3_acpi_pdata* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i32 [ %142, %139 ], [ -1, %143 ]
  %146 = call i32 @dwc3_qcom_get_irq(%struct.platform_device* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %176

149:                                              ; preds = %144
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %152 = call i32 @irq_set_status_flags(i32 %150, i32 %151)
  %153 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %154 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @qcom_dwc3_resume_irq, align 4
  %158 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %159 = load i32, i32* @IRQF_ONESHOT, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %162 = call i32 @devm_request_threaded_irq(i32 %155, i32 %156, i32* null, i32 %157, i32 %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %struct.dwc3_qcom* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %149
  %166 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %167 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @dev_err(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %177

172:                                              ; preds = %149
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %4, align 8
  %175 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %144
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %165, %124, %83, %42
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.dwc3_qcom* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dwc3_qcom_get_irq(%struct.platform_device*, i8*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.dwc3_qcom*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
