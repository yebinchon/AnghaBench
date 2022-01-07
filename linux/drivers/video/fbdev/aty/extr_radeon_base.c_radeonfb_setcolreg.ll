; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.radeonfb_info* }
%struct.radeonfb_info = type { i64, i32, i64 }

@VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@DAC_CNTL2 = common dso_local global i32 0, align 4
@DAC2_PALETTE_ACCESS_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @radeonfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeonfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.radeonfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load %struct.radeonfb_info*, %struct.radeonfb_info** %18, align 8
  store %struct.radeonfb_info* %19, %struct.radeonfb_info** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %21 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %6
  %25 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %26 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %31 = call i32 @INPLL(i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @PIXCLK_DAC_ALWAYS_ONb, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @OUTPLL(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %40 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* @DAC_CNTL2, align 4
  %45 = call i32 @INREG(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @DAC2_PALETTE_ACCESS_CNTL, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @DAC_CNTL2, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @OUTREG(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %43, %38
  br label %54

54:                                               ; preds = %53, %6
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %61 = call i32 @radeon_setcolreg(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, %struct.radeonfb_info* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %63 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %54
  %67 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %68 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @OUTPLL(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66, %54
  %76 = load i32, i32* %16, align 4
  ret i32 %76
}

declare dso_local i32 @INPLL(i32) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @radeon_setcolreg(i32, i32, i32, i32, i32, %struct.radeonfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
