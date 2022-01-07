; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_rphy_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_rphy_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { i32, %struct.TYPE_8__, i32, %struct.sas_identify }
%struct.TYPE_8__ = type { i32 }
%struct.sas_identify = type { i64, i32 }
%struct.sas_port = type { %struct.sas_rphy*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_host_attrs = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fail to a bsg device %s\0A\00", align 1
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@SCAN_WILD_CARD = common dso_local global i32 0, align 4
@SCSI_SCAN_INITIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_rphy_add(%struct.sas_rphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca %struct.sas_port*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sas_host_attrs*, align 8
  %7 = alloca %struct.sas_identify*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sas_rphy* %0, %struct.sas_rphy** %3, align 8
  %10 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %11 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sas_port* @dev_to_sas_port(i32 %13)
  store %struct.sas_port* %14, %struct.sas_port** %4, align 8
  %15 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %16 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.Scsi_Host* @dev_to_shost(i32 %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %5, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %20)
  store %struct.sas_host_attrs* %21, %struct.sas_host_attrs** %6, align 8
  %22 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %23 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %22, i32 0, i32 3
  store %struct.sas_identify* %23, %struct.sas_identify** %7, align 8
  %24 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %25 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %24, i32 0, i32 0
  %26 = load %struct.sas_rphy*, %struct.sas_rphy** %25, align 8
  %27 = icmp ne %struct.sas_rphy* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %134

31:                                               ; preds = %1
  %32 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %33 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %34 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %33, i32 0, i32 0
  store %struct.sas_rphy* %32, %struct.sas_rphy** %34, align 8
  %35 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %36 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %35, i32 0, i32 1
  %37 = call i32 @device_add(%struct.TYPE_8__* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %134

42:                                               ; preds = %31
  %43 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %44 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %43, i32 0, i32 1
  %45 = call i32 @transport_add_device(%struct.TYPE_8__* %44)
  %46 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %47 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %46, i32 0, i32 1
  %48 = call i32 @transport_configure_device(%struct.TYPE_8__* %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %50 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %51 = call i64 @sas_bsg_initialize(%struct.Scsi_Host* %49, %struct.sas_rphy* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %55 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %54, i32 0, i32 1
  %56 = call i32 @dev_name(%struct.TYPE_8__* %55)
  %57 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %42
  %59 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %6, align 8
  %60 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %63 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %62, i32 0, i32 2
  %64 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %6, align 8
  %65 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %64, i32 0, i32 2
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %68 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SAS_END_DEVICE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %58
  %73 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %74 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %77 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %6, align 8
  %85 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %89 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  br label %100

90:                                               ; preds = %72, %58
  %91 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %92 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SAS_END_DEVICE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %98 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %83
  %101 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %6, align 8
  %102 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %105 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SAS_END_DEVICE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %100
  %110 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %111 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %116 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @SCAN_WILD_CARD, align 4
  store i32 %122, i32* %9, align 4
  br label %124

123:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %126 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %125, i32 0, i32 1
  %127 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %128 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SCSI_SCAN_INITIAL, align 4
  %132 = call i32 @scsi_scan_target(%struct.TYPE_8__* %126, i32 0, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %109, %100
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %40, %28
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.sas_port* @dev_to_sas_port(i32) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @transport_add_device(%struct.TYPE_8__*) #1

declare dso_local i32 @transport_configure_device(%struct.TYPE_8__*) #1

declare dso_local i64 @sas_bsg_initialize(%struct.Scsi_Host*, %struct.sas_rphy*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scsi_scan_target(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
