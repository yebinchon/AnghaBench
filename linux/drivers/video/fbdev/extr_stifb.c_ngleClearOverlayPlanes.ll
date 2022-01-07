; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_ngleClearOverlayPlanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_ngleClearOverlayPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IndexedDcd = common dso_local global i32 0, align 4
@Otc04 = common dso_local global i32 0, align 4
@Ots08 = common dso_local global i32 0, align 4
@AddrLong = common dso_local global i32 0, align 4
@BINovly = common dso_local global i32 0, align 4
@RopSrc = common dso_local global i32 0, align 4
@BitmapExtent08 = common dso_local global i32 0, align 4
@DataDynamic = common dso_local global i32 0, align 4
@MaskOtc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32, i32)* @ngleClearOverlayPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngleClearOverlayPlanes(%struct.stifb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stifb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %11 = call i32 @NGLE_LOCK(%struct.stifb_info* %10)
  %12 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @GET_FIFO_SLOTS(%struct.stifb_info* %12, i32 %13, i32 8)
  %15 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %16 = load i32, i32* @IndexedDcd, align 4
  %17 = load i32, i32* @Otc04, align 4
  %18 = load i32, i32* @Ots08, align 4
  %19 = load i32, i32* @AddrLong, align 4
  %20 = call i32 @BAJustPoint(i32 0)
  %21 = load i32, i32* @BINovly, align 4
  %22 = call i32 @BAIndexBase(i32 0)
  %23 = call i32 @BA(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 @NGLE_QUICK_SET_DST_BM_ACCESS(%struct.stifb_info* %15, i32 %23)
  %25 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %26 = call i32 @NGLE_SET_TRANSFERDATA(%struct.stifb_info* %25, i32 -1)
  %27 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @NGLE_REALLY_SET_IMAGE_FG_COLOR(%struct.stifb_info* %27, i32 %28)
  %30 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @NGLE_REALLY_SET_IMAGE_PLANEMASK(%struct.stifb_info* %30, i32 %31)
  store i32 0, i32* %8, align 4
  %33 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %34 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %40 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @NGLE_SET_DSTXY(%struct.stifb_info* %45, i32 %46)
  %48 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %49 = load i32, i32* @RopSrc, align 4
  %50 = call i32 @MaskAddrOffset(i32 0)
  %51 = load i32, i32* @BitmapExtent08, align 4
  %52 = call i32 @StaticReg(i32 0)
  %53 = load i32, i32* @DataDynamic, align 4
  %54 = load i32, i32* @MaskOtc, align 4
  %55 = call i32 @BGx(i32 0)
  %56 = call i32 @FGx(i32 0)
  %57 = call i32 @IBOvals(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = call i32 @NGLE_QUICK_SET_IMAGE_BITMAP_OP(%struct.stifb_info* %48, i32 %57)
  %59 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @SET_LENXY_START_RECFILL(%struct.stifb_info* %59, i32 %60)
  %62 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %63 = call i32 @NGLE_UNLOCK(%struct.stifb_info* %62)
  ret void
}

declare dso_local i32 @NGLE_LOCK(%struct.stifb_info*) #1

declare dso_local i32 @GET_FIFO_SLOTS(%struct.stifb_info*, i32, i32) #1

declare dso_local i32 @NGLE_QUICK_SET_DST_BM_ACCESS(%struct.stifb_info*, i32) #1

declare dso_local i32 @BA(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BAJustPoint(i32) #1

declare dso_local i32 @BAIndexBase(i32) #1

declare dso_local i32 @NGLE_SET_TRANSFERDATA(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_REALLY_SET_IMAGE_FG_COLOR(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_REALLY_SET_IMAGE_PLANEMASK(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_SET_DSTXY(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_QUICK_SET_IMAGE_BITMAP_OP(%struct.stifb_info*, i32) #1

declare dso_local i32 @IBOvals(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MaskAddrOffset(i32) #1

declare dso_local i32 @StaticReg(i32) #1

declare dso_local i32 @BGx(i32) #1

declare dso_local i32 @FGx(i32) #1

declare dso_local i32 @SET_LENXY_START_RECFILL(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_UNLOCK(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
