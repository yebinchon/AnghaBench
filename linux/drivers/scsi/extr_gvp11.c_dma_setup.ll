; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.gvp11_hostdata = type { %struct.gvp11_scsiregs*, %struct.WD33C93_hostdata }
%struct.gvp11_scsiregs = type { i16, i64, i32, i32 }
%struct.WD33C93_hostdata = type { i64, i32, i64, i32, i8* }

@GVP11_DMAC_INT_ENABLE = common dso_local global i16 0, align 2
@dma_setup.scsi_alloc_out_of_range = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUF_SCSI_ALLOCED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GVP II SCSI Bounce Buffer\00", align 1
@BUF_CHIP_ALLOCED = common dso_local global i8* null, align 8
@GVP11_DMAC_DIR_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.gvp11_hostdata*, align 8
  %8 = alloca %struct.WD33C93_hostdata*, align 8
  %9 = alloca %struct.gvp11_scsiregs*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = call %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.gvp11_hostdata* %19, %struct.gvp11_hostdata** %7, align 8
  %20 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %7, align 8
  %21 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %20, i32 0, i32 1
  store %struct.WD33C93_hostdata* %21, %struct.WD33C93_hostdata** %8, align 8
  %22 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %7, align 8
  %23 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %22, i32 0, i32 0
  %24 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %23, align 8
  store %struct.gvp11_scsiregs* %24, %struct.gvp11_scsiregs** %9, align 8
  %25 = load i16, i16* @GVP11_DMAC_INT_ENABLE, align 2
  store i16 %25, i16* %10, align 2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @virt_to_bus(i8* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %33 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %153

37:                                               ; preds = %2
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 511
  %43 = and i32 %42, -512
  %44 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %45 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @dma_setup.scsi_alloc_out_of_range, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %37
  %49 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %50 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  %54 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %55 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @BUF_SCSI_ALLOCED, align 8
  %57 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %58 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %48, %37
  %60 = load i32, i32* @dma_setup.scsi_alloc_out_of_range, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %64 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %69 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @amiga_chip_alloc(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %73 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %75 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %80 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  store i32 1, i32* %3, align 4
  br label %211

81:                                               ; preds = %67
  %82 = load i8*, i8** @BUF_CHIP_ALLOCED, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %85 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %62
  %87 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %88 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @virt_to_bus(i8* %89)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %93 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %91, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %86
  %98 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %99 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BUF_SCSI_ALLOCED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %105 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @kfree(i8* %106)
  store i32 1, i32* @dma_setup.scsi_alloc_out_of_range, align 4
  br label %113

108:                                              ; preds = %97
  %109 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %110 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @amiga_chip_free(i8* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %115 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @amiga_chip_alloc(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %119 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %121 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %113
  %125 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %126 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  store i32 1, i32* %3, align 4
  br label %211

127:                                              ; preds = %113
  %128 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %129 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @virt_to_bus(i8* %130)
  store i64 %131, i64* %11, align 8
  %132 = load i8*, i8** @BUF_CHIP_ALLOCED, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %135 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %127, %86
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %136
  %140 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %141 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @memcpy(i8* %142, i8* %146, i32 %150)
  br label %152

152:                                              ; preds = %139, %136
  br label %153

153:                                              ; preds = %152, %2
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load i16, i16* @GVP11_DMAC_DIR_WRITE, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* %10, align 2
  %160 = zext i16 %159 to i32
  %161 = or i32 %160, %158
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %10, align 2
  br label %163

163:                                              ; preds = %156, %153
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %166 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load i16, i16* %10, align 2
  %168 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %169 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %168, i32 0, i32 0
  store i16 %167, i16* %169, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %172 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %163
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %178 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cache_clear(i64 %176, i32 %180)
  br label %189

182:                                              ; preds = %163
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %185 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @cache_push(i64 %183, i32 %187)
  br label %189

189:                                              ; preds = %182, %175
  %190 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %191 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = xor i64 %192, -1
  %194 = lshr i64 %193, 18
  %195 = and i64 %194, 448
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %189
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %11, align 8
  %203 = lshr i64 %202, 18
  %204 = and i64 %201, %203
  %205 = trunc i64 %204 to i32
  %206 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %207 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %199, %189
  %209 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %210 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %209, i32 0, i32 3
  store i32 1, i32* %210, align 4
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %208, %124, %78
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @virt_to_bus(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @amiga_chip_alloc(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @amiga_chip_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cache_clear(i64, i32) #1

declare dso_local i32 @cache_push(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
