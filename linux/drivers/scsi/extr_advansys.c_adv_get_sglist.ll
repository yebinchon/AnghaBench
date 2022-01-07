; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_get_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_adv_get_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_board = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__* }
%struct.scsi_cmnd = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no free adv_sgblk_t\0A\00", align 1
@adv_build_nosg = common dso_local global i32 0, align 4
@ASC_BUSY = common dso_local global i32 0, align 4
@NO_OF_SG_PER_BLOCK = common dso_local global i32 0, align 4
@xfer_sect = common dso_local global i32 0, align 4
@ADV_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_board*, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.scsi_cmnd*, i32)* @adv_get_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_get_sglist(%struct.asc_board* %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2, %struct.scsi_cmnd* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asc_board*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.asc_board* %0, %struct.asc_board** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %21 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %20)
  store %struct.scatterlist* %21, %struct.scatterlist** %14, align 8
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %15, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %24, align 8
  br label %25

25:                                               ; preds = %150, %5
  %26 = load %struct.asc_board*, %struct.asc_board** %7, align 8
  %27 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.TYPE_13__* @dma_pool_alloc(i32 %28, i32 %29, i32* %18)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %12, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %65, label %33

33:                                               ; preds = %25
  %34 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @adv_build_nosg, align 4
  %41 = call i32 @ASC_STATS(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %47, %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %12, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %54, align 8
  %55 = load %struct.asc_board*, %struct.asc_board** %7, align 8
  %56 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dma_pool_free(i32 %57, %struct.TYPE_13__* %58, i32 %61)
  br label %42

63:                                               ; preds = %42
  %64 = load i32, i32* @ASC_BUSY, align 4
  store i32 %64, i32* %6, align 4
  br label %156

65:                                               ; preds = %25
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %16, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = icmp eq %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %65
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %83, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %97

88:                                               ; preds = %65
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %91, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %77
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %147, %97
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @NO_OF_SG_PER_BLOCK, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %150

102:                                              ; preds = %98
  %103 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %104 = call i32 @sg_dma_address(%struct.scatterlist* %103)
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i8* %105, i8** %112, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %114 = call i32 @sg_dma_len(%struct.scatterlist* %113)
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i8* %115, i8** %122, align 8
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @xfer_sect, align 4
  %129 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %130 = call i32 @sg_dma_len(%struct.scatterlist* %129)
  %131 = call i32 @DIV_ROUND_UP(i32 %130, i32 512)
  %132 = call i32 @ASC_STATS_ADD(i32 %127, i32 %128, i32 %131)
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %15, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %102
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* @ADV_SUCCESS, align 4
  store i32 %143, i32* %6, align 4
  br label %156

144:                                              ; preds = %102
  %145 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %146 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %145)
  store %struct.scatterlist* %146, %struct.scatterlist** %14, align 8
  br label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %98

150:                                              ; preds = %98
  %151 = load i32, i32* @NO_OF_SG_PER_BLOCK, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %17, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %13, align 8
  br label %25

156:                                              ; preds = %136, %63
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_13__* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @ASC_DBG(i32, i8*) #1

declare dso_local i32 @ASC_STATS(i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @ASC_STATS_ADD(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
