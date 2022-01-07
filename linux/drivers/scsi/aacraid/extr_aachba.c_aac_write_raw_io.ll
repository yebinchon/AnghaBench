; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_raw_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_raw_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_raw_io2 = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.aac_raw_io = type { %struct.TYPE_6__, i64, i64, i8*, i8*, i8*, i8** }
%struct.TYPE_6__ = type { i32 }

@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@AAC_COMM_MESSAGE_TYPE3 = common dso_local global i64 0, align 8
@aac_cache = common dso_local global i32 0, align 4
@RIO2_IO_TYPE_WRITE = common dso_local global i64 0, align 8
@RIO2_IO_SUREWRITE = common dso_local global i64 0, align 8
@ContainerRawIo2 = common dso_local global i32 0, align 4
@RIO_TYPE_WRITE = common dso_local global i64 0, align 8
@RIO_SUREWRITE = common dso_local global i64 0, align 8
@ContainerRawIo = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_raw_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_raw_io(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aac_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.aac_raw_io2*, align 8
  %17 = alloca %struct.aac_raw_io*, align 8
  store %struct.fib* %0, %struct.fib** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.fib*, %struct.fib** %7, align 8
  %19 = getelementptr inbounds %struct.fib, %struct.fib* %18, i32 0, i32 0
  %20 = load %struct.aac_dev*, %struct.aac_dev** %19, align 8
  store %struct.aac_dev* %20, %struct.aac_dev** %12, align 8
  %21 = load %struct.fib*, %struct.fib** %7, align 8
  %22 = call i32 @aac_fib_init(%struct.fib* %21)
  %23 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %5
  %29 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %30 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %128

34:                                               ; preds = %28, %5
  %35 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %36 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %128, label %39

39:                                               ; preds = %34
  %40 = load %struct.fib*, %struct.fib** %7, align 8
  %41 = call i64 @fib_data(%struct.fib* %40)
  %42 = inttoptr i64 %41 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %42, %struct.aac_raw_io2** %16, align 8
  %43 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %44 = call i32 @memset(%struct.aac_raw_io2* %43, i32 0, i32 48)
  %45 = load i32, i32* %9, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %48 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, -4294967296
  %52 = lshr i64 %51, 32
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %56 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %59 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %62 = call i64 @scmd_id(%struct.scsi_cmnd* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %57, %65
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %69 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = call i64 @scmd_id(%struct.scsi_cmnd* %70)
  %72 = call i8* @cpu_to_le16(i64 %71)
  %73 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %74 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %39
  %78 = load i32, i32* @aac_cache, align 4
  %79 = and i32 %78, 5
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* @aac_cache, align 4
  %83 = and i32 %82, 5
  %84 = icmp ne i32 %83, 5
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load %struct.fib*, %struct.fib** %7, align 8
  %87 = getelementptr inbounds %struct.fib, %struct.fib* %86, i32 0, i32 0
  %88 = load %struct.aac_dev*, %struct.aac_dev** %87, align 8
  %89 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85, %81
  %93 = load i64, i64* @RIO2_IO_TYPE_WRITE, align 8
  %94 = load i64, i64* @RIO2_IO_SUREWRITE, align 8
  %95 = or i64 %93, %94
  %96 = call i8* @cpu_to_le16(i64 %95)
  br label %100

97:                                               ; preds = %85, %77, %39
  %98 = load i64, i64* @RIO2_IO_TYPE_WRITE, align 8
  %99 = call i8* @cpu_to_le16(i64 %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi i8* [ %96, %92 ], [ %99, %97 ]
  %102 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %103 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %105 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %106 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %107 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @aac_build_sgraw2(%struct.scsi_cmnd* %104, %struct.aac_raw_io2* %105, i32 %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = load i64, i64* %15, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  br label %242

117:                                              ; preds = %100
  %118 = load i32, i32* @ContainerRawIo2, align 4
  store i32 %118, i32* %14, align 4
  %119 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %16, align 8
  %120 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @le32_to_cpu(i32 %121)
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = add i64 48, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %13, align 4
  br label %220

128:                                              ; preds = %34, %28
  %129 = load %struct.fib*, %struct.fib** %7, align 8
  %130 = call i64 @fib_data(%struct.fib* %129)
  %131 = inttoptr i64 %130 to %struct.aac_raw_io*
  store %struct.aac_raw_io* %131, %struct.aac_raw_io** %17, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %135 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %134, i32 0, i32 6
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  store i8* %133, i8** %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = and i64 %139, -4294967296
  %141 = lshr i64 %140, 32
  %142 = trunc i64 %141 to i32
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %145 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %144, i32 0, i32 6
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  store i8* %143, i8** %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %150 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %149, i32 0, i32 3
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %153 = call i64 @scmd_id(%struct.scsi_cmnd* %152)
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %148, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %160 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %162 = call i64 @scmd_id(%struct.scsi_cmnd* %161)
  %163 = call i8* @cpu_to_le16(i64 %162)
  %164 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %165 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %128
  %169 = load i32, i32* @aac_cache, align 4
  %170 = and i32 %169, 5
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load i32, i32* @aac_cache, align 4
  %174 = and i32 %173, 5
  %175 = icmp ne i32 %174, 5
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load %struct.fib*, %struct.fib** %7, align 8
  %178 = getelementptr inbounds %struct.fib, %struct.fib* %177, i32 0, i32 0
  %179 = load %struct.aac_dev*, %struct.aac_dev** %178, align 8
  %180 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %176, %172
  %184 = load i64, i64* @RIO_TYPE_WRITE, align 8
  %185 = load i64, i64* @RIO_SUREWRITE, align 8
  %186 = or i64 %184, %185
  %187 = call i8* @cpu_to_le16(i64 %186)
  br label %191

188:                                              ; preds = %176, %168, %128
  %189 = load i64, i64* @RIO_TYPE_WRITE, align 8
  %190 = call i8* @cpu_to_le16(i64 %189)
  br label %191

191:                                              ; preds = %188, %183
  %192 = phi i8* [ %187, %183 ], [ %190, %188 ]
  %193 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %194 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  %195 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %196 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %198 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %200 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %201 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %200, i32 0, i32 0
  %202 = call i64 @aac_build_sgraw(%struct.scsi_cmnd* %199, %struct.TYPE_6__* %201)
  store i64 %202, i64* %15, align 8
  %203 = load i64, i64* %15, align 8
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %191
  %206 = load i64, i64* %15, align 8
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %6, align 4
  br label %242

208:                                              ; preds = %191
  %209 = load i32, i32* @ContainerRawIo, align 4
  store i32 %209, i32* %14, align 4
  %210 = load %struct.aac_raw_io*, %struct.aac_raw_io** %17, align 8
  %211 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = add i64 56, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %208, %117
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = load %struct.fib*, %struct.fib** %7, align 8
  %224 = getelementptr inbounds %struct.fib, %struct.fib* %223, i32 0, i32 0
  %225 = load %struct.aac_dev*, %struct.aac_dev** %224, align 8
  %226 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = sub i64 %228, 4
  %230 = icmp ugt i64 %222, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @BUG_ON(i32 %231)
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.fib*, %struct.fib** %7, align 8
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* @FsaNormal, align 4
  %237 = load i64, i64* @io_callback, align 8
  %238 = trunc i64 %237 to i32
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %240 = bitcast %struct.scsi_cmnd* %239 to i8*
  %241 = call i32 @aac_fib_send(i32 %233, %struct.fib* %234, i32 %235, i32 %236, i32 0, i32 1, i32 %238, i8* %240)
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %220, %205, %114
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @memset(%struct.aac_raw_io2*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @aac_build_sgraw2(%struct.scsi_cmnd*, %struct.aac_raw_io2*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @aac_build_sgraw(%struct.scsi_cmnd*, %struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
