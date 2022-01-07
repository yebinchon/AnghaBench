; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_mdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_mdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@mode2_task = common dso_local global i32 0, align 4
@LSEQ_MODE_SCRATCH_SIZE = common dso_local global i32 0, align 4
@LSEQ_MODE5_PAGE0_OFFSET = common dso_local global i64 0, align 8
@last_scb_site_no = common dso_local global i64 0, align 8
@LmM0INTEN_MASK = common dso_local global i32 0, align 4
@ASD_NOTIFY_TIMEOUT = common dso_local global i32 0, align 4
@ASD_NOTIFY_DOWN_COUNT = common dso_local global i32 0, align 4
@LSEQ_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, i32)* @asd_init_lseq_mdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_lseq_mdp(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 65535, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 65535, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* @mode2_task, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 65535, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 65535, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %76, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LSEQ_MODE_SCRATCH_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @LmSEQ_RET_ADDR(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %23, i64 %28, i32 %32)
  %34 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @LmSEQ_REG0_MODE(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %34, i64 %39, i32 0)
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @LmSEQ_MODE_FLAGS(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %41, i64 %46, i32 0)
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @LmSEQ_RET_ADDR2(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %48, i64 %53, i32 65535)
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @LmSEQ_RET_ADDR1(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %55, i64 %60, i32 65535)
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @LmSEQ_OPCODE_TO_CSEQ(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %62, i64 %67, i32 0)
  %69 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @LmSEQ_DATA_TO_CSEQ(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %69, i64 %74, i32 0)
  br label %76

76:                                               ; preds = %19
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %16

79:                                               ; preds = %16
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @LmSEQ_RET_ADDR(i32 %81)
  %83 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %84 = add nsw i64 %82, %83
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %80, i64 %84, i32 %86)
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @LmSEQ_REG0_MODE(i32 %89)
  %91 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %88, i64 %92, i32 0)
  %94 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @LmSEQ_MODE_FLAGS(i32 %95)
  %97 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %94, i64 %98, i32 0)
  %100 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @LmSEQ_RET_ADDR2(i32 %101)
  %103 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %100, i64 %104, i32 65535)
  %106 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @LmSEQ_RET_ADDR1(i32 %107)
  %109 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %106, i64 %110, i32 65535)
  %112 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @LmSEQ_OPCODE_TO_CSEQ(i32 %113)
  %115 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %112, i64 %116, i32 0)
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @LmSEQ_DATA_TO_CSEQ(i32 %119)
  %121 = load i64, i64* @LSEQ_MODE5_PAGE0_OFFSET, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %118, i64 %122, i32 0)
  %124 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @LmSEQ_FIRST_INV_DDB_SITE(i32 %125)
  %127 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %128 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %124, i64 %126, i32 %131)
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @LmSEQ_EMPTY_TRANS_CTX(i32 %134)
  %136 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %133, i64 %135, i32 0)
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @LmSEQ_RESP_LEN(i32 %138)
  %140 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %137, i64 %139, i32 0)
  %141 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i64 @LmSEQ_FIRST_INV_SCB_SITE(i32 %142)
  %144 = load i64, i64* @last_scb_site_no, align 8
  %145 = trunc i64 %144 to i32
  %146 = add nsw i32 %145, 1
  %147 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %141, i64 %143, i32 %146)
  %148 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i64 @LmSEQ_INTEN_SAVE(i32 %149)
  %151 = load i32, i32* @LmM0INTEN_MASK, align 4
  %152 = and i32 %151, -65536
  %153 = lshr i32 %152, 16
  %154 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %148, i64 %150, i32 %153)
  %155 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i64 @LmSEQ_INTEN_SAVE(i32 %156)
  %158 = add nsw i64 %157, 2
  %159 = load i32, i32* @LmM0INTEN_MASK, align 4
  %160 = and i32 %159, 65535
  %161 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %155, i64 %158, i32 %160)
  %162 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i64 @LmSEQ_LINK_RST_FRM_LEN(i32 %163)
  %165 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %162, i64 %164, i32 0)
  %166 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i64 @LmSEQ_LINK_RST_PROTOCOL(i32 %167)
  %169 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %166, i64 %168, i32 0)
  %170 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i64 @LmSEQ_RESP_STATUS(i32 %171)
  %173 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %170, i64 %172, i32 0)
  %174 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i64 @LmSEQ_LAST_LOADED_SGE(i32 %175)
  %177 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %174, i64 %176, i32 0)
  %178 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = call i64 @LmSEQ_SAVE_SCBPTR(i32 %179)
  %181 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %178, i64 %180, i32 0)
  %182 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i64 @LmSEQ_Q_XMIT_HEAD(i32 %183)
  %185 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %182, i64 %184, i32 65535)
  %186 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i64 @LmSEQ_M1_EMPTY_TRANS_CTX(i32 %187)
  %189 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %186, i64 %188, i32 0)
  %190 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %191 = load i32, i32* %4, align 4
  %192 = call i64 @LmSEQ_INI_CONN_TAG(i32 %191)
  %193 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %190, i64 %192, i32 0)
  %194 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i64 @LmSEQ_FAILED_OPEN_STATUS(i32 %195)
  %197 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %194, i64 %196, i32 0)
  %198 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = call i64 @LmSEQ_XMIT_REQUEST_TYPE(i32 %199)
  %201 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %198, i64 %200, i32 0)
  %202 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = call i64 @LmSEQ_M1_RESP_STATUS(i32 %203)
  %205 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %202, i64 %204, i32 0)
  %206 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i64 @LmSEQ_M1_LAST_LOADED_SGE(i32 %207)
  %209 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %206, i64 %208, i32 0)
  %210 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = call i64 @LmSEQ_M1_SAVE_SCBPTR(i32 %211)
  %213 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %210, i64 %212, i32 0)
  %214 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i64 @LmSEQ_PORT_COUNTER(i32 %215)
  %217 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %214, i64 %216, i32 0)
  %218 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %219 = load i32, i32* %4, align 4
  %220 = call i64 @LmSEQ_PM_TABLE_PTR(i32 %219)
  %221 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %218, i64 %220, i32 0)
  %222 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i64 @LmSEQ_SATA_INTERLOCK_TMR_SAVE(i32 %223)
  %225 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %222, i64 %224, i32 0)
  %226 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %227 = load i32, i32* %4, align 4
  %228 = call i64 @LmSEQ_IP_BITL(i32 %227)
  %229 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %226, i64 %228, i32 0)
  %230 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %231 = load i32, i32* %4, align 4
  %232 = call i64 @LmSEQ_COPY_SMP_CONN_TAG(i32 %231)
  %233 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %230, i64 %232, i32 0)
  %234 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @LmSEQ_P0M2_OFFS1AH(i32 %235)
  %237 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %234, i64 %236, i32 0)
  %238 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = call i64 @LmSEQ_SAVED_OOB_STATUS(i32 %239)
  %241 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %238, i64 %240, i32 0)
  %242 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %243 = load i32, i32* %4, align 4
  %244 = call i64 @LmSEQ_SAVED_OOB_MODE(i32 %243)
  %245 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %242, i64 %244, i32 0)
  %246 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i64 @LmSEQ_Q_LINK_HEAD(i32 %247)
  %249 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %246, i64 %248, i32 65535)
  %250 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = call i64 @LmSEQ_LINK_RST_ERR(i32 %251)
  %253 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %250, i64 %252, i32 0)
  %254 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i64 @LmSEQ_SAVED_OOB_SIGNALS(i32 %255)
  %257 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %254, i64 %256, i32 0)
  %258 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = call i64 @LmSEQ_SAS_RESET_MODE(i32 %259)
  %261 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %258, i64 %260, i32 0)
  %262 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %263 = load i32, i32* %4, align 4
  %264 = call i64 @LmSEQ_LINK_RESET_RETRY_COUNT(i32 %263)
  %265 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %262, i64 %264, i32 0)
  %266 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %267 = load i32, i32* %4, align 4
  %268 = call i64 @LmSEQ_NUM_LINK_RESET_RETRIES(i32 %267)
  %269 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %266, i64 %268, i32 0)
  %270 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %271 = load i32, i32* %4, align 4
  %272 = call i64 @LmSEQ_OOB_INT_ENABLES(i32 %271)
  %273 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %270, i64 %272, i32 0)
  %274 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %275 = load i32, i32* %4, align 4
  %276 = call i64 @LmSEQ_NOTIFY_TIMER_TIMEOUT(i32 %275)
  %277 = load i32, i32* @ASD_NOTIFY_TIMEOUT, align 4
  %278 = sub nsw i32 %277, 1
  %279 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %274, i64 %276, i32 %278)
  %280 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %281 = load i32, i32* %4, align 4
  %282 = call i64 @LmSEQ_NOTIFY_TIMER_DOWN_COUNT(i32 %281)
  %283 = load i32, i32* @ASD_NOTIFY_DOWN_COUNT, align 4
  %284 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %280, i64 %282, i32 %283)
  %285 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %286 = load i32, i32* %4, align 4
  %287 = call i64 @LmSEQ_NOTIFY_TIMER_INITIAL_COUNT(i32 %286)
  %288 = load i32, i32* @ASD_NOTIFY_DOWN_COUNT, align 4
  %289 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %285, i64 %287, i32 %288)
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %318, %79
  %291 = load i32, i32* %5, align 4
  %292 = icmp slt i32 %291, 2
  br i1 %292, label %293, label %321

293:                                              ; preds = %290
  %294 = load i32, i32* @LSEQ_PAGE_SIZE, align 4
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @LSEQ_MODE_SCRATCH_SIZE, align 4
  %297 = mul nsw i32 %295, %296
  %298 = add nsw i32 %294, %297
  store i32 %298, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %314, %293
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* @LSEQ_PAGE_SIZE, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %317

303:                                              ; preds = %299
  %304 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %305 = load i32, i32* %4, align 4
  %306 = call i64 @LmSCRATCH(i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %306, %308
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %309, %311
  %313 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %304, i64 %312, i32 0)
  br label %314

314:                                              ; preds = %303
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 4
  store i32 %316, i32* %8, align 4
  br label %299

317:                                              ; preds = %299
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %290

321:                                              ; preds = %290
  %322 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %323 = load i32, i32* %4, align 4
  %324 = call i64 @LmSEQ_INVALID_DWORD_COUNT(i32 %323)
  %325 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %322, i64 %324, i32 0)
  %326 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %327 = load i32, i32* %4, align 4
  %328 = call i64 @LmSEQ_DISPARITY_ERROR_COUNT(i32 %327)
  %329 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %326, i64 %328, i32 0)
  %330 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %331 = load i32, i32* %4, align 4
  %332 = call i64 @LmSEQ_LOSS_OF_SYNC_COUNT(i32 %331)
  %333 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %330, i64 %332, i32 0)
  store i32 0, i32* %5, align 4
  br label %334

334:                                              ; preds = %346, %321
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @LSEQ_PAGE_SIZE, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %349

338:                                              ; preds = %334
  %339 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %340 = load i32, i32* %4, align 4
  %341 = call i64 @LmSEQ_FRAME_TYPE_MASK(i32 %340)
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %341, %343
  %345 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %339, i64 %344, i32 0)
  br label %346

346:                                              ; preds = %338
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 4
  store i32 %348, i32* %5, align 4
  br label %334

349:                                              ; preds = %334
  %350 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %351 = load i32, i32* %4, align 4
  %352 = call i64 @LmSEQ_FRAME_TYPE_MASK(i32 %351)
  %353 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %350, i64 %352, i32 255)
  %354 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %355 = load i32, i32* %4, align 4
  %356 = call i64 @LmSEQ_HASHED_DEST_ADDR_MASK(i32 %355)
  %357 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %354, i64 %356, i32 255)
  %358 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %359 = load i32, i32* %4, align 4
  %360 = call i64 @LmSEQ_HASHED_DEST_ADDR_MASK(i32 %359)
  %361 = add nsw i64 %360, 1
  %362 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %358, i64 %361, i32 255)
  %363 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %364 = load i32, i32* %4, align 4
  %365 = call i64 @LmSEQ_HASHED_DEST_ADDR_MASK(i32 %364)
  %366 = add nsw i64 %365, 2
  %367 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %363, i64 %366, i32 255)
  %368 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %369 = load i32, i32* %4, align 4
  %370 = call i64 @LmSEQ_HASHED_SRC_ADDR_MASK(i32 %369)
  %371 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %368, i64 %370, i32 255)
  %372 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %373 = load i32, i32* %4, align 4
  %374 = call i64 @LmSEQ_HASHED_SRC_ADDR_MASK(i32 %373)
  %375 = add nsw i64 %374, 1
  %376 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %372, i64 %375, i32 255)
  %377 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %378 = load i32, i32* %4, align 4
  %379 = call i64 @LmSEQ_HASHED_SRC_ADDR_MASK(i32 %378)
  %380 = add nsw i64 %379, 2
  %381 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %377, i64 %380, i32 255)
  %382 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %383 = load i32, i32* %4, align 4
  %384 = call i64 @LmSEQ_DATA_OFFSET(i32 %383)
  %385 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %382, i64 %384, i32 -1)
  %386 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %387 = load i32, i32* %4, align 4
  %388 = call i64 @LmSEQ_SMP_RCV_TIMER_TERM_TS(i32 %387)
  %389 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %386, i64 %388, i32 0)
  %390 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %391 = load i32, i32* %4, align 4
  %392 = call i64 @LmSEQ_DEVICE_BITS(i32 %391)
  %393 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %390, i64 %392, i32 0)
  %394 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %395 = load i32, i32* %4, align 4
  %396 = call i64 @LmSEQ_SDB_DDB(i32 %395)
  %397 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %394, i64 %396, i32 0)
  %398 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %399 = load i32, i32* %4, align 4
  %400 = call i64 @LmSEQ_SDB_NUM_TAGS(i32 %399)
  %401 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %398, i64 %400, i32 0)
  %402 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %403 = load i32, i32* %4, align 4
  %404 = call i64 @LmSEQ_SDB_CURR_TAG(i32 %403)
  %405 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %402, i64 %404, i32 0)
  %406 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %407 = load i32, i32* %4, align 4
  %408 = call i64 @LmSEQ_TX_ID_ADDR_FRAME(i32 %407)
  %409 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %406, i64 %408, i32 0)
  %410 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %411 = load i32, i32* %4, align 4
  %412 = call i64 @LmSEQ_TX_ID_ADDR_FRAME(i32 %411)
  %413 = add nsw i64 %412, 4
  %414 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %410, i64 %413, i32 0)
  %415 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %416 = load i32, i32* %4, align 4
  %417 = call i64 @LmSEQ_OPEN_TIMER_TERM_TS(i32 %416)
  %418 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %415, i64 %417, i32 0)
  %419 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %420 = load i32, i32* %4, align 4
  %421 = call i64 @LmSEQ_SRST_AS_TIMER_TERM_TS(i32 %420)
  %422 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %419, i64 %421, i32 0)
  %423 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %424 = load i32, i32* %4, align 4
  %425 = call i64 @LmSEQ_LAST_LOADED_SG_EL(i32 %424)
  %426 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %423, i64 %425, i32 0)
  %427 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %428 = load i32, i32* %4, align 4
  %429 = call i64 @LmSEQ_STP_SHUTDOWN_TIMER_TERM_TS(i32 %428)
  %430 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %427, i64 %429, i32 0)
  %431 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %432 = load i32, i32* %4, align 4
  %433 = call i64 @LmSEQ_CLOSE_TIMER_TERM_TS(i32 %432)
  %434 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %431, i64 %433, i32 0)
  %435 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %436 = load i32, i32* %4, align 4
  %437 = call i64 @LmSEQ_BREAK_TIMER_TERM_TS(i32 %436)
  %438 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %435, i64 %437, i32 0)
  %439 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %440 = load i32, i32* %4, align 4
  %441 = call i64 @LmSEQ_DWS_RESET_TIMER_TERM_TS(i32 %440)
  %442 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %439, i64 %441, i32 0)
  %443 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %444 = load i32, i32* %4, align 4
  %445 = call i64 @LmSEQ_SATA_INTERLOCK_TIMER_TERM_TS(i32 %444)
  %446 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %443, i64 %445, i32 0)
  %447 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %448 = load i32, i32* %4, align 4
  %449 = call i64 @LmSEQ_MCTL_TIMER_TERM_TS(i32 %448)
  %450 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %447, i64 %449, i32 0)
  %451 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %452 = load i32, i32* %4, align 4
  %453 = call i64 @LmSEQ_COMINIT_TIMER_TERM_TS(i32 %452)
  %454 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %451, i64 %453, i32 0)
  %455 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %456 = load i32, i32* %4, align 4
  %457 = call i64 @LmSEQ_RCV_ID_TIMER_TERM_TS(i32 %456)
  %458 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %455, i64 %457, i32 0)
  %459 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %460 = load i32, i32* %4, align 4
  %461 = call i64 @LmSEQ_RCV_FIS_TIMER_TERM_TS(i32 %460)
  %462 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %459, i64 %461, i32 0)
  %463 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %464 = load i32, i32* %4, align 4
  %465 = call i64 @LmSEQ_DEV_PRES_TIMER_TERM_TS(i32 %464)
  %466 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %463, i64 %465, i32 0)
  ret void
}

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i64 @LmSEQ_RET_ADDR(i32) #1

declare dso_local i64 @LmSEQ_REG0_MODE(i32) #1

declare dso_local i64 @LmSEQ_MODE_FLAGS(i32) #1

declare dso_local i64 @LmSEQ_RET_ADDR2(i32) #1

declare dso_local i64 @LmSEQ_RET_ADDR1(i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i64 @LmSEQ_OPCODE_TO_CSEQ(i32) #1

declare dso_local i64 @LmSEQ_DATA_TO_CSEQ(i32) #1

declare dso_local i64 @LmSEQ_FIRST_INV_DDB_SITE(i32) #1

declare dso_local i64 @LmSEQ_EMPTY_TRANS_CTX(i32) #1

declare dso_local i64 @LmSEQ_RESP_LEN(i32) #1

declare dso_local i64 @LmSEQ_FIRST_INV_SCB_SITE(i32) #1

declare dso_local i64 @LmSEQ_INTEN_SAVE(i32) #1

declare dso_local i64 @LmSEQ_LINK_RST_FRM_LEN(i32) #1

declare dso_local i64 @LmSEQ_LINK_RST_PROTOCOL(i32) #1

declare dso_local i64 @LmSEQ_RESP_STATUS(i32) #1

declare dso_local i64 @LmSEQ_LAST_LOADED_SGE(i32) #1

declare dso_local i64 @LmSEQ_SAVE_SCBPTR(i32) #1

declare dso_local i64 @LmSEQ_Q_XMIT_HEAD(i32) #1

declare dso_local i64 @LmSEQ_M1_EMPTY_TRANS_CTX(i32) #1

declare dso_local i64 @LmSEQ_INI_CONN_TAG(i32) #1

declare dso_local i64 @LmSEQ_FAILED_OPEN_STATUS(i32) #1

declare dso_local i64 @LmSEQ_XMIT_REQUEST_TYPE(i32) #1

declare dso_local i64 @LmSEQ_M1_RESP_STATUS(i32) #1

declare dso_local i64 @LmSEQ_M1_LAST_LOADED_SGE(i32) #1

declare dso_local i64 @LmSEQ_M1_SAVE_SCBPTR(i32) #1

declare dso_local i64 @LmSEQ_PORT_COUNTER(i32) #1

declare dso_local i64 @LmSEQ_PM_TABLE_PTR(i32) #1

declare dso_local i64 @LmSEQ_SATA_INTERLOCK_TMR_SAVE(i32) #1

declare dso_local i64 @LmSEQ_IP_BITL(i32) #1

declare dso_local i64 @LmSEQ_COPY_SMP_CONN_TAG(i32) #1

declare dso_local i64 @LmSEQ_P0M2_OFFS1AH(i32) #1

declare dso_local i64 @LmSEQ_SAVED_OOB_STATUS(i32) #1

declare dso_local i64 @LmSEQ_SAVED_OOB_MODE(i32) #1

declare dso_local i64 @LmSEQ_Q_LINK_HEAD(i32) #1

declare dso_local i64 @LmSEQ_LINK_RST_ERR(i32) #1

declare dso_local i64 @LmSEQ_SAVED_OOB_SIGNALS(i32) #1

declare dso_local i64 @LmSEQ_SAS_RESET_MODE(i32) #1

declare dso_local i64 @LmSEQ_LINK_RESET_RETRY_COUNT(i32) #1

declare dso_local i64 @LmSEQ_NUM_LINK_RESET_RETRIES(i32) #1

declare dso_local i64 @LmSEQ_OOB_INT_ENABLES(i32) #1

declare dso_local i64 @LmSEQ_NOTIFY_TIMER_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_NOTIFY_TIMER_DOWN_COUNT(i32) #1

declare dso_local i64 @LmSEQ_NOTIFY_TIMER_INITIAL_COUNT(i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i64 @LmSCRATCH(i32) #1

declare dso_local i64 @LmSEQ_INVALID_DWORD_COUNT(i32) #1

declare dso_local i64 @LmSEQ_DISPARITY_ERROR_COUNT(i32) #1

declare dso_local i64 @LmSEQ_LOSS_OF_SYNC_COUNT(i32) #1

declare dso_local i64 @LmSEQ_FRAME_TYPE_MASK(i32) #1

declare dso_local i64 @LmSEQ_HASHED_DEST_ADDR_MASK(i32) #1

declare dso_local i64 @LmSEQ_HASHED_SRC_ADDR_MASK(i32) #1

declare dso_local i64 @LmSEQ_DATA_OFFSET(i32) #1

declare dso_local i64 @LmSEQ_SMP_RCV_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_DEVICE_BITS(i32) #1

declare dso_local i64 @LmSEQ_SDB_DDB(i32) #1

declare dso_local i64 @LmSEQ_SDB_NUM_TAGS(i32) #1

declare dso_local i64 @LmSEQ_SDB_CURR_TAG(i32) #1

declare dso_local i64 @LmSEQ_TX_ID_ADDR_FRAME(i32) #1

declare dso_local i64 @LmSEQ_OPEN_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_SRST_AS_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_LAST_LOADED_SG_EL(i32) #1

declare dso_local i64 @LmSEQ_STP_SHUTDOWN_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_CLOSE_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_BREAK_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_DWS_RESET_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_SATA_INTERLOCK_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_MCTL_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_COMINIT_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_RCV_ID_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_RCV_FIS_TIMER_TERM_TS(i32) #1

declare dso_local i64 @LmSEQ_DEV_PRES_TIMER_TERM_TS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
