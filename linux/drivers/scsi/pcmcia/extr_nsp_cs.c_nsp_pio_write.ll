; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_pio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_pio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@NSP_DEBUG_DATA_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"in fifocount=%d ptr=0x%p this_residual=%d buffers=0x%p nbuf=%d resid=0x%x\00", align 1
@SCSIBUSMON = common dso_local global i32 0, align 4
@BUSMON_PHASE_MASK = common dso_local global i8 0, align 1
@BUSPHASE_DATA_OUT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"phase changed stat=0x%x, res=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"wait for all data out. ocount=0x%x res=%d\00", align 1
@WFIFO_CRIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown write mode\00", align 1
@BUFFER_ADDR = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"pio write timeout resid=0x%x\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"write ocount=0x%x\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"w cmd=%d resid=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp_pio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_pio_write(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %56 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %55)
  %57 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %35, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i64 %46, %struct.TYPE_11__* %50, i64 %54, i32 %56)
  store i32 1000, i32* %6, align 4
  br label %58

58:                                               ; preds = %244, %129, %1
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ true, %62 ], [ %73, %68 ]
  br label %76

76:                                               ; preds = %74, %58
  %77 = phi i1 [ false, %58 ], [ %75, %74 ]
  br i1 %77, label %78, label %245

78:                                               ; preds = %76
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SCSIBUSMON, align 4
  %81 = call zeroext i8 @nsp_index_read(i32 %79, i32 %80)
  store i8 %81, i8* %9, align 1
  %82 = load i8, i8* @BUSMON_PHASE_MASK, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %9, align 1
  %88 = load i8, i8* %9, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @BUSPHASE_DATA_OUT, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %78
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %96 = call i32 @nsp_fifo_count(%struct.scsi_cmnd* %95)
  %97 = sub nsw i32 %94, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %99 = load i8, i8* %9, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @nsp_inc_resid(%struct.scsi_cmnd* %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, %106
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %113
  store i64 %118, i64* %116, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %245

122:                                              ; preds = %78
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %125 = call i32 @nsp_fifo_count(%struct.scsi_cmnd* %124)
  %126 = sub nsw i32 %123, %125
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132)
  br label %58

134:                                              ; preds = %122
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @WFIFO_CRIT, align 4
  %140 = call i32 @min(i64 %138, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %182 [
    i32 130, label %144
    i32 129, label %159
    i32 128, label %167
  ]

144:                                              ; preds = %134
  %145 = call i32 @BIT(i32 1)
  %146 = call i32 @BIT(i32 0)
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %8, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = ashr i32 %156, 2
  %158 = call i32 @nsp_fifo32_write(i32 %151, i32 %155, i32 %157)
  br label %185

159:                                              ; preds = %134
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %162 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @nsp_fifo8_write(i32 %160, i32 %164, i32 %165)
  br label %185

167:                                              ; preds = %134
  %168 = call i32 @BIT(i32 1)
  %169 = call i32 @BIT(i32 0)
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %8, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i64, i64* %4, align 8
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %176 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = ashr i32 %179, 2
  %181 = call i32 @nsp_mmio_fifo32_write(i64 %174, i32 %178, i32 %180)
  br label %185

182:                                              ; preds = %134
  %183 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %184 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %167, %159, %144
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 0, %187
  %189 = call i32 @nsp_inc_resid(%struct.scsi_cmnd* %186, i32 %188)
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %192 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, %190
  store i32 %195, i32* %193, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %201, %197
  store i64 %202, i64* %200, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %207 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %185
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %211
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %221, -1
  store i64 %222, i64* %220, align 8
  %223 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %224 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = call %struct.TYPE_11__* @sg_next(%struct.TYPE_11__* %226)
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %229 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 3
  store %struct.TYPE_11__* %227, %struct.TYPE_11__** %230, align 8
  %231 = load i32, i32* @BUFFER_ADDR, align 4
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %233 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 8
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  store i64 %240, i64* %243, align 8
  store i32 1000, i32* %6, align 4
  br label %244

244:                                              ; preds = %217, %211, %185
  br label %58

245:                                              ; preds = %93, %76
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load i32, i32* @KERN_DEBUG, align 4
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %254 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %253)
  %255 = call i32 @nsp_msg(i32 %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %251, %245
  %257 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %258 = load i32, i32* %7, align 4
  %259 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %257, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @NSP_DEBUG_DATA_IO, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %265 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %264)
  %266 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %260, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %263, i32 %265)
  ret void
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @nsp_index_read(i32, i32) #1

declare dso_local i32 @nsp_fifo_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp_inc_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nsp_fifo32_write(i32, i32, i32) #1

declare dso_local i32 @nsp_fifo8_write(i32, i32, i32) #1

declare dso_local i32 @nsp_mmio_fifo32_write(i64, i32, i32) #1

declare dso_local %struct.TYPE_11__* @sg_next(%struct.TYPE_11__*) #1

declare dso_local i32 @nsp_msg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
