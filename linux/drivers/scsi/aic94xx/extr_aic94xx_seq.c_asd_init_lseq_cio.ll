; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_cio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_cio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@EN_ARP2HALTC = common dso_local global i32 0, align 4
@LmM0INTEN_MASK = common dso_local global i32 0, align 4
@LmM1INTEN_MASK = common dso_local global i32 0, align 4
@LmM2INTEN_MASK = common dso_local global i32 0, align 4
@LmM5INTEN_MASK = common dso_local global i32 0, align 4
@LmHWTSTATEN_MASK = common dso_local global i32 0, align 4
@LmPRIMSTAT0EN_MASK = common dso_local global i32 0, align 4
@LmPRIMSTAT1EN_MASK = common dso_local global i32 0, align 4
@LmFRMERREN_MASK = common dso_local global i32 0, align 4
@LmMnXFRLVL_512 = common dso_local global i32 0, align 4
@LmMnXFRLVL_256 = common dso_local global i32 0, align 4
@lseq_idle_loop = common dso_local global i32 0, align 4
@LmBLIND48 = common dso_local global i32 0, align 4
@ASD_SATA_INTERLOCK_TIMEOUT = common dso_local global i32 0, align 4
@LmMnBUFPERR = common dso_local global i32 0, align 4
@RSTINTCTL = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@lseq_vecs = common dso_local global i32* null, align 8
@LEDTIMER = common dso_local global i32 0, align 4
@LEDMODE_TXRX = common dso_local global i32 0, align 4
@LEDTIMERS_100ms = common dso_local global i32 0, align 4
@SAS_ALIGN_DEFAULT = common dso_local global i32 0, align 4
@STP_ALIGN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, i32)* @asd_init_lseq_cio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_lseq_cio(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @LmARP2INTEN(i32 %8)
  %10 = load i32, i32* @EN_ARP2HALTC, align 4
  %11 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %7, i32 %9, i32 %10)
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @LmSCRATCHPAGE(i32 %13)
  %15 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %12, i64 %14, i32 0)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %25, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @LmMnSCRATCHPAGE(i32 %21, i32 %22)
  %24 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %20, i64 %23, i32 0)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @LmMnSCRATCHPAGE(i32 %30, i32 5)
  %32 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %29, i64 %31, i32 0)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @LmRSPMBX(i32 %34)
  %36 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %33, i32 %35, i32 0)
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @LmMnINTEN(i32 %38, i32 0)
  %40 = load i32, i32* @LmM0INTEN_MASK, align 4
  %41 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %37, i32 %39, i32 %40)
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @LmMnINT(i32 %43, i32 0)
  %45 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %42, i32 %44, i32 -1)
  %46 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @LmMnINTEN(i32 %47, i32 1)
  %49 = load i32, i32* @LmM1INTEN_MASK, align 4
  %50 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %46, i32 %48, i32 %49)
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @LmMnINT(i32 %52, i32 1)
  %54 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %51, i32 %53, i32 -1)
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @LmMnINTEN(i32 %56, i32 2)
  %58 = load i32, i32* @LmM2INTEN_MASK, align 4
  %59 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %55, i32 %57, i32 %58)
  %60 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @LmMnINT(i32 %61, i32 2)
  %63 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %60, i32 %62, i32 -1)
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @LmMnINTEN(i32 %65, i32 5)
  %67 = load i32, i32* @LmM5INTEN_MASK, align 4
  %68 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %64, i32 %66, i32 %67)
  %69 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @LmMnINT(i32 %70, i32 5)
  %72 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %69, i32 %71, i32 -1)
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @LmHWTSTATEN(i32 %74)
  %76 = load i32, i32* @LmHWTSTATEN_MASK, align 4
  %77 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %73, i64 %75, i32 %76)
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @LmPRIMSTAT0EN(i32 %79)
  %81 = load i32, i32* @LmPRIMSTAT0EN_MASK, align 4
  %82 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %78, i32 %80, i32 %81)
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @LmPRIMSTAT1EN(i32 %84)
  %86 = load i32, i32* @LmPRIMSTAT1EN_MASK, align 4
  %87 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %83, i32 %85, i32 %86)
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @LmFRMERREN(i32 %89)
  %91 = load i32, i32* @LmFRMERREN_MASK, align 4
  %92 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %88, i32 %90, i32 %91)
  %93 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @LmMnHOLDLVL(i32 %94, i32 0)
  %96 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %93, i64 %95, i32 80)
  %97 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @LmMnXFRLVL(i32 %98, i32 0)
  %100 = load i32, i32* @LmMnXFRLVL_512, align 4
  %101 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %97, i64 %99, i32 %100)
  %102 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @LmMnXFRLVL(i32 %103, i32 1)
  %105 = load i32, i32* @LmMnXFRLVL_256, align 4
  %106 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %102, i64 %104, i32 %105)
  %107 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @LmPRGMCNT(i32 %108)
  %110 = load i32, i32* @lseq_idle_loop, align 4
  %111 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %107, i32 %109, i32 %110)
  %112 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @LmMODECTL(i32 %113)
  %115 = load i32, i32* @LmBLIND48, align 4
  %116 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %112, i32 %114, i32 %115)
  %117 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @LmM3SATATIMER(i32 %118)
  %120 = load i32, i32* @ASD_SATA_INTERLOCK_TIMEOUT, align 4
  %121 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %117, i32 %119, i32 %120)
  %122 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @LmREQMBX(i32 %123)
  %125 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %122, i32 %124)
  %126 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @LmPRMSTAT0(i32 %127)
  %129 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %126, i32 %128, i32 -1)
  %130 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @LmPRMSTAT1(i32 %131)
  %133 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %130, i32 %132, i32 -1)
  %134 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @LmHWTSTAT(i32 %135)
  %137 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %134, i64 %136, i32 255)
  %138 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i64 @LmMnDMAERRS(i32 %139, i32 0)
  %141 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %138, i64 %140, i32 255)
  %142 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @LmMnDMAERRS(i32 %143, i32 1)
  %145 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %142, i64 %144, i32 255)
  %146 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i64 @LmMnSGDMAERRS(i32 %147, i32 0)
  %149 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %146, i64 %148, i32 255)
  %150 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i64 @LmMnSGDMAERRS(i32 %151, i32 1)
  %153 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %150, i64 %152, i32 255)
  %154 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i64 @LmMnBUFSTAT(i32 %155, i32 0)
  %157 = load i32, i32* @LmMnBUFPERR, align 4
  %158 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %154, i64 %156, i32 %157)
  %159 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @LmMnFRMERR(i32 %160, i32 0)
  %162 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %159, i32 %161, i32 -1)
  %163 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i64 @LmARP2INTCTL(i32 %164)
  %166 = load i32, i32* @RSTINTCTL, align 4
  %167 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %163, i64 %165, i32 %166)
  %168 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %169 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %195, %28
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %178
  %183 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i64 @LmWWN(i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %183, i64 %188, i32 %193)
  br label %195

195:                                              ; preds = %182
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %178

198:                                              ; preds = %178
  %199 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i64 @LmMnXMTSIZE(i32 %200, i32 1)
  %202 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %199, i64 %201, i32 0)
  %203 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @LmBITL_TIMER(i32 %204)
  %206 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %203, i32 %205, i32 9)
  %207 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @LmMnSATAFS(i32 %208, i32 1)
  %210 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %207, i64 %209, i32 128)
  %211 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @LmM3INTVEC0(i32 %212)
  %214 = load i32*, i32** @lseq_vecs, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %211, i32 %213, i32 %216)
  %218 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @LmM3INTVEC1(i32 %219)
  %221 = load i32*, i32** @lseq_vecs, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %218, i32 %220, i32 %223)
  %225 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @LmM3INTVEC2(i32 %226)
  %228 = load i32*, i32** @lseq_vecs, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %225, i32 %227, i32 %230)
  %232 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @LmM3INTVEC3(i32 %233)
  %235 = load i32*, i32** @lseq_vecs, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %232, i32 %234, i32 %237)
  %239 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @LmM3INTVEC4(i32 %240)
  %242 = load i32*, i32** @lseq_vecs, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %239, i32 %241, i32 %244)
  %246 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @LmM3INTVEC5(i32 %247)
  %249 = load i32*, i32** @lseq_vecs, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 5
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %246, i32 %248, i32 %251)
  %253 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @LmM3INTVEC6(i32 %254)
  %256 = load i32*, i32** @lseq_vecs, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 6
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %253, i32 %255, i32 %258)
  %260 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @LmM3INTVEC7(i32 %261)
  %263 = load i32*, i32** @lseq_vecs, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 7
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %260, i32 %262, i32 %265)
  %267 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @LmM3INTVEC8(i32 %268)
  %270 = load i32*, i32** @lseq_vecs, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 8
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %267, i32 %269, i32 %272)
  %274 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @LmM3INTVEC9(i32 %275)
  %277 = load i32*, i32** @lseq_vecs, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 9
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %274, i32 %276, i32 %279)
  %281 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @LmM3INTVEC10(i32 %282)
  %284 = load i32*, i32** @lseq_vecs, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 10
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %281, i32 %283, i32 %286)
  %288 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %289 = load i32, i32* %4, align 4
  %290 = call i32 @LmCONTROL(i32 %289)
  %291 = load i32, i32* @LEDTIMER, align 4
  %292 = load i32, i32* @LEDMODE_TXRX, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @LEDTIMERS_100ms, align 4
  %295 = or i32 %293, %294
  %296 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %288, i32 %290, i32 %295)
  %297 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %298 = load i32, i32* %4, align 4
  %299 = call i64 @LmM1SASALIGN(i32 %298)
  %300 = load i32, i32* @SAS_ALIGN_DEFAULT, align 4
  %301 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %297, i64 %299, i32 %300)
  %302 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %303 = load i32, i32* %4, align 4
  %304 = call i64 @LmM1STPALIGN(i32 %303)
  %305 = load i32, i32* @STP_ALIGN_DEFAULT, align 4
  %306 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %302, i64 %304, i32 %305)
  ret void
}

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmARP2INTEN(i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i64 @LmSCRATCHPAGE(i32) #1

declare dso_local i64 @LmMnSCRATCHPAGE(i32, i32) #1

declare dso_local i32 @LmRSPMBX(i32) #1

declare dso_local i32 @LmMnINTEN(i32, i32) #1

declare dso_local i32 @LmMnINT(i32, i32) #1

declare dso_local i64 @LmHWTSTATEN(i32) #1

declare dso_local i32 @LmPRIMSTAT0EN(i32) #1

declare dso_local i32 @LmPRIMSTAT1EN(i32) #1

declare dso_local i32 @LmFRMERREN(i32) #1

declare dso_local i64 @LmMnHOLDLVL(i32, i32) #1

declare dso_local i64 @LmMnXFRLVL(i32, i32) #1

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmPRGMCNT(i32) #1

declare dso_local i32 @LmMODECTL(i32) #1

declare dso_local i32 @LmM3SATATIMER(i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @LmREQMBX(i32) #1

declare dso_local i32 @LmPRMSTAT0(i32) #1

declare dso_local i32 @LmPRMSTAT1(i32) #1

declare dso_local i64 @LmHWTSTAT(i32) #1

declare dso_local i64 @LmMnDMAERRS(i32, i32) #1

declare dso_local i64 @LmMnSGDMAERRS(i32, i32) #1

declare dso_local i64 @LmMnBUFSTAT(i32, i32) #1

declare dso_local i32 @LmMnFRMERR(i32, i32) #1

declare dso_local i64 @LmARP2INTCTL(i32) #1

declare dso_local i64 @LmWWN(i32) #1

declare dso_local i64 @LmMnXMTSIZE(i32, i32) #1

declare dso_local i32 @LmBITL_TIMER(i32) #1

declare dso_local i64 @LmMnSATAFS(i32, i32) #1

declare dso_local i32 @LmM3INTVEC0(i32) #1

declare dso_local i32 @LmM3INTVEC1(i32) #1

declare dso_local i32 @LmM3INTVEC2(i32) #1

declare dso_local i32 @LmM3INTVEC3(i32) #1

declare dso_local i32 @LmM3INTVEC4(i32) #1

declare dso_local i32 @LmM3INTVEC5(i32) #1

declare dso_local i32 @LmM3INTVEC6(i32) #1

declare dso_local i32 @LmM3INTVEC7(i32) #1

declare dso_local i32 @LmM3INTVEC8(i32) #1

declare dso_local i32 @LmM3INTVEC9(i32) #1

declare dso_local i32 @LmM3INTVEC10(i32) #1

declare dso_local i32 @LmCONTROL(i32) #1

declare dso_local i64 @LmM1SASALIGN(i32) #1

declare dso_local i64 @LmM1STPALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
