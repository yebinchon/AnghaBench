; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_ngleResetAttrPlanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_ngleResetAttrPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IndexedDcd = common dso_local global i32 0, align 4
@Otc32 = common dso_local global i32 0, align 4
@OtsIndirect = common dso_local global i32 0, align 4
@AddrLong = common dso_local global i32 0, align 4
@BINattr = common dso_local global i32 0, align 4
@RopSrc = common dso_local global i32 0, align 4
@BitmapExtent08 = common dso_local global i32 0, align 4
@DataDynamic = common dso_local global i32 0, align 4
@MaskOtc = common dso_local global i32 0, align 4
@S9000_ID_A1659A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32)* @ngleResetAttrPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngleResetAttrPlanes(%struct.stifb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.stifb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %9 = call i32 @NGLE_LOCK(%struct.stifb_info* %8)
  %10 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GET_FIFO_SLOTS(%struct.stifb_info* %10, i32 %11, i32 4)
  %13 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %14 = load i32, i32* @IndexedDcd, align 4
  %15 = load i32, i32* @Otc32, align 4
  %16 = load i32, i32* @OtsIndirect, align 4
  %17 = load i32, i32* @AddrLong, align 4
  %18 = call i32 @BAJustPoint(i32 0)
  %19 = load i32, i32* @BINattr, align 4
  %20 = call i32 @BAIndexBase(i32 0)
  %21 = call i32 @BA(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = call i32 @NGLE_QUICK_SET_DST_BM_ACCESS(%struct.stifb_info* %13, i32 %21)
  %23 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @NGLE_QUICK_SET_CTL_PLN_REG(%struct.stifb_info* %23, i32 %24)
  %26 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %27 = call i32 @NGLE_SET_TRANSFERDATA(%struct.stifb_info* %26, i32 -1)
  %28 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %29 = load i32, i32* @RopSrc, align 4
  %30 = call i32 @MaskAddrOffset(i32 0)
  %31 = load i32, i32* @BitmapExtent08, align 4
  %32 = call i32 @StaticReg(i32 1)
  %33 = load i32, i32* @DataDynamic, align 4
  %34 = load i32, i32* @MaskOtc, align 4
  %35 = call i32 @BGx(i32 0)
  %36 = call i32 @FGx(i32 0)
  %37 = call i32 @IBOvals(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @NGLE_QUICK_SET_IMAGE_BITMAP_OP(%struct.stifb_info* %28, i32 %37)
  store i32 0, i32* %6, align 4
  %39 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %40 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 16
  %45 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %46 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %44, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @GET_FIFO_SLOTS(%struct.stifb_info* %51, i32 %52, i32 2)
  %54 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @NGLE_SET_DSTXY(%struct.stifb_info* %54, i32 %55)
  %57 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @SET_LENXY_START_RECFILL(%struct.stifb_info* %57, i32 %58)
  %60 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %61 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @S9000_ID_A1659A, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %2
  store i32 83886080, i32* %6, align 4
  %66 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @GET_FIFO_SLOTS(%struct.stifb_info* %66, i32 %67, i32 2)
  %69 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @NGLE_SET_DSTXY(%struct.stifb_info* %69, i32 %70)
  store i32 262145, i32* %7, align 4
  %72 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @SET_LENXY_START_RECFILL(%struct.stifb_info* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %2
  %76 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @GET_FIFO_SLOTS(%struct.stifb_info* %76, i32 %77, i32 1)
  %79 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %80 = call i32 @NGLE_QUICK_SET_CTL_PLN_REG(%struct.stifb_info* %79, i32 0)
  %81 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %82 = call i32 @NGLE_UNLOCK(%struct.stifb_info* %81)
  ret void
}

declare dso_local i32 @NGLE_LOCK(%struct.stifb_info*) #1

declare dso_local i32 @GET_FIFO_SLOTS(%struct.stifb_info*, i32, i32) #1

declare dso_local i32 @NGLE_QUICK_SET_DST_BM_ACCESS(%struct.stifb_info*, i32) #1

declare dso_local i32 @BA(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BAJustPoint(i32) #1

declare dso_local i32 @BAIndexBase(i32) #1

declare dso_local i32 @NGLE_QUICK_SET_CTL_PLN_REG(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_SET_TRANSFERDATA(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_QUICK_SET_IMAGE_BITMAP_OP(%struct.stifb_info*, i32) #1

declare dso_local i32 @IBOvals(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MaskAddrOffset(i32) #1

declare dso_local i32 @StaticReg(i32) #1

declare dso_local i32 @BGx(i32) #1

declare dso_local i32 @FGx(i32) #1

declare dso_local i32 @NGLE_SET_DSTXY(%struct.stifb_info*, i32) #1

declare dso_local i32 @SET_LENXY_START_RECFILL(%struct.stifb_info*, i32) #1

declare dso_local i32 @NGLE_UNLOCK(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
