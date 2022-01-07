; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_sas_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_sas_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsa_sas_phy = type { %struct.hpsa_sas_port*, %struct.sas_phy* }
%struct.sas_phy = type { i32 }
%struct.hpsa_sas_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpsa_sas_phy* (%struct.hpsa_sas_port*)* @hpsa_alloc_sas_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpsa_sas_phy* @hpsa_alloc_sas_phy(%struct.hpsa_sas_port* %0) #0 {
  %2 = alloca %struct.hpsa_sas_phy*, align 8
  %3 = alloca %struct.hpsa_sas_port*, align 8
  %4 = alloca %struct.hpsa_sas_phy*, align 8
  %5 = alloca %struct.sas_phy*, align 8
  store %struct.hpsa_sas_port* %0, %struct.hpsa_sas_port** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hpsa_sas_phy* @kzalloc(i32 16, i32 %6)
  store %struct.hpsa_sas_phy* %7, %struct.hpsa_sas_phy** %4, align 8
  %8 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %4, align 8
  %9 = icmp ne %struct.hpsa_sas_phy* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.hpsa_sas_phy* null, %struct.hpsa_sas_phy** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %3, align 8
  %13 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %3, align 8
  %18 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.sas_phy* @sas_phy_alloc(i32 %16, i32 %19)
  store %struct.sas_phy* %20, %struct.sas_phy** %5, align 8
  %21 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %22 = icmp ne %struct.sas_phy* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %4, align 8
  %25 = call i32 @kfree(%struct.hpsa_sas_phy* %24)
  store %struct.hpsa_sas_phy* null, %struct.hpsa_sas_phy** %2, align 8
  br label %38

26:                                               ; preds = %11
  %27 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %3, align 8
  %28 = getelementptr inbounds %struct.hpsa_sas_port, %struct.hpsa_sas_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %32 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %4, align 8
  %33 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %32, i32 0, i32 1
  store %struct.sas_phy* %31, %struct.sas_phy** %33, align 8
  %34 = load %struct.hpsa_sas_port*, %struct.hpsa_sas_port** %3, align 8
  %35 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %4, align 8
  %36 = getelementptr inbounds %struct.hpsa_sas_phy, %struct.hpsa_sas_phy* %35, i32 0, i32 0
  store %struct.hpsa_sas_port* %34, %struct.hpsa_sas_port** %36, align 8
  %37 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %4, align 8
  store %struct.hpsa_sas_phy* %37, %struct.hpsa_sas_phy** %2, align 8
  br label %38

38:                                               ; preds = %26, %23, %10
  %39 = load %struct.hpsa_sas_phy*, %struct.hpsa_sas_phy** %2, align 8
  ret %struct.hpsa_sas_phy* %39
}

declare dso_local %struct.hpsa_sas_phy* @kzalloc(i32, i32) #1

declare dso_local %struct.sas_phy* @sas_phy_alloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hpsa_sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
