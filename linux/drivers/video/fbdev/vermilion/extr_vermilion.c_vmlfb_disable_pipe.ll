; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_disable_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_disable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vml_info = type { i32, %struct.vml_par* }
%struct.vml_par = type { i32 }

@VML_RCOMPSTAT = common dso_local global i32 0, align 4
@VML_MDVO_VDC_I_RCOMP = common dso_local global i32 0, align 4
@VML_DSPCCNTR = common dso_local global i32 0, align 4
@VML_GFX_ENABLE = common dso_local global i32 0, align 4
@VML_PIPEACONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vml_info*)* @vmlfb_disable_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmlfb_disable_pipe(%struct.vml_info* %0) #0 {
  %2 = alloca %struct.vml_info*, align 8
  %3 = alloca %struct.vml_par*, align 8
  store %struct.vml_info* %0, %struct.vml_info** %2, align 8
  %4 = load %struct.vml_info*, %struct.vml_info** %2, align 8
  %5 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %4, i32 0, i32 1
  %6 = load %struct.vml_par*, %struct.vml_par** %5, align 8
  store %struct.vml_par* %6, %struct.vml_par** %3, align 8
  %7 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %8 = load i32, i32* @VML_RCOMPSTAT, align 4
  %9 = call i32 @VML_WRITE32(%struct.vml_par* %7, i32 %8, i32 0)
  br label %10

10:                                               ; preds = %18, %1
  %11 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %12 = load i32, i32* @VML_RCOMPSTAT, align 4
  %13 = call i32 @VML_READ32(%struct.vml_par* %11, i32 %12)
  %14 = load i32, i32* @VML_MDVO_VDC_I_RCOMP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %21 = load i32, i32* @VML_DSPCCNTR, align 4
  %22 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %23 = load i32, i32* @VML_DSPCCNTR, align 4
  %24 = call i32 @VML_READ32(%struct.vml_par* %22, i32 %23)
  %25 = load i32, i32* @VML_GFX_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @VML_WRITE32(%struct.vml_par* %20, i32 %21, i32 %27)
  %29 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %30 = load i32, i32* @VML_DSPCCNTR, align 4
  %31 = call i32 @VML_READ32(%struct.vml_par* %29, i32 %30)
  %32 = load %struct.vml_info*, %struct.vml_info** %2, align 8
  %33 = call i32 @vml_wait_vblank(%struct.vml_info* %32)
  %34 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %35 = load i32, i32* @VML_PIPEACONF, align 4
  %36 = call i32 @VML_WRITE32(%struct.vml_par* %34, i32 %35, i32 0)
  %37 = load %struct.vml_par*, %struct.vml_par** %3, align 8
  %38 = load i32, i32* @VML_PIPEACONF, align 4
  %39 = call i32 @VML_READ32(%struct.vml_par* %37, i32 %38)
  %40 = load %struct.vml_info*, %struct.vml_info** %2, align 8
  %41 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  ret void
}

declare dso_local i32 @VML_WRITE32(%struct.vml_par*, i32, i32) #1

declare dso_local i32 @VML_READ32(%struct.vml_par*, i32) #1

declare dso_local i32 @vml_wait_vblank(%struct.vml_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
