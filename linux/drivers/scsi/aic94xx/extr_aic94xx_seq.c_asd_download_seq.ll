; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_download_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_download_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_dma_tok = type { i32, i32 }

@MAX_DMA_OVLY_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sequencer program not multiple of 4\0A\00", align 1
@COMSTATEN = common dso_local global i32 0, align 4
@COMSTAT = common dso_local global i32 0, align 4
@COMSTAT_MASK = common dso_local global i32 0, align 4
@CHIMINTEN = common dso_local global i32 0, align 4
@RST_CHIMINTEN = common dso_local global i32 0, align 4
@CHIMINT = common dso_local global i32 0, align 4
@CHIMINT_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"out of memory for dma SEQ download\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"dma-ing %d bytes\0A\00", align 1
@OVLYDMAADR = common dso_local global i32 0, align 4
@OVLYDMACNT = common dso_local global i32 0, align 4
@RESETOVLYDMA = common dso_local global i32 0, align 4
@STARTOVLYDMA = common dso_local global i32 0, align 4
@OVLYHALTERR = common dso_local global i32 0, align 4
@OVLYCSEQ = common dso_local global i32 0, align 4
@OVLYDMACTL = common dso_local global i32 0, align 4
@PAUSE_TRIES = common dso_local global i32 0, align 4
@OVLYDMAACT = common dso_local global i32 0, align 4
@PAUSE_DELAY = common dso_local global i32 0, align 4
@OVLYDMADONE = common dso_local global i32 0, align 4
@OVLYERR = common dso_local global i32 0, align 4
@DEVEXCEPT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: error DMA-ing sequencer code\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i64*, i32, i64)* @asd_download_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_download_seq(%struct.asd_ha_struct* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.asd_dma_tok*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %199

30:                                               ; preds = %4
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %32 = call i32 @asd_pause_cseq(%struct.asd_ha_struct* %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %34 = call i32 @asd_pause_lseq(%struct.asd_ha_struct* %33, i32 255)
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %36 = load i32, i32* @COMSTATEN, align 4
  %37 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %39 = load i32, i32* @COMSTATEN, align 4
  %40 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %38, i32 %39, i32 0)
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %42 = load i32, i32* @COMSTAT, align 4
  %43 = load i32, i32* @COMSTAT_MASK, align 4
  %44 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %41, i32 %42, i32 %43)
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %46 = load i32, i32* @CHIMINTEN, align 4
  %47 = load i32, i32* @RST_CHIMINTEN, align 4
  %48 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %45, i32 %46, i32 %47)
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %50 = load i32, i32* @CHIMINT, align 4
  %51 = load i32, i32* @CHIMINT_MASK, align 4
  %52 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %49, i32 %50, i32 %51)
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %54 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.asd_dma_tok* @asd_alloc_coherent(%struct.asd_ha_struct* %53, i32 %54, i32 %55)
  store %struct.asd_dma_tok* %56, %struct.asd_dma_tok** %14, align 8
  %57 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %14, align 8
  %58 = icmp ne %struct.asd_dma_tok* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %30
  %60 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  br label %183

63:                                               ; preds = %30
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %148, %63
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %151

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sub nsw i32 %71, %74
  %76 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %14, align 8
  %79 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64*, i64** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @MAX_DMA_OVLY_COUNT, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %81, i64 %85
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @memcpy(i32 %80, i64* %86, i32 %87)
  %89 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %90 = load i32, i32* @OVLYDMAADR, align 4
  %91 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %14, align 8
  %92 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %89, i32 %90, i32 %93)
  %95 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %96 = load i32, i32* @OVLYDMACNT, align 4
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %95, i32 %96, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %70
  %102 = load i32, i32* @RESETOVLYDMA, align 4
  br label %104

103:                                              ; preds = %70
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @STARTOVLYDMA, align 4
  %107 = load i32, i32* @OVLYHALTERR, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %115, 8
  br label %119

117:                                              ; preds = %104
  %118 = load i32, i32* @OVLYCSEQ, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %116, %113 ], [ %118, %117 ]
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %124 = load i32, i32* @OVLYDMACTL, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %123, i32 %124, i32 %125)
  %127 = load i32, i32* @PAUSE_TRIES, align 4
  %128 = mul nsw i32 %127, 100
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %144, %119
  %130 = load i32, i32* %16, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %134 = load i32, i32* @OVLYDMACTL, align 4
  %135 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %133, i32 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @OVLYDMAACT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %147

141:                                              ; preds = %132
  %142 = load i32, i32* @PAUSE_DELAY, align 4
  %143 = call i32 @udelay(i32 %142)
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %16, align 4
  br label %129

147:                                              ; preds = %140, %129
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %66

151:                                              ; preds = %66
  %152 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %153 = load i32, i32* @COMSTAT, align 4
  %154 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %152, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @OVLYDMADONE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @OVLYERR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %166 = load i32, i32* @CHIMINT, align 4
  %167 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %165, i32 %166)
  %168 = load i32, i32* @DEVEXCEPT_MASK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164, %159, %151
  %172 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %173 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pci_name(i32 %174)
  %176 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %171, %164
  %180 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %181 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %14, align 8
  %182 = call i32 @asd_free_coherent(%struct.asd_ha_struct* %180, %struct.asd_dma_tok* %181)
  br label %183

183:                                              ; preds = %179, %59
  %184 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %185 = load i32, i32* @COMSTATEN, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %184, i32 %185, i32 %186)
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %197

191:                                              ; preds = %183
  %192 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %193 = load i64*, i64** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @asd_verify_seq(%struct.asd_ha_struct* %192, i64* %193, i32 %194, i64 %195)
  br label %197

197:                                              ; preds = %191, %190
  %198 = phi i32 [ %188, %190 ], [ %196, %191 ]
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %28
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @asd_printk(i8*, ...) #1

declare dso_local i32 @asd_pause_cseq(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_pause_lseq(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local %struct.asd_dma_tok* @asd_alloc_coherent(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_free_coherent(%struct.asd_ha_struct*, %struct.asd_dma_tok*) #1

declare dso_local i32 @asd_verify_seq(%struct.asd_ha_struct*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
