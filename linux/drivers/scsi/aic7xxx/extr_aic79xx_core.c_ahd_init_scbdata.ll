; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init_scbdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.scb_data }
%struct.scb_data = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@AHD_NUM_LUNS_NONPKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No SCB space found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ahd_init_scbdata - Unable to allocate initial scbs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AHD_SHOW_MEMORY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_init_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_init_scbdata(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %6, i32 0, i32 1
  store %struct.scb_data* %7, %struct.scb_data** %4, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %9 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %8, i32 0, i32 11
  %10 = call i32 @TAILQ_INIT(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %14 = load i32, i32* @AHD_NUM_LUNS_NONPKT, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %19 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %18, i32 0, i32 10
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @LIST_INIT(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %30 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %29, i32 0, i32 9
  %31 = call i32 @LIST_INIT(i32* %30)
  %32 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %33 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %32, i32 0, i32 8
  %34 = call i32 @SLIST_INIT(i32* %33)
  %35 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %36 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %35, i32 0, i32 7
  %37 = call i32 @SLIST_INIT(i32* %36)
  %38 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %39 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %38, i32 0, i32 6
  %40 = call i32 @SLIST_INIT(i32* %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = call i64 @ahd_probe_scbs(%struct.ahd_softc* %41)
  %43 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %44 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %46 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %51 = call i32 @ahd_name(%struct.ahd_softc* %50)
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %131

54:                                               ; preds = %28
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = call i32 @ahd_initialize_hscbs(%struct.ahd_softc* %55)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %64 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %67 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %68 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %67, i32 0, i32 5
  %69 = call i64 @ahd_dma_tag_create(%struct.ahd_softc* %57, i32 %60, i32 1, i64 %62, i64 %63, i32 %64, i32* null, i32* null, i32 %65, i32 1, i32 %66, i32 0, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  br label %129

72:                                               ; preds = %54
  %73 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %74 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %82 = add nsw i64 %81, 1
  %83 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %84 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %86 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %85)
  %87 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %88 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %89 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %88, i32 0, i32 4
  %90 = call i64 @ahd_dma_tag_create(%struct.ahd_softc* %77, i32 %80, i32 8, i64 %82, i64 %83, i32 %84, i32* null, i32* null, i32 %86, i32 1, i32 %87, i32 0, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %129

93:                                               ; preds = %72
  %94 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %95 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %103 = add nsw i64 %102, 1
  %104 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %105 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %108 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %109 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %108, i32 0, i32 3
  %110 = call i64 @ahd_dma_tag_create(%struct.ahd_softc* %98, i32 %101, i32 1, i64 %103, i64 %104, i32 %105, i32* null, i32* null, i32 %106, i32 1, i32 %107, i32 0, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %129

113:                                              ; preds = %93
  %114 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %115 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %119 = call i32 @ahd_alloc_scbs(%struct.ahd_softc* %118)
  %120 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %121 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %126 = call i32 @ahd_name(%struct.ahd_softc* %125)
  %127 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %129

128:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %131

129:                                              ; preds = %124, %112, %92, %71
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %128, %49
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @ahd_probe_scbs(%struct.ahd_softc*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_initialize_hscbs(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_dma_tag_create(%struct.ahd_softc*, i32, i32, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ahd_sglist_allocsize(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_alloc_scbs(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
