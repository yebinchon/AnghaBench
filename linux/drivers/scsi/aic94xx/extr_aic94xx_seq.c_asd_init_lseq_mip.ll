; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_mip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_lseq_mip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@ASD_NOTIFY_ENABLE_SPINUP = common dso_local global i32 0, align 4
@ASD_DEV_PRESENT_TIMEOUT = common dso_local global i32 0, align 4
@ASD_SATA_INTERLOCK_TIMEOUT = common dso_local global i32 0, align 4
@ASD_STP_SHUTDOWN_TIMEOUT = common dso_local global i32 0, align 4
@ASD_SRST_ASSERT_TIMEOUT = common dso_local global i32 0, align 4
@ASD_RCV_FIS_TIMEOUT = common dso_local global i32 0, align 4
@ASD_ONE_MILLISEC_TIMEOUT = common dso_local global i32 0, align 4
@ASD_TEN_MILLISEC_TIMEOUT = common dso_local global i32 0, align 4
@ASD_SMP_RCV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, i32)* @asd_init_lseq_mip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_lseq_mip(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @LmSEQ_Q_TGTXFR_HEAD(i32 %7)
  %9 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %6, i32 %8, i32 65535)
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @LmSEQ_Q_TGTXFR_TAIL(i32 %11)
  %13 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %10, i32 %12, i32 65535)
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @LmSEQ_LINK_NUMBER(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %14, i32 %16, i32 %17)
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @LmSEQ_SCRATCH_FLAGS(i32 %20)
  %22 = load i32, i32* @ASD_NOTIFY_ENABLE_SPINUP, align 4
  %23 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %19, i32 %21, i32 %22)
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @LmSEQ_CONNECTION_STATE(i32 %25)
  %27 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %24, i64 %26, i32 134217728)
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @LmSEQ_CONCTL(i32 %29)
  %31 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %28, i32 %30, i32 0)
  %32 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @LmSEQ_CONSTAT(i32 %33)
  %35 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %32, i32 %34, i32 0)
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @LmSEQ_CONNECTION_MODES(i32 %37)
  %39 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %36, i32 %38, i32 0)
  %40 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @LmSEQ_REG1_ISR(i32 %41)
  %43 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %40, i32 %42, i32 0)
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @LmSEQ_REG2_ISR(i32 %45)
  %47 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %44, i32 %46, i32 0)
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @LmSEQ_REG3_ISR(i32 %49)
  %51 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %48, i32 %50, i32 0)
  %52 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @LmSEQ_REG0_ISR(i32 %53)
  %55 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %52, i64 %54, i32 0)
  %56 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @LmSEQ_REG0_ISR(i32 %57)
  %59 = add nsw i64 %58, 4
  %60 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %56, i64 %59, i32 0)
  %61 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @LmSEQ_EST_NEXUS_SCBPTR0(i32 %62)
  %64 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %61, i32 %63, i32 65535)
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @LmSEQ_EST_NEXUS_SCBPTR1(i32 %66)
  %68 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %65, i32 %67, i32 65535)
  %69 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @LmSEQ_EST_NEXUS_SCBPTR2(i32 %70)
  %72 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %69, i32 %71, i32 65535)
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @LmSEQ_EST_NEXUS_SCBPTR3(i32 %74)
  %76 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %73, i32 %75, i32 65535)
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @LmSEQ_EST_NEXUS_SCB_OPCODE0(i32 %78)
  %80 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %77, i32 %79, i32 0)
  %81 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @LmSEQ_EST_NEXUS_SCB_OPCODE1(i32 %82)
  %84 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %81, i32 %83, i32 0)
  %85 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @LmSEQ_EST_NEXUS_SCB_OPCODE2(i32 %86)
  %88 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %85, i32 %87, i32 0)
  %89 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @LmSEQ_EST_NEXUS_SCB_OPCODE3(i32 %90)
  %92 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %89, i32 %91, i32 0)
  %93 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @LmSEQ_EST_NEXUS_SCB_HEAD(i32 %94)
  %96 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %93, i32 %95, i32 0)
  %97 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @LmSEQ_EST_NEXUS_SCB_TAIL(i32 %98)
  %100 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %97, i32 %99, i32 0)
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @LmSEQ_EST_NEXUS_BUF_AVAIL(i32 %102)
  %104 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %101, i32 %103, i32 0)
  %105 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @LmSEQ_TIMEOUT_CONST(i32 %106)
  %108 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %105, i64 %107, i32 0)
  %109 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @LmSEQ_ISR_SAVE_SINDEX(i32 %110)
  %112 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %109, i32 %111, i32 0)
  %113 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @LmSEQ_ISR_SAVE_DINDEX(i32 %114)
  %116 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %113, i32 %115, i32 0)
  %117 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @LmSEQ_EMPTY_SCB_PTR0(i32 %118)
  %120 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %117, i32 %119, i32 65535)
  %121 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @LmSEQ_EMPTY_SCB_PTR1(i32 %122)
  %124 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %121, i32 %123, i32 65535)
  %125 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @LmSEQ_EMPTY_SCB_PTR2(i32 %126)
  %128 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %125, i32 %127, i32 65535)
  %129 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @LmSEQ_EMPTY_SCB_PTR3(i32 %130)
  %132 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %129, i32 %131, i32 65535)
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @LmSEQ_EMPTY_SCB_OPCD0(i32 %134)
  %136 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %133, i32 %135, i32 0)
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @LmSEQ_EMPTY_SCB_OPCD1(i32 %138)
  %140 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %137, i32 %139, i32 0)
  %141 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @LmSEQ_EMPTY_SCB_OPCD2(i32 %142)
  %144 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %141, i32 %143, i32 0)
  %145 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @LmSEQ_EMPTY_SCB_OPCD3(i32 %146)
  %148 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %145, i32 %147, i32 0)
  %149 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @LmSEQ_EMPTY_SCB_HEAD(i32 %150)
  %152 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %149, i32 %151, i32 0)
  %153 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @LmSEQ_EMPTY_SCB_TAIL(i32 %154)
  %156 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %153, i32 %155, i32 0)
  %157 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @LmSEQ_EMPTY_BUFS_AVAIL(i32 %158)
  %160 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %157, i32 %159, i32 0)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %172, %2
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 12
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i64 @LmSEQ_ATA_SCR_REGS(i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %165, i64 %170, i32 0)
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %5, align 4
  br label %161

175:                                              ; preds = %161
  %176 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %177 = load i32, i32* %4, align 4
  %178 = call i64 @LmSEQ_DEV_PRES_TMR_TOUT_CONST(i32 %177)
  %179 = load i32, i32* @ASD_DEV_PRESENT_TIMEOUT, align 4
  %180 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %176, i64 %178, i32 %179)
  %181 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = call i64 @LmSEQ_SATA_INTERLOCK_TIMEOUT(i32 %182)
  %184 = load i32, i32* @ASD_SATA_INTERLOCK_TIMEOUT, align 4
  %185 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %181, i64 %183, i32 %184)
  %186 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i64 @LmSEQ_STP_SHUTDOWN_TIMEOUT(i32 %187)
  %189 = load i32, i32* @ASD_STP_SHUTDOWN_TIMEOUT, align 4
  %190 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %186, i64 %188, i32 %189)
  %191 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = call i64 @LmSEQ_SRST_ASSERT_TIMEOUT(i32 %192)
  %194 = load i32, i32* @ASD_SRST_ASSERT_TIMEOUT, align 4
  %195 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %191, i64 %193, i32 %194)
  %196 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = call i64 @LmSEQ_RCV_FIS_TIMEOUT(i32 %197)
  %199 = load i32, i32* @ASD_RCV_FIS_TIMEOUT, align 4
  %200 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %196, i64 %198, i32 %199)
  %201 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i64 @LmSEQ_ONE_MILLISEC_TIMEOUT(i32 %202)
  %204 = load i32, i32* @ASD_ONE_MILLISEC_TIMEOUT, align 4
  %205 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %201, i64 %203, i32 %204)
  %206 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i64 @LmSEQ_TEN_MS_COMINIT_TIMEOUT(i32 %207)
  %209 = load i32, i32* @ASD_TEN_MILLISEC_TIMEOUT, align 4
  %210 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %206, i64 %208, i32 %209)
  %211 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i64 @LmSEQ_SMP_RCV_TIMEOUT(i32 %212)
  %214 = load i32, i32* @ASD_SMP_RCV_TIMEOUT, align 4
  %215 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %211, i64 %213, i32 %214)
  ret void
}

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmSEQ_Q_TGTXFR_HEAD(i32) #1

declare dso_local i32 @LmSEQ_Q_TGTXFR_TAIL(i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmSEQ_LINK_NUMBER(i32) #1

declare dso_local i32 @LmSEQ_SCRATCH_FLAGS(i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i64 @LmSEQ_CONNECTION_STATE(i32) #1

declare dso_local i32 @LmSEQ_CONCTL(i32) #1

declare dso_local i32 @LmSEQ_CONSTAT(i32) #1

declare dso_local i32 @LmSEQ_CONNECTION_MODES(i32) #1

declare dso_local i32 @LmSEQ_REG1_ISR(i32) #1

declare dso_local i32 @LmSEQ_REG2_ISR(i32) #1

declare dso_local i32 @LmSEQ_REG3_ISR(i32) #1

declare dso_local i64 @LmSEQ_REG0_ISR(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCBPTR0(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCBPTR1(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCBPTR2(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCBPTR3(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_OPCODE0(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_OPCODE1(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_OPCODE2(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_OPCODE3(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_HEAD(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_SCB_TAIL(i32) #1

declare dso_local i32 @LmSEQ_EST_NEXUS_BUF_AVAIL(i32) #1

declare dso_local i64 @LmSEQ_TIMEOUT_CONST(i32) #1

declare dso_local i32 @LmSEQ_ISR_SAVE_SINDEX(i32) #1

declare dso_local i32 @LmSEQ_ISR_SAVE_DINDEX(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_PTR0(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_PTR1(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_PTR2(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_PTR3(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_OPCD0(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_OPCD1(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_OPCD2(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_OPCD3(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_HEAD(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_SCB_TAIL(i32) #1

declare dso_local i32 @LmSEQ_EMPTY_BUFS_AVAIL(i32) #1

declare dso_local i64 @LmSEQ_ATA_SCR_REGS(i32) #1

declare dso_local i64 @LmSEQ_DEV_PRES_TMR_TOUT_CONST(i32) #1

declare dso_local i64 @LmSEQ_SATA_INTERLOCK_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_STP_SHUTDOWN_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_SRST_ASSERT_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_RCV_FIS_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_ONE_MILLISEC_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_TEN_MS_COMINIT_TIMEOUT(i32) #1

declare dso_local i64 @LmSEQ_SMP_RCV_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
