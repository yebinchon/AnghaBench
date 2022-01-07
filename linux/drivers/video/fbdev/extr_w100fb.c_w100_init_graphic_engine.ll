; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_init_graphic_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_init_graphic_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { i32, i32 }
%union.dp_gui_master_cntl_u = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%union.dp_mix_u = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%union.dp_datatype_u = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32 }
%union.dp_cntl_u = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@W100_FB_BASE = common dso_local global i32 0, align 4
@remapped_regs = common dso_local global i64 0, align 8
@mmDST_OFFSET = common dso_local global i64 0, align 8
@mmDST_PITCH = common dso_local global i64 0, align 8
@mmSRC_OFFSET = common dso_local global i64 0, align 8
@mmSRC_PITCH = common dso_local global i64 0, align 8
@mmSC_TOP_LEFT = common dso_local global i64 0, align 8
@mmSC_BOTTOM_RIGHT = common dso_local global i64 0, align 8
@mmSRC_SC_BOTTOM_RIGHT = common dso_local global i64 0, align 8
@mmDP_CNTL = common dso_local global i64 0, align 8
@GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@SRC_DATATYPE_EQU_DST = common dso_local global i32 0, align 4
@ROP3_SRCCOPY = common dso_local global i32 0, align 4
@DP_SRC_MEM_RECTANGULAR = common dso_local global i32 0, align 4
@DP_OP_ROP = common dso_local global i32 0, align 4
@mmDP_GUI_MASTER_CNTL = common dso_local global i64 0, align 8
@mmDP_DATATYPE = common dso_local global i64 0, align 8
@mmDP_MIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_init_graphic_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_init_graphic_engine(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca %union.dp_gui_master_cntl_u, align 8
  %4 = alloca %union.dp_mix_u, align 4
  %5 = alloca %union.dp_datatype_u, align 8
  %6 = alloca %union.dp_cntl_u, align 4
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %7 = call i32 @w100_fifo_wait(i32 4)
  %8 = load i32, i32* @W100_FB_BASE, align 4
  %9 = load i64, i64* @remapped_regs, align 8
  %10 = load i64, i64* @mmDST_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %8, i64 %11)
  %13 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %14 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @remapped_regs, align 8
  %17 = load i64, i64* @mmDST_PITCH, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %15, i64 %18)
  %20 = load i32, i32* @W100_FB_BASE, align 4
  %21 = load i64, i64* @remapped_regs, align 8
  %22 = load i64, i64* @mmSRC_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  %25 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %26 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @remapped_regs, align 8
  %29 = load i64, i64* @mmSRC_PITCH, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %27, i64 %30)
  %32 = call i32 @w100_fifo_wait(i32 3)
  %33 = load i64, i64* @remapped_regs, align 8
  %34 = load i64, i64* @mmSC_TOP_LEFT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  %37 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %38 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %42 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load i64, i64* @remapped_regs, align 8
  %46 = load i64, i64* @mmSC_BOTTOM_RIGHT, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  %49 = load i64, i64* @remapped_regs, align 8
  %50 = load i64, i64* @mmSRC_SC_BOTTOM_RIGHT, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 536813567, i64 %51)
  %53 = call i32 @w100_fifo_wait(i32 4)
  %54 = bitcast %union.dp_cntl_u* %6 to i32*
  store i32 0, i32* %54, align 4
  %55 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i32 1, i32* %64, align 4
  %65 = bitcast %union.dp_cntl_u* %6 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i32 1, i32* %66, align 4
  %67 = bitcast %union.dp_cntl_u* %6 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @remapped_regs, align 8
  %70 = load i64, i64* @mmDP_CNTL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %68, i64 %71)
  %73 = bitcast %union.dp_gui_master_cntl_u* %3 to i32*
  store i32 0, i32* %73, align 8
  %74 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @GMC_BRUSH_NONE, align 4
  %83 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 8
  %85 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 3, i32* %86, align 8
  %87 = load i32, i32* @SRC_DATATYPE_EQU_DST, align 4
  %88 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 4
  %90 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32 1, i32* %91, align 4
  %92 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 13
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @ROP3_SRCCOPY, align 4
  %95 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @DP_SRC_MEM_RECTANGULAR, align 4
  %98 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 6
  store i32 1, i32* %101, align 8
  %102 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 7
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @DP_OP_ROP, align 4
  %105 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = bitcast %union.dp_gui_master_cntl_u* %3 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @remapped_regs, align 8
  %110 = load i64, i64* @mmDP_GUI_MASTER_CNTL, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %108, i64 %111)
  %113 = bitcast %union.dp_mix_u* %4 to i32*
  store i32 0, i32* %113, align 4
  %114 = bitcast %union.dp_datatype_u* %5 to i32*
  store i32 0, i32* %114, align 8
  %115 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 8
  %123 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 4
  %130 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = bitcast %union.dp_datatype_u* %5 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = bitcast %union.dp_datatype_u* %5 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* @remapped_regs, align 8
  %145 = load i64, i64* @mmDP_DATATYPE, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %143, i64 %146)
  %148 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 8
  %151 = bitcast %union.dp_mix_u* %4 to %struct.TYPE_7__*
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = bitcast %union.dp_mix_u* %4 to %struct.TYPE_7__*
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 4
  %155 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = bitcast %union.dp_mix_u* %4 to %struct.TYPE_7__*
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = bitcast %union.dp_gui_master_cntl_u* %3 to %struct.TYPE_8__*
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = bitcast %union.dp_mix_u* %4 to %struct.TYPE_7__*
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = bitcast %union.dp_mix_u* %4 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* @remapped_regs, align 8
  %168 = load i64, i64* @mmDP_MIX, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %166, i64 %169)
  ret void
}

declare dso_local i32 @w100_fifo_wait(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
