; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSetRSPINF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSetRSPINF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64 }
%union.vnt_phy_field_swap = type { i32* }

@RATE_1M = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_1 = common dso_local global i64 0, align 8
@RATE_2M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_2 = common dso_local global i64 0, align 8
@RATE_5M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_5 = common dso_local global i64 0, align 8
@RATE_11M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_11 = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_6 = common dso_local global i64 0, align 8
@RATE_9M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_9 = common dso_local global i64 0, align 8
@RATE_12M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_12 = common dso_local global i64 0, align 8
@RATE_18M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_18 = common dso_local global i64 0, align 8
@RATE_24M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_24 = common dso_local global i64 0, align 8
@RATE_36M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_36 = common dso_local global i64 0, align 8
@RATE_48M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_48 = common dso_local global i64 0, align 8
@RATE_54M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_54 = common dso_local global i64 0, align 8
@MAC_REG_RSPINF_A_72 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSetRSPINF(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.vnt_phy_field_swap, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @MACvSelectPage1(i64 %15)
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %19 = load i32, i32* @RATE_1M, align 4
  %20 = call i32 @CARDwGetCCKControlRate(%struct.vnt_private* %18, i32 %19)
  %21 = load i32, i32* @PK_TYPE_11B, align 4
  %22 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %23 = call i32 @vnt_get_phy_field(%struct.vnt_private* %17, i32 14, i32 %20, i32 %21, i32* %22)
  %24 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @swap(i32 %27, i32 %31)
  %33 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAC_REG_RSPINF_B_1, align 8
  %37 = add nsw i64 %35, %36
  %38 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @VNSvOutPortD(i64 %37, i32 %39)
  %41 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %42 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %43 = load i32, i32* @RATE_2M, align 4
  %44 = call i32 @CARDwGetCCKControlRate(%struct.vnt_private* %42, i32 %43)
  %45 = load i32, i32* @PK_TYPE_11B, align 4
  %46 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %47 = call i32 @vnt_get_phy_field(%struct.vnt_private* %41, i32 14, i32 %44, i32 %45, i32* %46)
  %48 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @swap(i32 %51, i32 %55)
  %57 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAC_REG_RSPINF_B_2, align 8
  %61 = add nsw i64 %59, %60
  %62 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @VNSvOutPortD(i64 %61, i32 %63)
  %65 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %66 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %67 = load i32, i32* @RATE_5M, align 4
  %68 = call i32 @CARDwGetCCKControlRate(%struct.vnt_private* %66, i32 %67)
  %69 = load i32, i32* @PK_TYPE_11B, align 4
  %70 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %71 = call i32 @vnt_get_phy_field(%struct.vnt_private* %65, i32 14, i32 %68, i32 %69, i32* %70)
  %72 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @swap(i32 %75, i32 %79)
  %81 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %82 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAC_REG_RSPINF_B_5, align 8
  %85 = add nsw i64 %83, %84
  %86 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @VNSvOutPortD(i64 %85, i32 %87)
  %89 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %90 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %91 = load i32, i32* @RATE_11M, align 4
  %92 = call i32 @CARDwGetCCKControlRate(%struct.vnt_private* %90, i32 %91)
  %93 = load i32, i32* @PK_TYPE_11B, align 4
  %94 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %95 = call i32 @vnt_get_phy_field(%struct.vnt_private* %89, i32 14, i32 %92, i32 %93, i32* %94)
  %96 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.vnt_phy_field_swap* %5 to i32**
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @swap(i32 %99, i32 %103)
  %105 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %106 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAC_REG_RSPINF_B_11, align 8
  %109 = add nsw i64 %107, %108
  %110 = bitcast %union.vnt_phy_field_swap* %5 to i32*
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @VNSvOutPortD(i64 %109, i32 %111)
  %113 = load i32, i32* @RATE_6M, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @s_vCalculateOFDMRParameter(i32 %113, i32 %114, i8* %6, i8* %7)
  %116 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %117 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MAC_REG_RSPINF_A_6, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i8, i8* %6, align 1
  %122 = load i8, i8* %7, align 1
  %123 = call i32 @MAKEWORD(i8 zeroext %121, i8 zeroext %122)
  %124 = call i32 @VNSvOutPortW(i64 %120, i32 %123)
  %125 = load i32, i32* @RATE_9M, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @s_vCalculateOFDMRParameter(i32 %125, i32 %126, i8* %6, i8* %7)
  %128 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %129 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MAC_REG_RSPINF_A_9, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i8, i8* %6, align 1
  %134 = load i8, i8* %7, align 1
  %135 = call i32 @MAKEWORD(i8 zeroext %133, i8 zeroext %134)
  %136 = call i32 @VNSvOutPortW(i64 %132, i32 %135)
  %137 = load i32, i32* @RATE_12M, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @s_vCalculateOFDMRParameter(i32 %137, i32 %138, i8* %6, i8* %7)
  %140 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %141 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MAC_REG_RSPINF_A_12, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i8, i8* %6, align 1
  %146 = load i8, i8* %7, align 1
  %147 = call i32 @MAKEWORD(i8 zeroext %145, i8 zeroext %146)
  %148 = call i32 @VNSvOutPortW(i64 %144, i32 %147)
  %149 = load i32, i32* @RATE_18M, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @s_vCalculateOFDMRParameter(i32 %149, i32 %150, i8* %6, i8* %7)
  %152 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MAC_REG_RSPINF_A_18, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i8, i8* %6, align 1
  %158 = load i8, i8* %7, align 1
  %159 = call i32 @MAKEWORD(i8 zeroext %157, i8 zeroext %158)
  %160 = call i32 @VNSvOutPortW(i64 %156, i32 %159)
  %161 = load i32, i32* @RATE_24M, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @s_vCalculateOFDMRParameter(i32 %161, i32 %162, i8* %6, i8* %7)
  %164 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %165 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MAC_REG_RSPINF_A_24, align 8
  %168 = add nsw i64 %166, %167
  %169 = load i8, i8* %6, align 1
  %170 = load i8, i8* %7, align 1
  %171 = call i32 @MAKEWORD(i8 zeroext %169, i8 zeroext %170)
  %172 = call i32 @VNSvOutPortW(i64 %168, i32 %171)
  %173 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %174 = bitcast %struct.vnt_private* %173 to i8*
  %175 = load i32, i32* @RATE_36M, align 4
  %176 = call i32 @CARDwGetOFDMControlRate(i8* %174, i32 %175)
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @s_vCalculateOFDMRParameter(i32 %176, i32 %177, i8* %6, i8* %7)
  %179 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %180 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @MAC_REG_RSPINF_A_36, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i8, i8* %6, align 1
  %185 = load i8, i8* %7, align 1
  %186 = call i32 @MAKEWORD(i8 zeroext %184, i8 zeroext %185)
  %187 = call i32 @VNSvOutPortW(i64 %183, i32 %186)
  %188 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %189 = bitcast %struct.vnt_private* %188 to i8*
  %190 = load i32, i32* @RATE_48M, align 4
  %191 = call i32 @CARDwGetOFDMControlRate(i8* %189, i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @s_vCalculateOFDMRParameter(i32 %191, i32 %192, i8* %6, i8* %7)
  %194 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %195 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MAC_REG_RSPINF_A_48, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i8, i8* %6, align 1
  %200 = load i8, i8* %7, align 1
  %201 = call i32 @MAKEWORD(i8 zeroext %199, i8 zeroext %200)
  %202 = call i32 @VNSvOutPortW(i64 %198, i32 %201)
  %203 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %204 = bitcast %struct.vnt_private* %203 to i8*
  %205 = load i32, i32* @RATE_54M, align 4
  %206 = call i32 @CARDwGetOFDMControlRate(i8* %204, i32 %205)
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @s_vCalculateOFDMRParameter(i32 %206, i32 %207, i8* %6, i8* %7)
  %209 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %210 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @MAC_REG_RSPINF_A_54, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i8, i8* %6, align 1
  %215 = load i8, i8* %7, align 1
  %216 = call i32 @MAKEWORD(i8 zeroext %214, i8 zeroext %215)
  %217 = call i32 @VNSvOutPortW(i64 %213, i32 %216)
  %218 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %219 = bitcast %struct.vnt_private* %218 to i8*
  %220 = load i32, i32* @RATE_54M, align 4
  %221 = call i32 @CARDwGetOFDMControlRate(i8* %219, i32 %220)
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @s_vCalculateOFDMRParameter(i32 %221, i32 %222, i8* %6, i8* %7)
  %224 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %225 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @MAC_REG_RSPINF_A_72, align 8
  %228 = add nsw i64 %226, %227
  %229 = load i8, i8* %6, align 1
  %230 = load i8, i8* %7, align 1
  %231 = call i32 @MAKEWORD(i8 zeroext %229, i8 zeroext %230)
  %232 = call i32 @VNSvOutPortW(i64 %228, i32 %231)
  %233 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %234 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @MACvSelectPage0(i64 %235)
  %237 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %238 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %237, i32 0, i32 0
  %239 = load i64, i64* %8, align 8
  %240 = call i32 @spin_unlock_irqrestore(i32* %238, i64 %239)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i32 @CARDwGetCCKControlRate(%struct.vnt_private*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @s_vCalculateOFDMRParameter(i32, i32, i8*, i8*) #1

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @MAKEWORD(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @CARDwGetOFDMControlRate(i8*, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
