; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fini_scbdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fini_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.scb_data* }
%struct.scb_data = type { i32, %struct.sg_map_node*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_map_node = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_fini_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_fini_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.sg_map_node*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %3, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %9 = icmp eq %struct.scb_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %135

11:                                               ; preds = %1
  %12 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %13 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %15 [
    i32 7, label %16
    i32 6, label %54
    i32 5, label %63
    i32 4, label %83
    i32 3, label %89
    i32 2, label %98
    i32 1, label %118
    i32 0, label %124
  ]

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %11, %15
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %19 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %18, i32 0, i32 9
  %20 = call %struct.sg_map_node* @SLIST_FIRST(i32* %19)
  store %struct.sg_map_node* %20, %struct.sg_map_node** %4, align 8
  %21 = icmp ne %struct.sg_map_node* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %24 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %23, i32 0, i32 9
  %25 = load i32, i32* @links, align 4
  %26 = call i32 @SLIST_REMOVE_HEAD(i32* %24, i32 %25)
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %29 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %32 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %27, i32 %30, i32 %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %37 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %40 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %43 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %47 = call i32 @kfree(%struct.sg_map_node* %46)
  br label %17

48:                                               ; preds = %17
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %50 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %51 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %49, i32 %52)
  br label %54

54:                                               ; preds = %11, %48
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %56 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %57 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %60 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %11, %54
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %65 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %66 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %69 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %72 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %64, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %76 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %77 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %80 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ahc_dmamap_destroy(%struct.ahc_softc* %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %11, %63
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %86 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %84, i32 %87)
  br label %89

89:                                               ; preds = %11, %83
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %91 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %92 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %95 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %11, %89
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %100 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %101 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %104 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %107 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %99, i32 %102, i32 %105, i32 %108)
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %111 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %112 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %115 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ahc_dmamap_destroy(%struct.ahc_softc* %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %11, %98
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %120 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %121 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %119, i32 %122)
  br label %125

124:                                              ; preds = %11
  br label %125

125:                                              ; preds = %124, %118
  %126 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %127 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %126, i32 0, i32 1
  %128 = load %struct.sg_map_node*, %struct.sg_map_node** %127, align 8
  %129 = icmp ne %struct.sg_map_node* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %132 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %131, i32 0, i32 1
  %133 = load %struct.sg_map_node*, %struct.sg_map_node** %132, align 8
  %134 = call i32 @kfree(%struct.sg_map_node* %133)
  br label %135

135:                                              ; preds = %10, %130, %125
  ret void
}

declare dso_local %struct.sg_map_node* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahc_dmamap_unload(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_dmamem_free(%struct.ahc_softc*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_map_node*) #1

declare dso_local i32 @ahc_dma_tag_destroy(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_dmamap_destroy(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
