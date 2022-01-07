; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_activate_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_activate_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.pxafb_info = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0_SFM = common dso_local global i32 0, align 4
@LCCR0_IUM = common dso_local global i32 0, align 4
@LCCR0_EFM = common dso_local global i32 0, align 4
@LCCR0_QDM = common dso_local global i32 0, align 4
@LCCR0_BM = common dso_local global i32 0, align 4
@LCCR0_OUM = common dso_local global i32 0, align 4
@LCCR4 = common dso_local global i32 0, align 4
@LCCR4_PAL_FOR_MASK = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@LCCR1 = common dso_local global i32 0, align 4
@LCCR2 = common dso_local global i32 0, align 4
@LCCR3 = common dso_local global i32 0, align 4
@FDADR0 = common dso_local global i32 0, align 4
@LCCR0_SDS = common dso_local global i32 0, align 4
@FDADR1 = common dso_local global i32 0, align 4
@C_REENABLE = common dso_local global i32 0, align 4
@LCCR0_LCDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.pxafb_info*)* @pxafb_activate_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_activate_var(%struct.fb_var_screeninfo* %0, %struct.pxafb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.pxafb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.pxafb_info* %1, %struct.pxafb_info** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @local_irq_save(i32 %6)
  %8 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = call i32 @setup_parallel_timing(%struct.pxafb_info* %8, %struct.fb_var_screeninfo* %9)
  %11 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %13 = call i32 @setup_base_frame(%struct.pxafb_info* %11, %struct.fb_var_screeninfo* %12, i32 0)
  %14 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %15 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LCCR0_LDM, align 4
  %18 = load i32, i32* @LCCR0_SFM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LCCR0_IUM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LCCR0_EFM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LCCR0_QDM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LCCR0_BM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LCCR0_OUM, align 4
  %29 = or i32 %27, %28
  %30 = or i32 %16, %29
  %31 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %32 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = call i32 @pxafb_var_to_lccr3(%struct.fb_var_screeninfo* %33)
  %35 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %36 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %40 = load i32, i32* @LCCR4, align 4
  %41 = call i32 @lcd_readl(%struct.pxafb_info* %39, i32 %40)
  %42 = load i32, i32* @LCCR4_PAL_FOR_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %46 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %48 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LCCR4_PAL_FOR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %53 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @local_irq_restore(i32 %56)
  %58 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %59 = load i32, i32* @LCCR0, align 4
  %60 = call i32 @lcd_readl(%struct.pxafb_info* %58, i32 %59)
  %61 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %62 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %124, label %65

65:                                               ; preds = %2
  %66 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %67 = load i32, i32* @LCCR1, align 4
  %68 = call i32 @lcd_readl(%struct.pxafb_info* %66, i32 %67)
  %69 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %70 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %124, label %73

73:                                               ; preds = %65
  %74 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %75 = load i32, i32* @LCCR2, align 4
  %76 = call i32 @lcd_readl(%struct.pxafb_info* %74, i32 %75)
  %77 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %78 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %124, label %81

81:                                               ; preds = %73
  %82 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %83 = load i32, i32* @LCCR3, align 4
  %84 = call i32 @lcd_readl(%struct.pxafb_info* %82, i32 %83)
  %85 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %86 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %124, label %89

89:                                               ; preds = %81
  %90 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %91 = load i32, i32* @LCCR4, align 4
  %92 = call i32 @lcd_readl(%struct.pxafb_info* %90, i32 %91)
  %93 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %94 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %124, label %97

97:                                               ; preds = %89
  %98 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %99 = load i32, i32* @FDADR0, align 4
  %100 = call i32 @lcd_readl(%struct.pxafb_info* %98, i32 %99)
  %101 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %102 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %100, %105
  br i1 %106, label %124, label %107

107:                                              ; preds = %97
  %108 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %109 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LCCR0_SDS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %116 = load i32, i32* @FDADR1, align 4
  %117 = call i32 @lcd_readl(%struct.pxafb_info* %115, i32 %116)
  %118 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %119 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %117, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %114, %97, %89, %81, %73, %65, %2
  %125 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %126 = load i32, i32* @C_REENABLE, align 4
  %127 = call i32 @pxafb_schedule_work(%struct.pxafb_info* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %114, %107
  ret i32 0
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @setup_parallel_timing(%struct.pxafb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @setup_base_frame(%struct.pxafb_info*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @pxafb_var_to_lccr3(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @lcd_readl(%struct.pxafb_info*, i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

declare dso_local i32 @pxafb_schedule_work(%struct.pxafb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
