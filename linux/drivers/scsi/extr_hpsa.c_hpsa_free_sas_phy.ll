; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_free_sas_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_free_sas_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_sas_phy = type { i32, i64, %struct.TYPE_2__*, %struct.sas_phy* }
%struct.TYPE_2__ = type { i32 }
%struct.sas_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsa_sas_phy*)* @hpsa_free_sas_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_free_sas_phy(%struct.hpsa_sas_phy* %0) #0 {
  %2 = alloca %struct.hpsa_sas_phy*, align 8
  %3 = alloca %struct.sas_phy*, align 8
  store %struct.hpsa_sas_phy* %0, %struct.hpsa_sas_phy** %2, align 8
  %4 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  %5 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %4, i32 0, i32 3
  %6 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  store %struct.sas_phy* %6, %struct.sas_phy** %3, align 8
  %7 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  %8 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %13 = call i32 @sas_port_delete_phy(i32 %11, %struct.sas_phy* %12)
  %14 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  %15 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  %20 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %24 = call i32 @sas_phy_delete(%struct.sas_phy* %23)
  %25 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  %26 = call i32 @kfree(%struct.hpsa_sas_phy* %25)
  ret void
}

declare dso_local i32 @sas_port_delete_phy(i32, %struct.sas_phy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sas_phy_delete(%struct.sas_phy*) #1

declare dso_local i32 @kfree(%struct.hpsa_sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
