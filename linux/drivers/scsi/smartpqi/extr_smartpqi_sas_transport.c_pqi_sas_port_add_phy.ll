; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_port_add_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_port_add_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_sas_phy = type { i32, i32, %struct.sas_phy*, %struct.pqi_sas_port* }
%struct.sas_phy = type { i8*, i8*, i8*, i8*, i8*, %struct.sas_identify }
%struct.sas_identify = type { i8*, i8*, i32, i32 }
%struct.pqi_sas_port = type { i32, i32, i32 }

@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i8* null, align 8
@SAS_LINK_RATE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_sas_phy*)* @pqi_sas_port_add_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_sas_port_add_phy(%struct.pqi_sas_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_sas_port*, align 8
  %6 = alloca %struct.sas_phy*, align 8
  %7 = alloca %struct.sas_identify*, align 8
  store %struct.pqi_sas_phy* %0, %struct.pqi_sas_phy** %3, align 8
  %8 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %8, i32 0, i32 3
  %10 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  store %struct.pqi_sas_port* %10, %struct.pqi_sas_port** %5, align 8
  %11 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %12 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %11, i32 0, i32 2
  %13 = load %struct.sas_phy*, %struct.sas_phy** %12, align 8
  store %struct.sas_phy* %13, %struct.sas_phy** %6, align 8
  %14 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %15 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %14, i32 0, i32 5
  store %struct.sas_identify* %15, %struct.sas_identify** %7, align 8
  %16 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %17 = call i32 @memset(%struct.sas_identify* %16, i32 0, i32 24)
  %18 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %5, align 8
  %19 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %22 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SAS_END_DEVICE, align 4
  %24 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %25 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @SAS_PROTOCOL_STP, align 8
  %27 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %28 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @SAS_PROTOCOL_STP, align 8
  %30 = load %struct.sas_identify*, %struct.sas_identify** %7, align 8
  %31 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %33 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %34 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %36 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %37 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %39 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %40 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %42 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %43 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %45 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %46 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %48 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %47, i32 0, i32 2
  %49 = load %struct.sas_phy*, %struct.sas_phy** %48, align 8
  %50 = call i32 @sas_phy_add(%struct.sas_phy* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %1
  %56 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %5, align 8
  %57 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %60 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %59, i32 0, i32 2
  %61 = load %struct.sas_phy*, %struct.sas_phy** %60, align 8
  %62 = call i32 @sas_port_add_phy(i32 %58, %struct.sas_phy* %61)
  %63 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %64 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %63, i32 0, i32 1
  %65 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %5, align 8
  %66 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %3, align 8
  %69 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %55, %53
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.sas_identify*, i32, i32) #1

declare dso_local i32 @sas_phy_add(%struct.sas_phy*) #1

declare dso_local i32 @sas_port_add_phy(i32, %struct.sas_phy*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
