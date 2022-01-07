; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_register_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_register_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, i32, %struct.TYPE_7__, %struct.asd_sas_phy** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.asd_sas_phy = type { %struct.TYPE_9__*, i32, i32, i64, i32, i32, %struct.sas_ha_struct*, i32*, i32, i32, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_register_phys(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %118, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %121

12:                                               ; preds = %6
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 3
  %15 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, i64 %17
  %19 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  store %struct.asd_sas_phy* %19, %struct.asd_sas_phy** %5, align 8
  %20 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %21 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %20, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %23 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %22, i32 0, i32 9
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %26 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %25, i32 0, i32 8
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %31 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %32 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %31, i32 0, i32 6
  store %struct.sas_ha_struct* %30, %struct.sas_ha_struct** %32, align 8
  %33 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %34 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %40 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %42 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.TYPE_9__* @sas_phy_alloc(i32* %45, i32 %46)
  %48 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %49 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %48, i32 0, i32 0
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %12
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %122

57:                                               ; preds = %12
  %58 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %59 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %62 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32 %60, i32* %65, align 4
  %66 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %67 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %70 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 8
  %74 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %75 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SAS_ADDR(i32 %76)
  %78 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %79 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %85 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %90 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %91 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  store i8* %89, i8** %93, align 8
  %94 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %95 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %96 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i8* %94, i8** %98, align 8
  %99 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %100 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %101 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i8* %99, i8** %103, align 8
  %104 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %105 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %106 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i8* %104, i8** %108, align 8
  %109 = load i8*, i8** @SAS_LINK_RATE_UNKNOWN, align 8
  %110 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %111 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 8
  %114 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %115 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i32 @sas_phy_add(%struct.TYPE_9__* %116)
  br label %118

118:                                              ; preds = %57
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %6

121:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %54
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_9__* @sas_phy_alloc(i32*, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_phy_add(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
