; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.scsi_target** }
%struct.scsi_target = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@AHD_LINUX_NOIRQ = common dso_local global i64 0, align 8
@BUS_SPACE_PIO = common dso_local global i64 0, align 8
@BUS_SPACE_MEMIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_platform_free(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %152

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.scsi_target**, %struct.scsi_target*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %19, i64 %21
  %23 = load %struct.scsi_target*, %struct.scsi_target** %22, align 8
  store %struct.scsi_target* %23, %struct.scsi_target** %3, align 8
  %24 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %25 = icmp ne %struct.scsi_target* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.scsi_target**, %struct.scsi_target*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %31, i64 %33
  store %struct.scsi_target* null, %struct.scsi_target** %34, align 8
  br label %35

35:                                               ; preds = %26, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AHD_LINUX_NOIRQ, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = call i32 @free_irq(i64 %52, %struct.ahd_softc* %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BUS_SPACE_PIO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @release_region(i64 %77, i32 256)
  br label %79

79:                                               ; preds = %71, %63, %55
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BUS_SPACE_PIO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @release_region(i64 %101, i32 256)
  br label %103

103:                                              ; preds = %95, %87, %79
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %105 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BUS_SPACE_MEMIO, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %103
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @iounmap(i32* %125)
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %128 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @release_mem_region(i32 %131, i32 4096)
  br label %133

133:                                              ; preds = %119, %111, %103
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %135 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %133
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @scsi_host_put(i64 %145)
  br label %147

147:                                              ; preds = %140, %133
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = call i32 @kfree(%struct.TYPE_4__* %150)
  br label %152

152:                                              ; preds = %147, %1
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.ahd_softc*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @scsi_host_put(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
