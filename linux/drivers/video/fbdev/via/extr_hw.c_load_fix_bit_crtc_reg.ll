; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_load_fix_bit_crtc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_load_fix_bit_crtc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@CR03 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@CR35 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@CR33 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_K800 = common dso_local global i64 0, align 8
@UNICHROME_K8M890 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@CLE266_REVISION_AX = common dso_local global i64 0, align 8
@SR1A = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_fix_bit_crtc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_fix_bit_crtc_reg() #0 {
  %1 = call i32 (...) @viafb_unlock_crt()
  %2 = load i32, i32* @CR03, align 4
  %3 = load i32, i32* @VIACR, align 4
  %4 = load i64, i64* @BIT7, align 8
  %5 = call i32 @viafb_write_reg_mask(i32 %2, i32 %3, i32 128, i64 %4)
  %6 = load i32, i32* @CR35, align 4
  %7 = load i32, i32* @VIACR, align 4
  %8 = load i64, i64* @BIT4, align 8
  %9 = call i32 @viafb_write_reg_mask(i32 %6, i32 %7, i32 16, i64 %8)
  %10 = load i32, i32* @CR33, align 4
  %11 = load i32, i32* @VIACR, align 4
  %12 = load i64, i64* @BIT0, align 8
  %13 = load i64, i64* @BIT1, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @BIT2, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @viafb_write_reg_mask(i32 %10, i32 %11, i32 6, i64 %16)
  %18 = call i32 (...) @viafb_lock_crt()
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UNICHROME_K800, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UNICHROME_K8M890, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26, %0
  %35 = load i32, i32* @CR33, align 4
  %36 = load i32, i32* @VIACR, align 4
  %37 = load i64, i64* @BIT3, align 8
  %38 = call i32 @viafb_write_reg_mask(i32 %35, i32 %36, i32 8, i64 %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UNICHROME_CLE266, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CLE266_REVISION_AX, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @SR1A, align 4
  %57 = load i32, i32* @VIASR, align 4
  %58 = load i64, i64* @BIT1, align 8
  %59 = call i32 @viafb_write_reg_mask(i32 %56, i32 %57, i32 2, i64 %58)
  br label %60

60:                                               ; preds = %55, %47, %39
  ret void
}

declare dso_local i32 @viafb_unlock_crt(...) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

declare dso_local i32 @viafb_lock_crt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
