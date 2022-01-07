; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_register_sas_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_isci_register_sas_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.asd_sas_port*, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sas_ha_struct }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_4__ = type { %struct.asd_sas_phy, i32* }
%struct.asd_sas_phy = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sas_ha_struct = type { i32, i32, %struct.asd_sas_port**, %struct.asd_sas_phy**, i32*, i32, i32 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCI_MAX_PORTS = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @isci_register_sas_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_register_sas_ha(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_phy**, align 8
  %7 = alloca %struct.asd_sas_port**, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %8 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %9 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %8, i32 0, i32 3
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %5, align 8
  %10 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @SCI_MAX_PHYS, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kcalloc(i32* %13, i32 %14, i32 8, i32 %15)
  %17 = bitcast i8* %16 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %17, %struct.asd_sas_phy*** %6, align 8
  %18 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %19 = icmp ne %struct.asd_sas_phy** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %96

23:                                               ; preds = %1
  %24 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %25 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* @SCI_MAX_PORTS, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @devm_kcalloc(i32* %27, i32 %28, i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.asd_sas_port**
  store %struct.asd_sas_port** %31, %struct.asd_sas_port*** %7, align 8
  %32 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %33 = icmp ne %struct.asd_sas_port** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %23
  %38 = load i32, i32* @DRV_NAME, align 4
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %40 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %43 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %45 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %52 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %79, %37
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SCI_MAX_PHYS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %59 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %65, i64 %67
  store %struct.asd_sas_phy* %64, %struct.asd_sas_phy** %68, align 8
  %69 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %70 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %69, i32 0, i32 0
  %71 = load %struct.asd_sas_port*, %struct.asd_sas_port** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %71, i64 %73
  %75 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %75, i64 %77
  store %struct.asd_sas_port* %74, %struct.asd_sas_port** %78, align 8
  br label %79

79:                                               ; preds = %57
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %53

82:                                               ; preds = %53
  %83 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %6, align 8
  %84 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %85 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %84, i32 0, i32 3
  store %struct.asd_sas_phy** %83, %struct.asd_sas_phy*** %85, align 8
  %86 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %7, align 8
  %87 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %88 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %87, i32 0, i32 2
  store %struct.asd_sas_port** %86, %struct.asd_sas_port*** %88, align 8
  %89 = load i32, i32* @SCI_MAX_PHYS, align 4
  %90 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %91 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %93 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %95 = call i32 @sas_register_ha(%struct.sas_ha_struct* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %82, %34, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @sas_register_ha(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
