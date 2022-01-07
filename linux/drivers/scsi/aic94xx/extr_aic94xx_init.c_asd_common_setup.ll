; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_common_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i64, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@AIC9410_DEV_REV_B0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%s is revision %s (%X), which is not supported\0A\00", align 1
@asd_dev_rev = common dso_local global i32* null, align 8
@ASD_MAX_DDBS = common dso_local global i32 0, align 4
@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@SAS_LINK_RATE_3_0_GBPS = common dso_local global i32 0, align 4
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_common_setup(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %12 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AIC9410_DEV_REV_B0, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @pci_name(%struct.TYPE_6__* %23)
  %25 = load i32*, i32** @asd_dev_rev, align 8
  %26 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %27 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @asd_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30, i64 %33)
  br label %95

35:                                               ; preds = %1
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 512, i32* %38, align 8
  %39 = load i32, i32* @ASD_MAX_DDBS, align 4
  %40 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %41 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @ASD_MAX_PHYS, align 4
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %45 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %48 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 255, i32* %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %91, %35
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ASD_MAX_PHYS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = load i32, i32* @SAS_LINK_RATE_3_0_GBPS, align 4
  %56 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %57 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %55, i32* %63, align 8
  %64 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %66 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i8* %64, i8** %72, align 8
  %73 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %75 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i8* %73, i8** %81, align 8
  %82 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %84 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %82, i8** %90, align 8
  br label %91

91:                                               ; preds = %54
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %50

94:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %97

95:                                               ; preds = %20
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @asd_printk(i8*, i32, i32, i64) #1

declare dso_local i32 @pci_name(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
