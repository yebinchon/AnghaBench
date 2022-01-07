; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_echo_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_dv_device_echo_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@WRITE_BUFFER = common dso_local global i32 0, align 4
@READ_BUFFER = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SDEV_QUIESCE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@SPI_COMPARE_SKIP_TEST = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Write Buffer failure %x\0A\00", align 1
@SPI_COMPARE_FAILURE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SPI_COMPARE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32*, i32*, i32)* @spi_dv_device_echo_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_dv_device_echo_buffer(%struct.scsi_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.scsi_sense_hdr, align 8
  %17 = alloca [10 x i8], align 1
  %18 = alloca [10 x i8], align 1
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  store i32 65535, i32* %15, align 4
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %31 = load i32, i32* @WRITE_BUFFER, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 10, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %39, align 1
  %43 = getelementptr inbounds i8, i8* %39, i64 1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %43, align 1
  %47 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %49 = load i32, i32* @READ_BUFFER, align 4
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %48, align 1
  %51 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 10, i8* %51, align 1
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %57, align 1
  %61 = getelementptr inbounds i8, i8* %57, i64 1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %61, align 1
  %65 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 0, i8* %65, align 1
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %159, %4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %160

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @min(i32 %73, i32 32)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %71

85:                                               ; preds = %71
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %105, %85
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 32
  %92 = call i32 @min(i32 %89, i32 %91)
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %19, align 8
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 2
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 65535
  %104 = load i32*, i32** %19, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %11, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %128, %108
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 32
  %115 = call i32 @min(i32 %112, i32 %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %20, align 8
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 2
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 21845, i32 43690
  %127 = load i32*, i32** %20, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %11, align 4
  br label %110

131:                                              ; preds = %110
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %156, %131
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 32
  %138 = call i32 @min(i32 %135, i32 %137)
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %133
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32* %144, i32** %21, align 8
  %145 = load i32, i32* %15, align 4
  %146 = and i32 %145, -2147483648
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32*, i32** %21, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %15, align 4
  %153 = shl i32 %152, 1
  %154 = load i32, i32* %22, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %140
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %11, align 4
  br label %133

159:                                              ; preds = %133
  br label %66

160:                                              ; preds = %66
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %226, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %229

165:                                              ; preds = %161
  %166 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %167 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %168 = load i32, i32* @DMA_TO_DEVICE, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @spi_execute(%struct.scsi_device* %166, i8* %167, i32 %168, i32* %169, i32 %170, %struct.scsi_sense_hdr* %16)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %165
  %175 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %176 = call i32 @scsi_device_online(%struct.scsi_device* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %205, label %178

178:                                              ; preds = %174, %165
  %179 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %180 = load i32, i32* @SDEV_QUIESCE, align 4
  %181 = call i32 @scsi_device_set_state(%struct.scsi_device* %179, i32 %180)
  %182 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %16)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %16, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %16, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 36
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %16, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @SPI_COMPARE_SKIP_TEST, align 4
  store i32 %198, i32* %5, align 4
  br label %231

199:                                              ; preds = %193, %189, %184, %178
  %200 = load i32, i32* @KERN_ERR, align 4
  %201 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @sdev_printk(i32 %200, %struct.scsi_device* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @SPI_COMPARE_FAILURE, align 4
  store i32 %204, i32* %5, align 4
  br label %231

205:                                              ; preds = %174
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @memset(i32* %206, i32 0, i32 %207)
  %209 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %210 = getelementptr inbounds [10 x i8], [10 x i8]* %18, i64 0, i64 0
  %211 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @spi_execute(%struct.scsi_device* %209, i8* %210, i32 %211, i32* %212, i32 %213, %struct.scsi_sense_hdr* null)
  %215 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %216 = load i32, i32* @SDEV_QUIESCE, align 4
  %217 = call i32 @scsi_device_set_state(%struct.scsi_device* %215, i32 %216)
  %218 = load i32*, i32** %7, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i64 @memcmp(i32* %218, i32* %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %205
  %224 = load i32, i32* @SPI_COMPARE_FAILURE, align 4
  store i32 %224, i32* %5, align 4
  br label %231

225:                                              ; preds = %205
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %161

229:                                              ; preds = %161
  %230 = load i32, i32* @SPI_COMPARE_SUCCESS, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %223, %199, %197
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
