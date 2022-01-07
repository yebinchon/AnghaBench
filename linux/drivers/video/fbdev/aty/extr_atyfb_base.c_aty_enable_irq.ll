; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i32, i32, i32 }

@aty_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"atyfb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@CRTC_INT_EN_MASK = common dso_local global i32 0, align 4
@CRTC_VBLANK_INT_AK = common dso_local global i32 0, align 4
@CRTC_VBLANK_INT_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"atyfb: someone disabled IRQ [%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atyfb_par*, i32)* @aty_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_enable_irq(%struct.atyfb_par* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atyfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %8 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %7, i32 0, i32 1
  %9 = call i32 @test_and_set_bit(i32 0, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %13 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @aty_irq, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %18 = call i64 @request_irq(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.atyfb_par* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %22 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %21, i32 0, i32 1
  %23 = call i32 @clear_bit(i32 0, i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %11
  %27 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %28 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load i32, i32* @CRTC_INT_CNTL, align 4
  %31 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %32 = call i32 @aty_ld_le32(i32 %30, %struct.atyfb_par* %31)
  %33 = load i32, i32* @CRTC_INT_EN_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @CRTC_INT_CNTL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CRTC_VBLANK_INT_AK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %40 = call i32 @aty_st_le32(i32 %35, i32 %38, %struct.atyfb_par* %39)
  %41 = load i32, i32* @CRTC_INT_CNTL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CRTC_VBLANK_INT_EN, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %46 = call i32 @aty_st_le32(i32 %41, i32 %44, %struct.atyfb_par* %45)
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %48 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  br label %80

50:                                               ; preds = %2
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %55 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load i32, i32* @CRTC_INT_CNTL, align 4
  %58 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %59 = call i32 @aty_ld_le32(i32 %57, %struct.atyfb_par* %58)
  %60 = load i32, i32* @CRTC_INT_EN_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CRTC_VBLANK_INT_EN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @CRTC_INT_CNTL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CRTC_VBLANK_INT_EN, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %74 = call i32 @aty_st_le32(i32 %69, i32 %72, %struct.atyfb_par* %73)
  br label %75

75:                                               ; preds = %66, %53
  %76 = load %struct.atyfb_par*, %struct.atyfb_par** %4, align 8
  %77 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  br label %79

79:                                               ; preds = %75, %50
  br label %80

80:                                               ; preds = %79, %26
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.atyfb_par*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
