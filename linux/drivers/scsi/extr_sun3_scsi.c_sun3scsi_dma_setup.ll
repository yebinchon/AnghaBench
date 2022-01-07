; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun3_scsi.c_sun3scsi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32 }
%struct.NCR5380_hostdata = type { i32 }

@sun3_dma_orig_addr = common dso_local global i32* null, align 8
@sun3_dma_orig_count = common dso_local global i32 0, align 4
@dregs = common dso_local global %struct.TYPE_5__* null, align 8
@UDC_RESET = common dso_local global i32 0, align 4
@UDC_CSR = common dso_local global i32 0, align 4
@CSR_FIFO = common dso_local global i32 0, align 4
@CSR_SEND = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FIFO mismatch %04x not %04x\0A\00", align 1
@NDEBUG_DMA = common dso_local global i32 0, align 4
@udc_regs = common dso_local global %struct.TYPE_4__* null, align 8
@UDC_MODE_HIWORD = common dso_local global i32 0, align 4
@UDC_MODE_LSEND = common dso_local global i32 0, align 4
@UDC_RSEL_SEND = common dso_local global i32 0, align 4
@UDC_MODE_LRECV = common dso_local global i32 0, align 4
@UDC_RSEL_RECV = common dso_local global i32 0, align 4
@UDC_CHN_HI = common dso_local global i32 0, align 4
@UDC_CHN_LO = common dso_local global i32 0, align 4
@UDC_MODE = common dso_local global i32 0, align 4
@UDC_INT_ENABLE = common dso_local global i32 0, align 4
@CSR_PACK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NCR5380_hostdata*, i8*, i32, i32)* @sun3scsi_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun3scsi_dma_setup(%struct.NCR5380_hostdata* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.NCR5380_hostdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** @sun3_dma_orig_addr, align 8
  %14 = call i32 @dvma_unmap(i32* %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i8*, i8** %6, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @dvma_map(i64 %17, i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @sun3_dma_orig_addr, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* @sun3_dma_orig_count, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @UDC_RESET, align 4
  %27 = load i32, i32* @UDC_CSR, align 4
  %28 = call i32 @sun3_udc_write(i32 %26, i32 %27)
  %29 = load i32, i32* @CSR_FIFO, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @CSR_FIFO, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %15
  %43 = load i32, i32* @CSR_SEND, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %15
  %49 = load i32, i32* @CSR_SEND, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @UDC_RESET, align 4
  %60 = load i32, i32* @UDC_CSR, align 4
  %61 = call i32 @sun3_udc_write(i32 %59, i32 %60)
  %62 = load i32, i32* @CSR_FIFO, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @CSR_FIFO, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %55
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %81 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dregs, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @shost_printk(i32 %79, i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @NDEBUG_DMA, align 4
  %89 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %90 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @NCR5380_dprint(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %78, %55
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = and i64 %95, 16711680
  %97 = lshr i64 %96, 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = and i64 %101, 65535
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sdiv i32 %105, 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @UDC_MODE_HIWORD, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %93
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* @UDC_MODE_LSEND, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @UDC_RSEL_SEND, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %137

130:                                              ; preds = %93
  %131 = load i32, i32* @UDC_MODE_LRECV, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @UDC_RSEL_RECV, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %139 = call i32 @dvma_vtob(%struct.TYPE_4__* %138)
  %140 = and i32 %139, 16711680
  %141 = ashr i32 %140, 8
  %142 = load i32, i32* @UDC_CHN_HI, align 4
  %143 = call i32 @sun3_udc_write(i32 %141, i32 %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udc_regs, align 8
  %145 = call i32 @dvma_vtob(%struct.TYPE_4__* %144)
  %146 = and i32 %145, 65535
  %147 = load i32, i32* @UDC_CHN_LO, align 4
  %148 = call i32 @sun3_udc_write(i32 %146, i32 %147)
  %149 = load i32, i32* @UDC_MODE, align 4
  %150 = call i32 @sun3_udc_write(i32 13, i32 %149)
  %151 = load i32, i32* @UDC_INT_ENABLE, align 4
  %152 = load i32, i32* @UDC_CSR, align 4
  %153 = call i32 @sun3_udc_write(i32 %151, i32 %152)
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @dvma_unmap(i32*) #1

declare dso_local i64 @dvma_map(i64, i32) #1

declare dso_local i32 @sun3_udc_write(i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @NCR5380_dprint(i32, i32) #1

declare dso_local i32 @dvma_vtob(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
