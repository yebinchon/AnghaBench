; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_register_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_register_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.Scsi_Host*, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@pqi_driver_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"scsi_host_alloc failed for controller %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PQI_MAX_BUS = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@pqi_sas_transport_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"scsi_add_host failed for controller %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"add SAS host failed for controller %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_register_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_register_scsi(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @pqi_driver_template, i32 8)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %5, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 15
  store i64 0, i64* %22, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 14
  store i64 0, i64* %24, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load i32, i32* @PQI_MAX_BUS, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 11
  store i32 -1, i32* %34, align 4
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 10
  store i32 -1, i32* %36, align 8
  %37 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %38 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %43 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %53 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @pqi_sas_transport_template, align 4
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %61 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @pci_irq_vector(%struct.TYPE_2__* %62, i32 0)
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %72 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %77 = ptrtoint %struct.pqi_ctrl_info* %76 to i64
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %77, i64* %81, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %83 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %84 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @scsi_add_host(%struct.Scsi_Host* %82, i32* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %20
  %91 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %92 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %96 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %121

99:                                               ; preds = %20
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %101 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %102 = call i32 @pqi_add_sas_host(%struct.Scsi_Host* %100, %struct.pqi_ctrl_info* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %107 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %111 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %118

114:                                              ; preds = %99
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %116 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %117 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %116, i32 0, i32 0
  store %struct.Scsi_Host* %115, %struct.Scsi_Host** %117, align 8
  store i32 0, i32* %2, align 4
  br label %125

118:                                              ; preds = %105
  %119 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %120 = call i32 @scsi_remove_host(%struct.Scsi_Host* %119)
  br label %121

121:                                              ; preds = %118, %90
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %123 = call i32 @scsi_host_put(%struct.Scsi_Host* %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %114, %9
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @pqi_add_sas_host(%struct.Scsi_Host*, %struct.pqi_ctrl_info*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
