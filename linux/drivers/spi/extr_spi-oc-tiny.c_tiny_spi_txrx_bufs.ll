; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.tiny_spi = type { i64, i32, i64, i32, i64, i32*, i64, i32* }

@TINY_SPI_TXDATA = common dso_local global i64 0, align 8
@TINY_SPI_STATUS_TXR = common dso_local global i32 0, align 4
@TINY_SPI_STATUS = common dso_local global i64 0, align 8
@TINY_SPI_STATUS_TXE = common dso_local global i32 0, align 4
@TINY_SPI_RXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @tiny_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiny_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.tiny_spi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device* %9)
  store %struct.tiny_spi* %10, %struct.tiny_spi** %5, align 8
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %18 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %134

21:                                               ; preds = %2
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %26 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %31 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %36 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %35, i32 0, i32 7
  store i32* %34, i32** %36, align 8
  %37 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %38 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %40 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %99

45:                                               ; preds = %21
  %46 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %47 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %52 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %52, align 8
  %55 = load i32, i32* %53, align 4
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %55, %50 ], [ 0, %56 ]
  %59 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %60 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writeb(i32 %58, i64 %63)
  %65 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %66 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %70 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %75 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %75, align 8
  %78 = load i32, i32* %76, align 4
  br label %80

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %78, %73 ], [ 0, %79 ]
  %82 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %83 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb(i32 %81, i64 %86)
  %88 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %89 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* @TINY_SPI_STATUS_TXR, align 4
  %93 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %94 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TINY_SPI_STATUS, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writeb(i32 %92, i64 %97)
  br label %130

99:                                               ; preds = %21
  %100 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %101 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %106 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %106, align 8
  %109 = load i32, i32* %107, align 4
  br label %111

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %104
  %112 = phi i32 [ %109, %104 ], [ 0, %110 ]
  %113 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %114 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writeb(i32 %112, i64 %117)
  %119 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %120 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* @TINY_SPI_STATUS_TXE, align 4
  %124 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %125 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TINY_SPI_STATUS, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writeb(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %111, %80
  %131 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %132 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %131, i32 0, i32 3
  %133 = call i32 @wait_for_completion(i32* %132)
  br label %217

134:                                              ; preds = %2
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %6, align 8
  %140 = load i32, i32* %138, align 4
  br label %142

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i32 [ %140, %137 ], [ 0, %141 ]
  %144 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %145 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writeb(i32 %143, i64 %148)
  store i32 1, i32* %8, align 4
  br label %150

150:                                              ; preds = %198, %142
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %153 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %201

156:                                              ; preds = %150
  %157 = load i32*, i32** %6, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %6, align 8
  %162 = load i32, i32* %160, align 4
  br label %164

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i32 [ %162, %159 ], [ 0, %163 ]
  %166 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %167 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writeb(i32 %165, i64 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %177 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = icmp ne i32 %175, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174, %164
  %182 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %183 = call i32 @tiny_spi_wait_txr(%struct.tiny_spi* %182)
  br label %184

184:                                              ; preds = %181, %174
  %185 = load i32*, i32** %7, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %189 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TINY_SPI_TXDATA, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i8* @readb(i64 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %7, align 8
  store i32 %194, i32* %195, align 4
  br label %197

197:                                              ; preds = %187, %184
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %150

201:                                              ; preds = %150
  %202 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %203 = call i32 @tiny_spi_wait_txe(%struct.tiny_spi* %202)
  %204 = load i32*, i32** %7, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %208 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @TINY_SPI_RXDATA, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i8* @readb(i64 %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %7, align 8
  store i32 %213, i32* %214, align 4
  br label %216

216:                                              ; preds = %206, %201
  br label %217

217:                                              ; preds = %216, %130
  %218 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %219 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  ret i32 %220
}

declare dso_local %struct.tiny_spi* @tiny_spi_to_hw(%struct.spi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @tiny_spi_wait_txr(%struct.tiny_spi*) #1

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @tiny_spi_wait_txe(%struct.tiny_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
