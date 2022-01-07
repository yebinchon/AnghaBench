; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_fini_scbdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_fini_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.scb_data }
%struct.scb_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.map_node = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_fini_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_fini_scbdata(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.map_node*, align 8
  %5 = alloca %struct.map_node*, align 8
  %6 = alloca %struct.map_node*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 0
  store %struct.scb_data* %8, %struct.scb_data** %3, align 8
  %9 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %10 = icmp eq %struct.scb_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %132

12:                                               ; preds = %1
  %13 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %14 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 7, label %17
    i32 6, label %55
    i32 5, label %93
    i32 4, label %131
    i32 3, label %131
    i32 2, label %131
    i32 1, label %131
    i32 0, label %131
  ]

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %12, %16
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %20 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %19, i32 0, i32 6
  %21 = call %struct.map_node* @SLIST_FIRST(i32* %20)
  store %struct.map_node* %21, %struct.map_node** %4, align 8
  %22 = icmp ne %struct.map_node* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %25 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %24, i32 0, i32 6
  %26 = load i32, i32* @links, align 4
  %27 = call i32 @SLIST_REMOVE_HEAD(i32* %25, i32 %26)
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %29 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %30 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.map_node*, %struct.map_node** %4, align 8
  %33 = getelementptr inbounds %struct.map_node, %struct.map_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ahd_dmamap_unload(%struct.ahd_softc* %28, i32 %31, i32 %34)
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %38 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.map_node*, %struct.map_node** %4, align 8
  %41 = getelementptr inbounds %struct.map_node, %struct.map_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.map_node*, %struct.map_node** %4, align 8
  %44 = getelementptr inbounds %struct.map_node, %struct.map_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ahd_dmamem_free(%struct.ahd_softc* %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.map_node*, %struct.map_node** %4, align 8
  %48 = call i32 @kfree(%struct.map_node* %47)
  br label %18

49:                                               ; preds = %18
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %51 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %52 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ahd_dma_tag_destroy(%struct.ahd_softc* %50, i32 %53)
  br label %55

55:                                               ; preds = %12, %49
  br label %56

56:                                               ; preds = %61, %55
  %57 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %58 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %57, i32 0, i32 4
  %59 = call %struct.map_node* @SLIST_FIRST(i32* %58)
  store %struct.map_node* %59, %struct.map_node** %5, align 8
  %60 = icmp ne %struct.map_node* %59, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %63 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %62, i32 0, i32 4
  %64 = load i32, i32* @links, align 4
  %65 = call i32 @SLIST_REMOVE_HEAD(i32* %63, i32 %64)
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %67 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %68 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.map_node*, %struct.map_node** %5, align 8
  %71 = getelementptr inbounds %struct.map_node, %struct.map_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ahd_dmamap_unload(%struct.ahd_softc* %66, i32 %69, i32 %72)
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %76 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.map_node*, %struct.map_node** %5, align 8
  %79 = getelementptr inbounds %struct.map_node, %struct.map_node* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.map_node*, %struct.map_node** %5, align 8
  %82 = getelementptr inbounds %struct.map_node, %struct.map_node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ahd_dmamem_free(%struct.ahd_softc* %74, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.map_node*, %struct.map_node** %5, align 8
  %86 = call i32 @kfree(%struct.map_node* %85)
  br label %56

87:                                               ; preds = %56
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %89 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %90 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ahd_dma_tag_destroy(%struct.ahd_softc* %88, i32 %91)
  br label %93

93:                                               ; preds = %12, %87
  br label %94

94:                                               ; preds = %99, %93
  %95 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %96 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %95, i32 0, i32 2
  %97 = call %struct.map_node* @SLIST_FIRST(i32* %96)
  store %struct.map_node* %97, %struct.map_node** %6, align 8
  %98 = icmp ne %struct.map_node* %97, null
  br i1 %98, label %99, label %125

99:                                               ; preds = %94
  %100 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %101 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %100, i32 0, i32 2
  %102 = load i32, i32* @links, align 4
  %103 = call i32 @SLIST_REMOVE_HEAD(i32* %101, i32 %102)
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %105 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %106 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.map_node*, %struct.map_node** %6, align 8
  %109 = getelementptr inbounds %struct.map_node, %struct.map_node* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ahd_dmamap_unload(%struct.ahd_softc* %104, i32 %107, i32 %110)
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %113 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %114 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.map_node*, %struct.map_node** %6, align 8
  %117 = getelementptr inbounds %struct.map_node, %struct.map_node* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.map_node*, %struct.map_node** %6, align 8
  %120 = getelementptr inbounds %struct.map_node, %struct.map_node* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ahd_dmamem_free(%struct.ahd_softc* %112, i32 %115, i32 %118, i32 %121)
  %123 = load %struct.map_node*, %struct.map_node** %6, align 8
  %124 = call i32 @kfree(%struct.map_node* %123)
  br label %94

125:                                              ; preds = %94
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %127 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %128 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ahd_dma_tag_destroy(%struct.ahd_softc* %126, i32 %129)
  br label %131

131:                                              ; preds = %12, %12, %12, %12, %12, %125
  br label %132

132:                                              ; preds = %11, %131
  ret void
}

declare dso_local %struct.map_node* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahd_dmamap_unload(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_dmamem_free(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.map_node*) #1

declare dso_local i32 @ahd_dma_tag_destroy(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
