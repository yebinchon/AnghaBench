; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_set_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_set_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wrm = type { %struct.csio_sge }
%struct.csio_sge = type { i32, i32*, i32*, i32 }

@SGE_CONTROL_A = common dso_local global i32 0, align 4
@RXPKTCPLMODE_F = common dso_local global i32 0, align 4
@SGE_DBFIFO_STATUS_A = common dso_local global i32 0, align 4
@LP_INT_THRESH_T5_M = common dso_local global i32 0, align 4
@CSIO_SGE_DBFIFO_INT_THRESH = common dso_local global i32 0, align 4
@SGE_DBFIFO_STATUS2_A = common dso_local global i32 0, align 4
@SGE_DOORBELL_CONTROL_A = common dso_local global i32 0, align 4
@ENABLE_DROP_F = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE1 = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE2 = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE2_A = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE3 = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE3_A = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE4 = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE5 = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE6 = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE7 = common dso_local global i32 0, align 4
@CSIO_SGE_FLBUF_SIZE8 = common dso_local global i32 0, align 4
@CSIO_SGE_FL_SIZE_REGS = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_0 = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_1 = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_2 = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_3 = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_4 = common dso_local global i32 0, align 4
@CSIO_SGE_TIMER_VAL_5 = common dso_local global i32 0, align 4
@CSIO_SGE_INT_CNT_VAL_0 = common dso_local global i32 0, align 4
@CSIO_SGE_INT_CNT_VAL_1 = common dso_local global i32 0, align 4
@CSIO_SGE_INT_CNT_VAL_2 = common dso_local global i32 0, align 4
@CSIO_SGE_INT_CNT_VAL_3 = common dso_local global i32 0, align 4
@SGE_INGRESS_RX_THRESHOLD_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_0_AND_1_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_2_AND_3_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_4_AND_5_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_wr_set_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_set_sge(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.csio_wrm*, align 8
  %4 = alloca %struct.csio_sge*, align 8
  %5 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %6 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %7 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %6)
  store %struct.csio_wrm* %7, %struct.csio_wrm** %3, align 8
  %8 = load %struct.csio_wrm*, %struct.csio_wrm** %3, align 8
  %9 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %8, i32 0, i32 0
  store %struct.csio_sge* %9, %struct.csio_sge** %4, align 8
  %10 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %11 = load i32, i32* @SGE_CONTROL_A, align 4
  %12 = load i32, i32* @RXPKTCPLMODE_F, align 4
  %13 = load i32, i32* @RXPKTCPLMODE_F, align 4
  %14 = call i32 @csio_set_reg_field(%struct.csio_hw* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %16 = load i32, i32* @SGE_CONTROL_A, align 4
  %17 = call i32 @csio_rd_reg32(%struct.csio_hw* %15, i32 %16)
  %18 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %19 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %21 = load i32, i32* @SGE_DBFIFO_STATUS_A, align 4
  %22 = load i32, i32* @LP_INT_THRESH_T5_M, align 4
  %23 = call i32 @LP_INT_THRESH_T5_V(i32 %22)
  %24 = load i32, i32* @CSIO_SGE_DBFIFO_INT_THRESH, align 4
  %25 = call i32 @LP_INT_THRESH_T5_V(i32 %24)
  %26 = call i32 @csio_set_reg_field(%struct.csio_hw* %20, i32 %21, i32 %23, i32 %25)
  %27 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %28 = load i32, i32* @SGE_DBFIFO_STATUS2_A, align 4
  %29 = load i32, i32* @LP_INT_THRESH_T5_M, align 4
  %30 = call i32 @HP_INT_THRESH_T5_V(i32 %29)
  %31 = load i32, i32* @CSIO_SGE_DBFIFO_INT_THRESH, align 4
  %32 = call i32 @HP_INT_THRESH_T5_V(i32 %31)
  %33 = call i32 @csio_set_reg_field(%struct.csio_hw* %27, i32 %28, i32 %30, i32 %32)
  %34 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %35 = load i32, i32* @SGE_DOORBELL_CONTROL_A, align 4
  %36 = load i32, i32* @ENABLE_DROP_F, align 4
  %37 = load i32, i32* @ENABLE_DROP_F, align 4
  %38 = call i32 @csio_set_reg_field(%struct.csio_hw* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %40 = load i32, i32* @CSIO_SGE_FLBUF_SIZE1, align 4
  %41 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %39, i32 1, i32 %40)
  %42 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %43 = load i32, i32* @CSIO_SGE_FLBUF_SIZE2, align 4
  %44 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %45 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %50 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = and i32 %48, %53
  %55 = load i32, i32* @SGE_FL_BUFFER_SIZE2_A, align 4
  %56 = call i32 @csio_wr_reg32(%struct.csio_hw* %42, i32 %54, i32 %55)
  %57 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %58 = load i32, i32* @CSIO_SGE_FLBUF_SIZE3, align 4
  %59 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %60 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %65 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = xor i32 %67, -1
  %69 = and i32 %63, %68
  %70 = load i32, i32* @SGE_FL_BUFFER_SIZE3_A, align 4
  %71 = call i32 @csio_wr_reg32(%struct.csio_hw* %57, i32 %69, i32 %70)
  %72 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %73 = load i32, i32* @CSIO_SGE_FLBUF_SIZE4, align 4
  %74 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %72, i32 4, i32 %73)
  %75 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %76 = load i32, i32* @CSIO_SGE_FLBUF_SIZE5, align 4
  %77 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %75, i32 5, i32 %76)
  %78 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %79 = load i32, i32* @CSIO_SGE_FLBUF_SIZE6, align 4
  %80 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %78, i32 6, i32 %79)
  %81 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %82 = load i32, i32* @CSIO_SGE_FLBUF_SIZE7, align 4
  %83 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %81, i32 7, i32 %82)
  %84 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %85 = load i32, i32* @CSIO_SGE_FLBUF_SIZE8, align 4
  %86 = call i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw* %84, i32 8, i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %96, %1
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @CSIO_SGE_FL_SIZE_REGS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %93 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @csio_get_flbuf_size(%struct.csio_hw* %92, %struct.csio_sge* %93, i32 %94)
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %87

99:                                               ; preds = %87
  %100 = load i32, i32* @CSIO_SGE_TIMER_VAL_0, align 4
  %101 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %102 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @CSIO_SGE_TIMER_VAL_1, align 4
  %106 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %107 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @CSIO_SGE_TIMER_VAL_2, align 4
  %111 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %112 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @CSIO_SGE_TIMER_VAL_3, align 4
  %116 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %117 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @CSIO_SGE_TIMER_VAL_4, align 4
  %121 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %122 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* @CSIO_SGE_TIMER_VAL_5, align 4
  %126 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %127 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* @CSIO_SGE_INT_CNT_VAL_0, align 4
  %131 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %132 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @CSIO_SGE_INT_CNT_VAL_1, align 4
  %136 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %137 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* @CSIO_SGE_INT_CNT_VAL_2, align 4
  %141 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %142 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @CSIO_SGE_INT_CNT_VAL_3, align 4
  %146 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %147 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 %145, i32* %149, align 4
  %150 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %151 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %152 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @THRESHOLD_0_V(i32 %155)
  %157 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %158 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @THRESHOLD_1_V(i32 %161)
  %163 = or i32 %156, %162
  %164 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %165 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @THRESHOLD_2_V(i32 %168)
  %170 = or i32 %163, %169
  %171 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %172 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @THRESHOLD_3_V(i32 %175)
  %177 = or i32 %170, %176
  %178 = load i32, i32* @SGE_INGRESS_RX_THRESHOLD_A, align 4
  %179 = call i32 @csio_wr_reg32(%struct.csio_hw* %150, i32 %177, i32 %178)
  %180 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %181 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %182 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %183 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %181, i32 %186)
  %188 = call i32 @TIMERVALUE0_V(i32 %187)
  %189 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %190 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %191 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %189, i32 %194)
  %196 = call i32 @TIMERVALUE1_V(i32 %195)
  %197 = or i32 %188, %196
  %198 = load i32, i32* @SGE_TIMER_VALUE_0_AND_1_A, align 4
  %199 = call i32 @csio_wr_reg32(%struct.csio_hw* %180, i32 %197, i32 %198)
  %200 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %201 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %202 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %203 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %201, i32 %206)
  %208 = call i32 @TIMERVALUE2_V(i32 %207)
  %209 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %210 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %211 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %209, i32 %214)
  %216 = call i32 @TIMERVALUE3_V(i32 %215)
  %217 = or i32 %208, %216
  %218 = load i32, i32* @SGE_TIMER_VALUE_2_AND_3_A, align 4
  %219 = call i32 @csio_wr_reg32(%struct.csio_hw* %200, i32 %217, i32 %218)
  %220 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %221 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %222 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %223 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %221, i32 %226)
  %228 = call i32 @TIMERVALUE4_V(i32 %227)
  %229 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %230 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %231 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @csio_us_to_core_ticks(%struct.csio_hw* %229, i32 %234)
  %236 = call i32 @TIMERVALUE5_V(i32 %235)
  %237 = or i32 %228, %236
  %238 = load i32, i32* @SGE_TIMER_VALUE_4_AND_5_A, align 4
  %239 = call i32 @csio_wr_reg32(%struct.csio_hw* %220, i32 %237, i32 %238)
  %240 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %241 = call i32 @csio_init_intr_coalesce_parms(%struct.csio_hw* %240)
  ret void
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @LP_INT_THRESH_T5_V(i32) #1

declare dso_local i32 @HP_INT_THRESH_T5_V(i32) #1

declare dso_local i32 @CSIO_SET_FLBUF_SIZE(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_get_flbuf_size(%struct.csio_hw*, %struct.csio_sge*, i32) #1

declare dso_local i32 @THRESHOLD_0_V(i32) #1

declare dso_local i32 @THRESHOLD_1_V(i32) #1

declare dso_local i32 @THRESHOLD_2_V(i32) #1

declare dso_local i32 @THRESHOLD_3_V(i32) #1

declare dso_local i32 @TIMERVALUE0_V(i32) #1

declare dso_local i32 @csio_us_to_core_ticks(%struct.csio_hw*, i32) #1

declare dso_local i32 @TIMERVALUE1_V(i32) #1

declare dso_local i32 @TIMERVALUE2_V(i32) #1

declare dso_local i32 @TIMERVALUE3_V(i32) #1

declare dso_local i32 @TIMERVALUE4_V(i32) #1

declare dso_local i32 @TIMERVALUE5_V(i32) #1

declare dso_local i32 @csio_init_intr_coalesce_parms(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
