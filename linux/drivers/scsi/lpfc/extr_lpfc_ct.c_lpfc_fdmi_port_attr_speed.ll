; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@HBA_PORTSPEED_1GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_2GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_4GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_8GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_10GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_16GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_32GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_64GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_128GFC = common dso_local global i8* null, align 8
@HBA_PORTSPEED_UNKNOWN = common dso_local global i8* null, align 8
@HBA_PORTSPEED_10GE = common dso_local global i8* null, align 8
@HBA_PORTSPEED_25GE = common dso_local global i8* null, align 8
@HBA_PORTSPEED_40GE = common dso_local global i8* null, align 8
@HBA_PORTSPEED_100GE = common dso_local global i8* null, align 8
@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_PORT_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_speed(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %5, align 8
  %11 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %13, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HBA_FCOE_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %75, label %20

20:                                               ; preds = %2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %69 [
    i32 133, label %24
    i32 132, label %29
    i32 130, label %34
    i32 128, label %39
    i32 136, label %44
    i32 134, label %49
    i32 131, label %54
    i32 129, label %59
    i32 135, label %64
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** @HBA_PORTSPEED_1GFC, align 8
  %26 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %74

29:                                               ; preds = %20
  %30 = load i8*, i8** @HBA_PORTSPEED_2GFC, align 8
  %31 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %74

34:                                               ; preds = %20
  %35 = load i8*, i8** @HBA_PORTSPEED_4GFC, align 8
  %36 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  br label %74

39:                                               ; preds = %20
  %40 = load i8*, i8** @HBA_PORTSPEED_8GFC, align 8
  %41 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %74

44:                                               ; preds = %20
  %45 = load i8*, i8** @HBA_PORTSPEED_10GFC, align 8
  %46 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %74

49:                                               ; preds = %20
  %50 = load i8*, i8** @HBA_PORTSPEED_16GFC, align 8
  %51 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  br label %74

54:                                               ; preds = %20
  %55 = load i8*, i8** @HBA_PORTSPEED_32GFC, align 8
  %56 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %74

59:                                               ; preds = %20
  %60 = load i8*, i8** @HBA_PORTSPEED_64GFC, align 8
  %61 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %74

64:                                               ; preds = %20
  %65 = load i8*, i8** @HBA_PORTSPEED_128GFC, align 8
  %66 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %74

69:                                               ; preds = %20
  %70 = load i8*, i8** @HBA_PORTSPEED_UNKNOWN, align 8
  %71 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %64, %59, %54, %49, %44, %39, %34, %29, %24
  br label %105

75:                                               ; preds = %2
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %99 [
    i32 139, label %79
    i32 138, label %84
    i32 137, label %89
    i32 140, label %94
  ]

79:                                               ; preds = %75
  %80 = load i8*, i8** @HBA_PORTSPEED_10GE, align 8
  %81 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %104

84:                                               ; preds = %75
  %85 = load i8*, i8** @HBA_PORTSPEED_25GE, align 8
  %86 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %104

89:                                               ; preds = %75
  %90 = load i8*, i8** @HBA_PORTSPEED_40GE, align 8
  %91 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %104

94:                                               ; preds = %75
  %95 = load i8*, i8** @HBA_PORTSPEED_100GE, align 8
  %96 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %97 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  br label %104

99:                                               ; preds = %75
  %100 = load i8*, i8** @HBA_PORTSPEED_UNKNOWN, align 8
  %101 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %99, %94, %89, %84, %79
  br label %105

105:                                              ; preds = %104, %74
  %106 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @cpu_to_be32(i8* %109)
  %111 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load i32, i32* @FOURBYTES, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i8* @cpu_to_be16(i32 %118)
  %120 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @RPRT_PORT_SPEED, align 4
  %123 = call i8* @cpu_to_be16(i32 %122)
  %124 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %125 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
