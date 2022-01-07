; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"NinjaSCSI-32 status\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Driver version:        %s, $Revision: 1.33 $\0A\00", align 1
@nsp32_release_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"SCSI host No.:         %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"IRQ:                   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"sg_tablesize:          %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Chip revision:         0x%x\0A\00", align 1
@INDEX_REG = common dso_local global i32 0, align 4
@CHIP_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"OEM:                   %ld, %s\0A\00", align 1
@OEM0 = common dso_local global i8 0, align 1
@OEM1 = common dso_local global i8 0, align 1
@nsp32_model = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SDTR status\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"id %d: \00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"----- NinjaSCSI-32 host adapter\0A\00", align 1
@SDTR_DONE = common dso_local global i64 0, align 8
@ASYNC_OFFSET = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" sync\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c" transfer %d.%dMB/s, offset %d\00", align 1
@OPTF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @nsp32_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %6, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 @seq_puts(%struct.seq_file* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i32, i32* @nsp32_release_version, align 4
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = sub nsw i64 %47, 1
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %39, i64 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = sub nsw i64 %61, 1
  %63 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %53, i64 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @INDEX_REG, align 4
  %72 = call i32 @nsp32_read2(i32 %70, i32 %71)
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @CHIP_MODE, align 4
  %78 = call zeroext i8 @nsp32_index_read1(i32 %76, i32 %77)
  store i8 %78, i8* %9, align 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %12, align 8
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load i8, i8* %9, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @OEM0, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @OEM1, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = and i32 %86, %91
  %93 = load i32*, i32** @nsp32_model, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = call i32 @seq_puts(%struct.seq_file* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %212, %2
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %117)
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %215

120:                                              ; preds = %113
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %126 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = call i32 @seq_puts(%struct.seq_file* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %212

132:                                              ; preds = %120
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SDTR_DONE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %132
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %143
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ASYNC_OFFSET, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = call i32 @seq_puts(%struct.seq_file* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %170

167:                                              ; preds = %153, %143
  %168 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %169 = call i32 @seq_puts(%struct.seq_file* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %164
  br label %174

171:                                              ; preds = %132
  %172 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %173 = call i32 @seq_puts(%struct.seq_file* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %170
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %174
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 4
  %194 = sdiv i32 1000000, %193
  store i32 %194, i32* %11, align 4
  %195 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sdiv i32 %196, 1000
  %198 = load i32, i32* %11, align 4
  %199 = srem i32 %198, 1000
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %197, i32 %199, i64 %207)
  br label %209

209:                                              ; preds = %184, %174
  %210 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %211 = call i32 @seq_putc(%struct.seq_file* %210, i8 signext 10)
  br label %212

212:                                              ; preds = %209, %129
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %113

215:                                              ; preds = %113
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @nsp32_read2(i32, i32) #1

declare dso_local zeroext i8 @nsp32_index_read1(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
