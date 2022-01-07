; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_aty_init_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_aty_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RESET_3D = common dso_local global i32 0, align 4
@MEM_VGA_WP_SEL = common dso_local global i32 0, align 4
@MEM_VGA_RP_SEL = common dso_local global i32 0, align 4
@CONTEXT_MASK = common dso_local global i32 0, align 4
@DST_OFF_PITCH = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT = common dso_local global i32 0, align 4
@DST_BRES_ERR = common dso_local global i32 0, align 4
@DST_BRES_INC = common dso_local global i32 0, align 4
@DST_BRES_DEC = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@SRC_OFF_PITCH = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@SRC_HEIGHT1_WIDTH1 = common dso_local global i32 0, align 4
@SRC_Y_X_START = common dso_local global i32 0, align 4
@SRC_HEIGHT2_WIDTH2 = common dso_local global i32 0, align 4
@SRC_CNTL = common dso_local global i32 0, align 4
@SRC_LINE_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@HOST_CNTL = common dso_local global i32 0, align 4
@HOST_BYTE_ALIGN = common dso_local global i32 0, align 4
@PAT_REG0 = common dso_local global i32 0, align 4
@PAT_REG1 = common dso_local global i32 0, align 4
@PAT_CNTL = common dso_local global i32 0, align 4
@SC_LEFT = common dso_local global i32 0, align 4
@SC_TOP = common dso_local global i32 0, align 4
@SC_BOTTOM = common dso_local global i32 0, align 4
@SC_RIGHT = common dso_local global i32 0, align 4
@DP_BKGD_CLR = common dso_local global i32 0, align 4
@DP_FRGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MASK = common dso_local global i32 0, align 4
@DP_MIX = common dso_local global i32 0, align 4
@FRGD_MIX_S = common dso_local global i32 0, align 4
@BKGD_MIX_D = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@CLR_CMP_CLR = common dso_local global i32 0, align 4
@CLR_CMP_MASK = common dso_local global i32 0, align 4
@CLR_CMP_CNTL = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@DP_CHAIN_MASK = common dso_local global i32 0, align 4
@SCALE_3D_CNTL = common dso_local global i32 0, align 4
@Z_CNTL = common dso_local global i32 0, align 4
@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@GUI_TRAJ_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aty_init_engine(%struct.atyfb_par* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.atyfb_par*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 8
  %16 = sdiv i32 %10, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 3
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @RESET_3D, align 4
  %33 = call i64 @M64_HAS(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %37 = call i32 @reset_GTC_3D_engine(%struct.atyfb_par* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %40 = call i32 @aty_reset_engine(%struct.atyfb_par* %39)
  %41 = load i32, i32* @MEM_VGA_WP_SEL, align 4
  %42 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %43 = call i32 @aty_st_le32(i32 %41, i32 65536, %struct.atyfb_par* %42)
  %44 = load i32, i32* @MEM_VGA_RP_SEL, align 4
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %46 = call i32 @aty_st_le32(i32 %44, i32 65536, %struct.atyfb_par* %45)
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %48 = call i32 @wait_for_fifo(i32 14, %struct.atyfb_par* %47)
  %49 = load i32, i32* @CONTEXT_MASK, align 4
  %50 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %51 = call i32 @aty_st_le32(i32 %49, i32 -1, %struct.atyfb_par* %50)
  %52 = load i32, i32* @DST_OFF_PITCH, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 8
  %55 = shl i32 %54, 22
  %56 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %57 = call i32 @aty_st_le32(i32 %52, i32 %55, %struct.atyfb_par* %56)
  %58 = load i32, i32* @DST_Y_X, align 4
  %59 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %60 = call i32 @aty_st_le32(i32 %58, i32 0, %struct.atyfb_par* %59)
  %61 = load i32, i32* @DST_HEIGHT, align 4
  %62 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %63 = call i32 @aty_st_le32(i32 %61, i32 0, %struct.atyfb_par* %62)
  %64 = load i32, i32* @DST_BRES_ERR, align 4
  %65 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %66 = call i32 @aty_st_le32(i32 %64, i32 0, %struct.atyfb_par* %65)
  %67 = load i32, i32* @DST_BRES_INC, align 4
  %68 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %69 = call i32 @aty_st_le32(i32 %67, i32 0, %struct.atyfb_par* %68)
  %70 = load i32, i32* @DST_BRES_DEC, align 4
  %71 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %72 = call i32 @aty_st_le32(i32 %70, i32 0, %struct.atyfb_par* %71)
  %73 = load i32, i32* @DST_CNTL, align 4
  %74 = load i32, i32* @DST_LAST_PEL, align 4
  %75 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %80 = call i32 @aty_st_le32(i32 %73, i32 %78, %struct.atyfb_par* %79)
  %81 = load i32, i32* @SRC_OFF_PITCH, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sdiv i32 %82, 8
  %84 = shl i32 %83, 22
  %85 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %86 = call i32 @aty_st_le32(i32 %81, i32 %84, %struct.atyfb_par* %85)
  %87 = load i32, i32* @SRC_Y_X, align 4
  %88 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %89 = call i32 @aty_st_le32(i32 %87, i32 0, %struct.atyfb_par* %88)
  %90 = load i32, i32* @SRC_HEIGHT1_WIDTH1, align 4
  %91 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %92 = call i32 @aty_st_le32(i32 %90, i32 1, %struct.atyfb_par* %91)
  %93 = load i32, i32* @SRC_Y_X_START, align 4
  %94 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %95 = call i32 @aty_st_le32(i32 %93, i32 0, %struct.atyfb_par* %94)
  %96 = load i32, i32* @SRC_HEIGHT2_WIDTH2, align 4
  %97 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %98 = call i32 @aty_st_le32(i32 %96, i32 1, %struct.atyfb_par* %97)
  %99 = load i32, i32* @SRC_CNTL, align 4
  %100 = load i32, i32* @SRC_LINE_X_LEFT_TO_RIGHT, align 4
  %101 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %102 = call i32 @aty_st_le32(i32 %99, i32 %100, %struct.atyfb_par* %101)
  %103 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %104 = call i32 @wait_for_fifo(i32 13, %struct.atyfb_par* %103)
  %105 = load i32, i32* @HOST_CNTL, align 4
  %106 = load i32, i32* @HOST_BYTE_ALIGN, align 4
  %107 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %108 = call i32 @aty_st_le32(i32 %105, i32 %106, %struct.atyfb_par* %107)
  %109 = load i32, i32* @PAT_REG0, align 4
  %110 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %111 = call i32 @aty_st_le32(i32 %109, i32 0, %struct.atyfb_par* %110)
  %112 = load i32, i32* @PAT_REG1, align 4
  %113 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %114 = call i32 @aty_st_le32(i32 %112, i32 0, %struct.atyfb_par* %113)
  %115 = load i32, i32* @PAT_CNTL, align 4
  %116 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %117 = call i32 @aty_st_le32(i32 %115, i32 0, %struct.atyfb_par* %116)
  %118 = load i32, i32* @SC_LEFT, align 4
  %119 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %120 = call i32 @aty_st_le32(i32 %118, i32 0, %struct.atyfb_par* %119)
  %121 = load i32, i32* @SC_TOP, align 4
  %122 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %123 = call i32 @aty_st_le32(i32 %121, i32 0, %struct.atyfb_par* %122)
  %124 = load i32, i32* @SC_BOTTOM, align 4
  %125 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %126 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %131 = call i32 @aty_st_le32(i32 %124, i32 %129, %struct.atyfb_par* %130)
  %132 = load i32, i32* @SC_RIGHT, align 4
  %133 = load i32, i32* %6, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %136 = call i32 @aty_st_le32(i32 %132, i32 %134, %struct.atyfb_par* %135)
  %137 = load i32, i32* @DP_BKGD_CLR, align 4
  %138 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %139 = call i32 @aty_st_le32(i32 %137, i32 0, %struct.atyfb_par* %138)
  %140 = load i32, i32* @DP_FRGD_CLR, align 4
  %141 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %142 = call i32 @aty_st_le32(i32 %140, i32 -1, %struct.atyfb_par* %141)
  %143 = load i32, i32* @DP_WRITE_MASK, align 4
  %144 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %145 = call i32 @aty_st_le32(i32 %143, i32 -1, %struct.atyfb_par* %144)
  %146 = load i32, i32* @DP_MIX, align 4
  %147 = load i32, i32* @FRGD_MIX_S, align 4
  %148 = load i32, i32* @BKGD_MIX_D, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %151 = call i32 @aty_st_le32(i32 %146, i32 %149, %struct.atyfb_par* %150)
  %152 = load i32, i32* @DP_SRC, align 4
  %153 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %154 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %155 = call i32 @aty_st_le32(i32 %152, i32 %153, %struct.atyfb_par* %154)
  %156 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %157 = call i32 @wait_for_fifo(i32 3, %struct.atyfb_par* %156)
  %158 = load i32, i32* @CLR_CMP_CLR, align 4
  %159 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %160 = call i32 @aty_st_le32(i32 %158, i32 0, %struct.atyfb_par* %159)
  %161 = load i32, i32* @CLR_CMP_MASK, align 4
  %162 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %163 = call i32 @aty_st_le32(i32 %161, i32 -1, %struct.atyfb_par* %162)
  %164 = load i32, i32* @CLR_CMP_CNTL, align 4
  %165 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %166 = call i32 @aty_st_le32(i32 %164, i32 0, %struct.atyfb_par* %165)
  %167 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %168 = call i32 @wait_for_fifo(i32 2, %struct.atyfb_par* %167)
  %169 = load i32, i32* @DP_PIX_WIDTH, align 4
  %170 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %171 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %175 = call i32 @aty_st_le32(i32 %169, i32 %173, %struct.atyfb_par* %174)
  %176 = load i32, i32* @DP_CHAIN_MASK, align 4
  %177 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %178 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %182 = call i32 @aty_st_le32(i32 %176, i32 %180, %struct.atyfb_par* %181)
  %183 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %184 = call i32 @wait_for_fifo(i32 5, %struct.atyfb_par* %183)
  %185 = load i32, i32* @SCALE_3D_CNTL, align 4
  %186 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %187 = call i32 @aty_st_le32(i32 %185, i32 0, %struct.atyfb_par* %186)
  %188 = load i32, i32* @Z_CNTL, align 4
  %189 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %190 = call i32 @aty_st_le32(i32 %188, i32 0, %struct.atyfb_par* %189)
  %191 = load i32, i32* @CRTC_INT_CNTL, align 4
  %192 = load i32, i32* @CRTC_INT_CNTL, align 4
  %193 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %194 = call i32 @aty_ld_le32(i32 %192, %struct.atyfb_par* %193)
  %195 = and i32 %194, -33
  %196 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %197 = call i32 @aty_st_le32(i32 %191, i32 %195, %struct.atyfb_par* %196)
  %198 = load i32, i32* @GUI_TRAJ_CNTL, align 4
  %199 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %200 = call i32 @aty_st_le32(i32 %198, i32 1048611, %struct.atyfb_par* %199)
  %201 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %202 = call i32 @wait_for_idle(%struct.atyfb_par* %201)
  ret void
}

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @reset_GTC_3D_engine(%struct.atyfb_par*) #1

declare dso_local i32 @aty_reset_engine(%struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @wait_for_idle(%struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
