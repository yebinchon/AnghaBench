; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_phy_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_phy_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.sas_ha_struct*, %struct.pm8001_phy*, %struct.pm8001_port* }
%struct.sas_ha_struct = type { i32 (i32*, i32)* }
%struct.pm8001_phy = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pm8001_port = type { i64, i32 }
%struct.hw_event_resp = type { i32, i32 }

@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" PortInvalid portID %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" Last phy Down and port invalid\0A\00", align 1
@HW_EVENT_PHY_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c" Port In Reset portID %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" Phy Down and PORT_NOT_ESTABLISHED\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" Phy Down and PORT_LOSTCOMM\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" Phy Down and(default) = 0x%x\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_phy_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_phy_down(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hw_event_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pm8001_port*, align 8
  %12 = alloca %struct.pm8001_phy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sas_ha_struct*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %17, %struct.hw_event_resp** %5, align 8
  %18 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %19 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %26 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 16711680
  %31 = ashr i32 %30, 16
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = load %struct.pm8001_port*, %struct.pm8001_port** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %38, i64 %39
  store %struct.pm8001_port* %40, %struct.pm8001_port** %11, align 8
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 1
  %43 = load %struct.pm8001_phy*, %struct.pm8001_phy** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %43, i64 %44
  store %struct.pm8001_phy* %45, %struct.pm8001_phy** %12, align 8
  %46 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %47 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PORT_TYPE_SATA, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %53 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %55 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %58 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %10, align 8
  switch i64 %59, label %119 [
    i64 128, label %60
    i64 132, label %61
    i64 131, label %85
    i64 129, label %90
    i64 130, label %96
  ]

60:                                               ; preds = %2
  br label %126

61:                                               ; preds = %2
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %62, i32 %64)
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %67 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %73 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %75 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = load i32, i32* @HW_EVENT_PHY_DOWN, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %76, i32 0, i32 %77, i64 %78, i64 %79, i32 0, i32 0)
  br label %81

81:                                               ; preds = %71, %61
  %82 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %83 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %82, i32 0, i32 1
  %84 = call i32 @sas_phy_disconnected(i32* %83)
  br label %126

85:                                               ; preds = %2
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %86, i32 %88)
  br label %126

90:                                               ; preds = %2
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %91, i32 %92)
  %94 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %95 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %126

96:                                               ; preds = %2
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %98 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %99 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %97, i32 %98)
  %100 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %101 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %100, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %107 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  %108 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %109 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %111 = load i32, i32* @HW_EVENT_PHY_DOWN, align 4
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %110, i32 0, i32 %111, i64 %112, i64 %113, i32 0, i32 0)
  br label %115

115:                                              ; preds = %105, %96
  %116 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %117 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %116, i32 0, i32 1
  %118 = call i32 @sas_phy_disconnected(i32* %117)
  br label %126

119:                                              ; preds = %2
  %120 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %121 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %123)
  %125 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %122, i32 %124)
  br label %126

126:                                              ; preds = %119, %115, %90, %85, %81, %60
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load i64, i64* %10, align 8
  %131 = icmp ne i64 %130, 131
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %134 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %133, i32 0, i32 0
  %135 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %134, align 8
  store %struct.sas_ha_struct* %135, %struct.sas_ha_struct** %14, align 8
  %136 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  %137 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %136, i32 0, i32 0
  %138 = load i32 (i32*, i32)*, i32 (i32*, i32)** %137, align 8
  %139 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %140 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %139, i32 0, i32 1
  %141 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %142 = call i32 %138(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %132, %129, %126
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @sas_phy_disconnected(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
