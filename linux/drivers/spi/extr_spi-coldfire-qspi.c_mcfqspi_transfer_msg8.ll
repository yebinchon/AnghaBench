; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_transfer_msg8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_transfer_msg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcfqspi = type { i32 }

@MCFQSPI_QAR_CMDBUF = common dso_local global i64 0, align 8
@MCFQSPI_QCR_BITSE = common dso_local global i32 0, align 4
@MCFQSPI_QAR_TXBUF = common dso_local global i64 0, align 8
@MCFQSPI_QDLYR_SPE = common dso_local global i32 0, align 4
@MCFQSPI_QAR_RXBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcfqspi*, i32, i32*, i32*)* @mcfqspi_transfer_msg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcfqspi_transfer_msg8(%struct.mcfqspi* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mcfqspi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mcfqspi* %0, %struct.mcfqspi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @min(i32 %13, i32 16)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %16 = load i64, i64* @MCFQSPI_QAR_CMDBUF, align 8
  %17 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %15, i64 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %26, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %24 = load i32, i32* @MCFQSPI_QCR_BITSE, align 4
  %25 = call i32 @mcfqspi_wr_qdr(%struct.mcfqspi* %23, i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %31 = load i64, i64* @MCFQSPI_QAR_TXBUF, align 8
  %32 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %30, i64 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i32 @mcfqspi_wr_qdr(%struct.mcfqspi* %41, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %36

49:                                               ; preds = %36
  br label %62

50:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %58, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %57 = call i32 @mcfqspi_wr_qdr(%struct.mcfqspi* %56, i32 0)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %51

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %196

68:                                               ; preds = %62
  store i32 3848, i32* %12, align 4
  %69 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %70 = call i32 @mcfqspi_wr_qwr(%struct.mcfqspi* %69, i32 1792)
  %71 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %72 = load i32, i32* @MCFQSPI_QDLYR_SPE, align 4
  %73 = call i32 @mcfqspi_wr_qdlyr(%struct.mcfqspi* %71, i32 %72)
  br label %74

74:                                               ; preds = %152, %68
  %75 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %76 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %79 = call i32 @mcfqspi_qdlyr_spe(%struct.mcfqspi* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @wait_event(i32 %77, i32 %82)
  %84 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @mcfqspi_wr_qwr(%struct.mcfqspi* %84, i32 %85)
  %87 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %88 = load i32, i32* @MCFQSPI_QDLYR_SPE, align 4
  %89 = call i32 @mcfqspi_wr_qdlyr(%struct.mcfqspi* %87, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %74
  %93 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %94 = load i64, i64* @MCFQSPI_QAR_RXBUF, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %93, i64 %97)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %108, %92
  %100 = load i32, i32* %9, align 4
  %101 = icmp ult i32 %100, 8
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %104 = call i8* @mcfqspi_rd_qdr(%struct.mcfqspi* %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %99

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %74
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @min(i32 %113, i32 8)
  store i32 %114, i32* %10, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %119 = load i64, i64* @MCFQSPI_QAR_TXBUF, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %118, i64 %122)
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %134, %117
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %7, align 8
  %132 = load i32, i32* %130, align 4
  %133 = call i32 @mcfqspi_wr_qdr(%struct.mcfqspi* %129, i32 %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %124

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 2056, i32 0
  %143 = load i32, i32* %10, align 4
  %144 = sub i32 %143, 1
  %145 = shl i32 %144, 8
  %146 = add i32 %142, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = xor i32 %147, 8
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %74, label %155

155:                                              ; preds = %152
  %156 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %157 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %160 = call i32 @mcfqspi_qdlyr_spe(%struct.mcfqspi* %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @wait_event(i32 %158, i32 %163)
  %165 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @mcfqspi_wr_qwr(%struct.mcfqspi* %165, i32 %166)
  %168 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %169 = load i32, i32* @MCFQSPI_QDLYR_SPE, align 4
  %170 = call i32 @mcfqspi_wr_qdlyr(%struct.mcfqspi* %168, i32 %169)
  %171 = load i32*, i32** %8, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %195

173:                                              ; preds = %155
  %174 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %175 = load i64, i64* @MCFQSPI_QAR_RXBUF, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %174, i64 %178)
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %189, %173
  %181 = load i32, i32* %9, align 4
  %182 = icmp ult i32 %181, 8
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %185 = call i8* @mcfqspi_rd_qdr(%struct.mcfqspi* %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %8, align 8
  store i32 %186, i32* %187, align 4
  br label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %9, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %180

192:                                              ; preds = %180
  %193 = load i32, i32* %11, align 4
  %194 = xor i32 %193, 8
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %192, %155
  br label %205

196:                                              ; preds = %62
  %197 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sub i32 %198, 1
  %200 = shl i32 %199, 8
  %201 = call i32 @mcfqspi_wr_qwr(%struct.mcfqspi* %197, i32 %200)
  %202 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %203 = load i32, i32* @MCFQSPI_QDLYR_SPE, align 4
  %204 = call i32 @mcfqspi_wr_qdlyr(%struct.mcfqspi* %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %195
  %206 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %207 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %210 = call i32 @mcfqspi_qdlyr_spe(%struct.mcfqspi* %209)
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @wait_event(i32 %208, i32 %213)
  %215 = load i32*, i32** %8, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %238

217:                                              ; preds = %205
  %218 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %219 = load i64, i64* @MCFQSPI_QAR_RXBUF, align 8
  %220 = load i32, i32* %11, align 4
  %221 = zext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = call i32 @mcfqspi_wr_qar(%struct.mcfqspi* %218, i64 %222)
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %234, %217
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %230 = call i8* @mcfqspi_rd_qdr(%struct.mcfqspi* %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load i32*, i32** %8, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %8, align 8
  store i32 %231, i32* %232, align 4
  br label %234

234:                                              ; preds = %228
  %235 = load i32, i32* %9, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %224

237:                                              ; preds = %224
  br label %238

238:                                              ; preds = %237, %205
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mcfqspi_wr_qar(%struct.mcfqspi*, i64) #1

declare dso_local i32 @mcfqspi_wr_qdr(%struct.mcfqspi*, i32) #1

declare dso_local i32 @mcfqspi_wr_qwr(%struct.mcfqspi*, i32) #1

declare dso_local i32 @mcfqspi_wr_qdlyr(%struct.mcfqspi*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mcfqspi_qdlyr_spe(%struct.mcfqspi*) #1

declare dso_local i8* @mcfqspi_rd_qdr(%struct.mcfqspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
