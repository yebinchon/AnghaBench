; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_register_sas_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_register_sas_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_6__, %struct.asd_sas_port*, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i8*, i32, %struct.asd_sas_port**, %struct.asd_sas_port**, i32*, i32 }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_5__ = type { %struct.asd_sas_port }
%struct.TYPE_4__ = type { i32* }
%struct.asd_sas_phy = type opaque

@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_register_sas_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_register_sas_ha(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy**, align 8
  %6 = alloca %struct.asd_sas_port**, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %7 = load i32, i32* @ASD_MAX_PHYS, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.asd_sas_port** @kcalloc(i32 %7, i32 8, i32 %8)
  %10 = bitcast %struct.asd_sas_port** %9 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %10, %struct.asd_sas_phy*** %5, align 8
  %11 = load i32, i32* @ASD_MAX_PHYS, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.asd_sas_port** @kcalloc(i32 %11, i32 8, i32 %12)
  store %struct.asd_sas_port** %13, %struct.asd_sas_port*** %6, align 8
  %14 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %5, align 8
  %15 = icmp ne %struct.asd_sas_phy** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %6, align 8
  %18 = icmp ne %struct.asd_sas_port** %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %5, align 8
  %21 = bitcast %struct.asd_sas_phy** %20 to %struct.asd_sas_port**
  %22 = call i32 @kfree(%struct.asd_sas_port** %21)
  %23 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %6, align 8
  %24 = call i32 @kfree(%struct.asd_sas_port** %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %16
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %29 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %33 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 8
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %45 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32* %43, i32** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %74, %27
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ASD_MAX_PHYS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %53 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = bitcast %struct.asd_sas_port* %58 to %struct.asd_sas_phy*
  %60 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %60, i64 %62
  store %struct.asd_sas_phy* %59, %struct.asd_sas_phy** %63, align 8
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %65 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %64, i32 0, i32 1
  %66 = load %struct.asd_sas_port*, %struct.asd_sas_port** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %66, i64 %68
  %70 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %6, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %70, i64 %72
  store %struct.asd_sas_port* %69, %struct.asd_sas_port** %73, align 8
  br label %74

74:                                               ; preds = %51
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %47

77:                                               ; preds = %47
  %78 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %5, align 8
  %79 = bitcast %struct.asd_sas_phy** %78 to %struct.asd_sas_port**
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %81 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store %struct.asd_sas_port** %79, %struct.asd_sas_port*** %82, align 8
  %83 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %6, align 8
  %84 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %85 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store %struct.asd_sas_port** %83, %struct.asd_sas_port*** %86, align 8
  %87 = load i32, i32* @ASD_MAX_PHYS, align 4
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %89 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %92 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %91, i32 0, i32 0
  %93 = call i32 @sas_register_ha(%struct.TYPE_6__* %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %77, %19
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.asd_sas_port** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.asd_sas_port**) #1

declare dso_local i32 @sas_register_ha(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
