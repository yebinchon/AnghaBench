; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*)* }
%struct.pm8001_hba_info = type { i64, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32, i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }

@completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"pdev=0x%p, slot=%s, resuming from previous operating state [D%d]\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"slot=%s Enable device failed during resume\0A\00", align 1
@chip_8001 = common dso_local global i64 0, align 8
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"chip soft reset successful\0A\00", align 1
@chip_8070 = common dso_local global i64 0, align 8
@chip_8072 = common dso_local global i64 0, align 8
@PM8001F_RUN_TIME = common dso_local global i32 0, align 4
@PM8001_MAX_MSIX_VEC = common dso_local global i64 0, align 8
@pm8001_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pm8001_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_pci_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* @completion, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %15, align 8
  store %struct.pm8001_hba_info* %16, %struct.pm8001_hba_info** %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.pci_dev* %20, i32 %23, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* @PCI_D0, align 4
  %28 = call i32 @pci_set_power_state(%struct.pci_dev* %26, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* @PCI_D0, align 4
  %31 = call i32 @pci_enable_wake(%struct.pci_dev* %29, i32 %30, i32 0)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_restore_state(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_enable_device(%struct.pci_dev* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %170

43:                                               ; preds = %1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = call i32 @pci_set_master(%struct.pci_dev* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = call i32 @pci_go_44(%struct.pci_dev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %163

51:                                               ; preds = %43
  %52 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %53 = call i32 @sas_prep_resume_ha(%struct.sas_ha_struct* %52)
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @chip_8001, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %61, align 8
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %64 = call i32 %62(%struct.pm8001_hba_info* %63)
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %66 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %51
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %70, align 8
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %73 = call i32 %71(%struct.pm8001_hba_info* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %163

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %79, align 8
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %82 = call i32 %80(%struct.pm8001_hba_info* %81, i32 255)
  %83 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %84 = call i32 @pm8001_request_irq(%struct.pm8001_hba_info* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %163

88:                                               ; preds = %77
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i64)** %90, align 8
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %93 = call i32 %91(%struct.pm8001_hba_info* %92, i64 0)
  %94 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %95 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @chip_8001, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %88
  store i64 1, i64* %7, align 8
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %103 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i64)** %108, align 8
  %110 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 %109(%struct.pm8001_hba_info* %110, i64 %111)
  br label %113

113:                                              ; preds = %106
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %100

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %88
  %118 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %119 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @chip_8070, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %125 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @chip_8072, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123, %117
  %130 = call i32 @mdelay(i32 500)
  br label %131

131:                                              ; preds = %129, %123
  %132 = load i32, i32* @PM8001F_RUN_TIME, align 4
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %134 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  store i64 0, i64* %7, align 8
  br label %135

135:                                              ; preds = %157, %131
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %138 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %136, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %145 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32* @completion, i32** %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i64)** %151, align 8
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 %152(%struct.pm8001_hba_info* %153, i64 %154)
  %156 = call i32 @wait_for_completion(i32* @completion)
  br label %157

157:                                              ; preds = %143
  %158 = load i64, i64* %7, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %7, align 8
  br label %135

160:                                              ; preds = %135
  %161 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %162 = call i32 @sas_resume_ha(%struct.sas_ha_struct* %161)
  store i32 0, i32* %2, align 4
  br label %172

163:                                              ; preds = %87, %76, %50
  %164 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %165 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @scsi_remove_host(i32 %166)
  %168 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %169 = call i32 @pci_disable_device(%struct.pci_dev* %168)
  br label %170

170:                                              ; preds = %163, %38
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %160
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.sas_ha_struct* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_go_44(%struct.pci_dev*) #1

declare dso_local i32 @sas_prep_resume_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_request_irq(%struct.pm8001_hba_info*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @sas_resume_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
