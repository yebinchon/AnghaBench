; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_port_add_rphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_port_add_rphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_sas_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sas_rphy = type { %struct.sas_identify }
%struct.sas_identify = type { i8*, i8*, i32 }

@SAS_PROTOCOL_SMP = common dso_local global i8* null, align 8
@SAS_PROTOCOL_STP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_sas_port*, %struct.sas_rphy*)* @pqi_sas_port_add_rphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_sas_port_add_rphy(%struct.pqi_sas_port* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca %struct.pqi_sas_port*, align 8
  %4 = alloca %struct.sas_rphy*, align 8
  %5 = alloca %struct.sas_identify*, align 8
  store %struct.pqi_sas_port* %0, %struct.pqi_sas_port** %3, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %4, align 8
  %6 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %7 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %6, i32 0, i32 0
  store %struct.sas_identify* %7, %struct.sas_identify** %5, align 8
  %8 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sas_identify*, %struct.sas_identify** %5, align 8
  %12 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %3, align 8
  %19 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8*, i8** @SAS_PROTOCOL_SMP, align 8
  %26 = load %struct.sas_identify*, %struct.sas_identify** %5, align 8
  %27 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @SAS_PROTOCOL_SMP, align 8
  %29 = load %struct.sas_identify*, %struct.sas_identify** %5, align 8
  %30 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %38

31:                                               ; preds = %17, %2
  %32 = load i8*, i8** @SAS_PROTOCOL_STP, align 8
  %33 = load %struct.sas_identify*, %struct.sas_identify** %5, align 8
  %34 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @SAS_PROTOCOL_STP, align 8
  %36 = load %struct.sas_identify*, %struct.sas_identify** %5, align 8
  %37 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %40 = call i32 @sas_rphy_add(%struct.sas_rphy* %39)
  ret i32 %40
}

declare dso_local i32 @sas_rphy_add(%struct.sas_rphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
