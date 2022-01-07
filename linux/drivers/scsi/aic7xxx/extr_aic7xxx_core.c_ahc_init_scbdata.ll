; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init_scbdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.scb_data* }
%struct.scb_data = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@AHC_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No SCB space found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ahc_dmamap_cb = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ahc_init_scbdata - Unable to allocate initial scbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_init_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_init_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 2
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %4, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %9 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %8, i32 0, i32 14
  %10 = call i32 @SLIST_INIT(i32* %9)
  %11 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %12 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %11, i32 0, i32 13
  %13 = call i32 @SLIST_INIT(i32* %12)
  %14 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %18 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %17, i32 0, i32 12
  store i32* %16, i32** %18, align 8
  %19 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %20 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %19, i32 0, i32 12
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %213

25:                                               ; preds = %1
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %27 = call i64 @ahc_probe_scbs(%struct.ahc_softc* %26)
  %28 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %29 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %30, i32 0, i32 2
  %32 = load %struct.scb_data*, %struct.scb_data** %31, align 8
  %33 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %38 = call i32 @ahc_name(%struct.ahc_softc* %37)
  %39 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %213

41:                                               ; preds = %25
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %55 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %56 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %55, i32 0, i32 11
  %57 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %42, i32 %45, i32 1, i64 %47, i64 %48, i32 %49, i32* null, i32* null, i32 %53, i32 1, i32 %54, i32 0, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %211

60:                                               ; preds = %41
  %61 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %62 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %66 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %67 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %70 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %69, i32 0, i32 2
  %71 = bitcast i32* %70 to i8**
  %72 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %73 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %74 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %73, i32 0, i32 10
  %75 = call i64 @ahc_dmamem_alloc(%struct.ahc_softc* %65, i32 %68, i8** %71, i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %211

78:                                               ; preds = %60
  %79 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %80 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %84 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %85 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %88 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %91 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @ahc_dmamap_cb, align 4
  %98 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %99 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %98, i32 0, i32 9
  %100 = call i32 @ahc_dmamap_load(%struct.ahc_softc* %83, i32 %86, i32 %89, i32 %92, i32 %96, i32 %97, i32* %99, i32 0)
  %101 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %102 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %110 = add nsw i64 %109, 1
  %111 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %112 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %113 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %118 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %119 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %118, i32 0, i32 8
  %120 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %105, i32 %108, i32 1, i64 %110, i64 %111, i32 %112, i32* null, i32* null, i32 %116, i32 1, i32 %117, i32 0, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %78
  br label %211

123:                                              ; preds = %78
  %124 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %125 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %129 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %130 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %133 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %132, i32 0, i32 6
  %134 = bitcast i32* %133 to i8**
  %135 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %136 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %137 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %136, i32 0, i32 7
  %138 = call i64 @ahc_dmamem_alloc(%struct.ahc_softc* %128, i32 %131, i8** %134, i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %211

141:                                              ; preds = %123
  %142 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %143 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %147 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %148 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %151 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %154 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @ahc_dmamap_cb, align 4
  %161 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %162 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %161, i32 0, i32 5
  %163 = call i32 @ahc_dmamap_load(%struct.ahc_softc* %146, i32 %149, i32 %152, i32 %155, i32 %159, i32 %160, i32* %162, i32 0)
  %164 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %165 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %169 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %170 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %173 = add nsw i64 %172, 1
  %174 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %175 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %178 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %179 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %178, i32 0, i32 4
  %180 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %168, i32 %171, i32 8, i64 %173, i64 %174, i32 %175, i32* null, i32* null, i32 %176, i32 1, i32 %177, i32 0, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %141
  br label %211

183:                                              ; preds = %141
  %184 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %185 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %189 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memset(i32 %190, i32 0, i32 %194)
  %196 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %197 = call i32 @ahc_alloc_scbs(%struct.ahc_softc* %196)
  %198 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %199 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %183
  %203 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %204 = call i32 @ahc_name(%struct.ahc_softc* %203)
  %205 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  br label %211

206:                                              ; preds = %183
  %207 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %208 = call i32 @ahc_get_scb(%struct.ahc_softc* %207)
  %209 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  store i32 0, i32* %2, align 4
  br label %213

211:                                              ; preds = %202, %182, %140, %122, %77, %59
  %212 = load i32, i32* @ENOMEM, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %206, %36, %23
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @ahc_probe_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_dma_tag_create(%struct.ahc_softc*, i32, i32, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ahc_dmamem_alloc(%struct.ahc_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @ahc_dmamap_load(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ahc_alloc_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_get_scb(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
