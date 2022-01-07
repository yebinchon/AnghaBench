; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_setIqkMatrix_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_setIqkMatrix_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32 }

@OFDM_TABLE_SIZE = common dso_local global i64 0, align 8
@OFDMSwingTable_New = common dso_local global i32* null, align 8
@ODM_BAND_2_4G = common dso_local global i64 0, align 8
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rOFDM0_XCTxAFE = common dso_local global i32 0, align 4
@bMaskH4Bits = common dso_local global i32 0, align 4
@rOFDM0_ECCAThreshold = common dso_local global i32 0, align 4
@BIT24 = common dso_local global i32 0, align 4
@rOFDM0_XBTxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_XDTxAFE = common dso_local global i32 0, align 4
@BIT28 = common dso_local global i32 0, align 4
@ODM_COMP_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"TxPwrTracking path B: X = 0x%x, Y = 0x%x ele_A = 0x%x ele_C = 0x%x ele_D = 0x%x 0xeb4 = 0x%x 0xebc = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i64, i64, i64)* @setIqkMatrix_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setIqkMatrix_8723B(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @OFDM_TABLE_SIZE, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i64, i64* @OFDM_TABLE_SIZE, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32*, i32** @OFDMSwingTable_New, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -4194304
  %27 = lshr i32 %26, 22
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %148

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ODM_BAND_2_4G, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %39, 512
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, 4294966272
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = mul nsw i64 %46, %47
  %49 = ashr i64 %48, 8
  %50 = and i64 %49, 1023
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, 512
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i64, i64* %10, align 8
  %56 = or i64 %55, 4294966272
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = mul nsw i64 %58, %59
  %61 = ashr i64 %60, 8
  %62 = and i64 %61, 1023
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %8, align 8
  switch i64 %63, label %146 [
    i64 129, label %64
    i64 128, label %105
  ]

64:                                               ; preds = %57
  %65 = load i64, i64* %12, align 8
  %66 = shl i64 %65, 22
  %67 = load i64, i64* %13, align 8
  %68 = and i64 %67, 63
  %69 = shl i64 %68, 16
  %70 = or i64 %66, %69
  %71 = load i64, i64* %11, align 8
  %72 = or i64 %70, %71
  store i64 %72, i64* %14, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %77 = load i32, i32* @bMaskDWord, align 4
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @PHY_SetBBReg(i32 %75, i32 %76, i32 %77, i32 %79)
  %81 = load i64, i64* %13, align 8
  %82 = and i64 %81, 960
  %83 = ashr i64 %82, 6
  store i64 %83, i64* %14, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @rOFDM0_XCTxAFE, align 4
  %88 = load i32, i32* @bMaskH4Bits, align 4
  %89 = load i64, i64* %14, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @PHY_SetBBReg(i32 %86, i32 %87, i32 %88, i32 %90)
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = mul nsw i64 %92, %93
  %95 = ashr i64 %94, 7
  %96 = and i64 %95, 1
  store i64 %96, i64* %14, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %101 = load i32, i32* @BIT24, align 4
  %102 = load i64, i64* %14, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @PHY_SetBBReg(i32 %99, i32 %100, i32 %101, i32 %103)
  br label %147

105:                                              ; preds = %57
  %106 = load i64, i64* %12, align 8
  %107 = shl i64 %106, 22
  %108 = load i64, i64* %13, align 8
  %109 = and i64 %108, 63
  %110 = shl i64 %109, 16
  %111 = or i64 %107, %110
  %112 = load i64, i64* %11, align 8
  %113 = or i64 %111, %112
  store i64 %113, i64* %14, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @rOFDM0_XBTxIQImbalance, align 4
  %118 = load i32, i32* @bMaskDWord, align 4
  %119 = load i64, i64* %14, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @PHY_SetBBReg(i32 %116, i32 %117, i32 %118, i32 %120)
  %122 = load i64, i64* %13, align 8
  %123 = and i64 %122, 960
  %124 = ashr i64 %123, 6
  store i64 %124, i64* %14, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @rOFDM0_XDTxAFE, align 4
  %129 = load i32, i32* @bMaskH4Bits, align 4
  %130 = load i64, i64* %14, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @PHY_SetBBReg(i32 %127, i32 %128, i32 %129, i32 %131)
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %12, align 8
  %135 = mul nsw i64 %133, %134
  %136 = ashr i64 %135, 7
  %137 = and i64 %136, 1
  store i64 %137, i64* %14, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %142 = load i32, i32* @BIT28, align 4
  %143 = load i64, i64* %14, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @PHY_SetBBReg(i32 %140, i32 %141, i32 %142, i32 %144)
  br label %147

146:                                              ; preds = %57
  br label %147

147:                                              ; preds = %146, %105, %64
  br label %198

148:                                              ; preds = %31, %21
  %149 = load i64, i64* %8, align 8
  switch i64 %149, label %196 [
    i64 129, label %150
    i64 128, label %173
  ]

150:                                              ; preds = %148
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %155 = load i32, i32* @bMaskDWord, align 4
  %156 = load i32*, i32** @OFDMSwingTable_New, align 8
  %157 = load i64, i64* %7, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @PHY_SetBBReg(i32 %153, i32 %154, i32 %155, i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @rOFDM0_XCTxAFE, align 4
  %165 = load i32, i32* @bMaskH4Bits, align 4
  %166 = call i32 @PHY_SetBBReg(i32 %163, i32 %164, i32 %165, i32 0)
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %171 = load i32, i32* @BIT24, align 4
  %172 = call i32 @PHY_SetBBReg(i32 %169, i32 %170, i32 %171, i32 0)
  br label %197

173:                                              ; preds = %148
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @rOFDM0_XBTxIQImbalance, align 4
  %178 = load i32, i32* @bMaskDWord, align 4
  %179 = load i32*, i32** @OFDMSwingTable_New, align 8
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @PHY_SetBBReg(i32 %176, i32 %177, i32 %178, i32 %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @rOFDM0_XDTxAFE, align 4
  %188 = load i32, i32* @bMaskH4Bits, align 4
  %189 = call i32 @PHY_SetBBReg(i32 %186, i32 %187, i32 %188, i32 0)
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %194 = load i32, i32* @BIT28, align 4
  %195 = call i32 @PHY_SetBBReg(i32 %192, i32 %193, i32 %194, i32 0)
  br label %197

196:                                              ; preds = %148
  br label %197

197:                                              ; preds = %196, %173, %150
  br label %198

198:                                              ; preds = %197, %147
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %201 = load i32, i32* @ODM_DBG_LOUD, align 4
  %202 = load i64, i64* %9, align 8
  %203 = trunc i64 %202 to i32
  %204 = load i64, i64* %10, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i64, i64* %11, align 8
  %207 = trunc i64 %206 to i32
  %208 = load i64, i64* %13, align 8
  %209 = trunc i64 %208 to i32
  %210 = load i64, i64* %12, align 8
  %211 = trunc i64 %210 to i32
  %212 = load i64, i64* %9, align 8
  %213 = trunc i64 %212 to i32
  %214 = load i64, i64* %10, align 8
  %215 = trunc i64 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %199, i32 %200, i32 %201, i8* %217)
  ret void
}

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
