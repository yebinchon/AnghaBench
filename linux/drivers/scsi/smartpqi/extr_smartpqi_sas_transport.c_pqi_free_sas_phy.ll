; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_free_sas_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_free_sas_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_sas_phy = type { i32, i64, %struct.TYPE_2__*, %struct.sas_phy* }
%struct.TYPE_2__ = type { i32 }
%struct.sas_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_sas_phy*)* @pqi_free_sas_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_free_sas_phy(%struct.pqi_sas_phy* %0) #0 {
  %2 = alloca %struct.pqi_sas_phy*, align 8
  %3 = alloca %struct.sas_phy*, align 8
  store %struct.pqi_sas_phy* %0, %struct.pqi_sas_phy** %2, align 8
  %4 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %2, align 8
  %5 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %4, i32 0, i32 3
  %6 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  store %struct.sas_phy* %6, %struct.sas_phy** %3, align 8
  %7 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %2, align 8
  %8 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %13 = call i32 @sas_port_delete_phy(i32 %11, %struct.sas_phy* %12)
  %14 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %15 = call i32 @sas_phy_free(%struct.sas_phy* %14)
  %16 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %2, align 8
  %17 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %2, align 8
  %22 = getelementptr inbounds %struct.pqi_sas_phy, %struct.pqi_sas_phy* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %2, align 8
  %26 = call i32 @kfree(%struct.pqi_sas_phy* %25)
  ret void
}

declare dso_local i32 @sas_port_delete_phy(i32, %struct.sas_phy*) #1

declare dso_local i32 @sas_phy_free(%struct.sas_phy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.pqi_sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
