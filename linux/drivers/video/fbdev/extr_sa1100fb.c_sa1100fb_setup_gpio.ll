; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LCCR0_CMS = common dso_local global i32 0, align 4
@LCCR0_Color = common dso_local global i32 0, align 4
@LCCR0_Dual = common dso_local global i32 0, align 4
@LCCR0_Act = common dso_local global i32 0, align 4
@GPIO_LDD11 = common dso_local global i32 0, align 4
@GPIO_LDD10 = common dso_local global i32 0, align 4
@GPIO_LDD9 = common dso_local global i32 0, align 4
@GPIO_LDD8 = common dso_local global i32 0, align 4
@GPIO_LDD15 = common dso_local global i32 0, align 4
@GPIO_LDD14 = common dso_local global i32 0, align 4
@GPIO_LDD13 = common dso_local global i32 0, align 4
@GPIO_LDD12 = common dso_local global i32 0, align 4
@GPDR = common dso_local global i32 0, align 4
@GAFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_setup_gpio(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @LCCR0_CMS, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @LCCR0_Color, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LCCR0_Dual, align 4
  %17 = load i32, i32* @LCCR0_Act, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = load i32, i32* @GPIO_LDD11, align 4
  %23 = load i32, i32* @GPIO_LDD10, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GPIO_LDD9, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GPIO_LDD8, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 8
  br i1 %34, label %45, label %35

35:                                               ; preds = %21
  %36 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LCCR0_Dual, align 4
  %40 = load i32, i32* @LCCR0_Act, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @LCCR0_Dual, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %35, %21
  %46 = load i32, i32* @GPIO_LDD15, align 4
  %47 = load i32, i32* @GPIO_LDD14, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @GPIO_LDD13, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @GPIO_LDD12, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %35
  br label %56

56:                                               ; preds = %55, %12, %1
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @local_irq_save(i64 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @GPDR, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @GPDR, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @GAFR, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* @GAFR, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  br label %70

70:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
