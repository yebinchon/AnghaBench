; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_set_safw_attr_all_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_set_safw_attr_all_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32, i64 }

@AAC_MAX_BUSES = common dso_local global i64 0, align 8
@AAC_MAX_TARGETS = common dso_local global i64 0, align 8
@AAC_DEVTYPE_RAID_MEMBER = common dso_local global i32 0, align 4
@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i32 0, align 4
@AAC_DEVTYPE_ARC_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @aac_set_safw_attr_all_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_set_safw_attr_all_targets(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %10 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %11 = call i64 @aac_get_safw_phys_lun_count(%struct.aac_dev* %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %13 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %114, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @aac_get_safw_phys_bus(%struct.aac_dev* %21, i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @aac_get_safw_phys_target(%struct.aac_dev* %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @aac_get_safw_phys_expose_flag(%struct.aac_dev* %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @aac_get_safw_phys_attribs(%struct.aac_dev* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @aac_get_safw_phys_nexus(%struct.aac_dev* %33, i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @AAC_MAX_BUSES, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %20
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @AAC_MAX_TARGETS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %20
  br label %114

44:                                               ; preds = %39
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* @AAC_DEVTYPE_RAID_MEMBER, align 4
  %49 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %50 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %48, i32* %57, align 8
  br label %114

58:                                               ; preds = %44
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, i32* @AAC_DEVTYPE_NATIVE_RAW, align 4
  %67 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %68 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %66, i32* %75, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %78 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 %76, i64* %85, align 8
  br label %97

86:                                               ; preds = %61, %58
  %87 = load i32, i32* @AAC_DEVTYPE_ARC_RAW, align 4
  %88 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %89 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %91
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %87, i32* %96, align 8
  br label %97

97:                                               ; preds = %86, %65
  %98 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %99 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %102 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %104
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 %100, i64* %109, align 8
  %110 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @aac_set_safw_target_qd(%struct.aac_dev* %110, i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %97, %47, %43
  %115 = load i64, i64* %5, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %5, align 8
  br label %16

117:                                              ; preds = %16
  ret void
}

declare dso_local i64 @aac_get_safw_phys_lun_count(%struct.aac_dev*) #1

declare dso_local i64 @aac_get_safw_phys_bus(%struct.aac_dev*, i64) #1

declare dso_local i64 @aac_get_safw_phys_target(%struct.aac_dev*, i64) #1

declare dso_local i64 @aac_get_safw_phys_expose_flag(%struct.aac_dev*, i64) #1

declare dso_local i64 @aac_get_safw_phys_attribs(%struct.aac_dev*, i64) #1

declare dso_local i64 @aac_get_safw_phys_nexus(%struct.aac_dev*, i64) #1

declare dso_local i32 @aac_set_safw_target_qd(%struct.aac_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
