; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.da8xx_rproc = type { i32 }

@SYSCFG_CHIPSIG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc*, i32)* @da8xx_rproc_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da8xx_rproc_kick(%struct.rproc* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da8xx_rproc*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.da8xx_rproc*
  store %struct.da8xx_rproc* %9, %struct.da8xx_rproc** %5, align 8
  %10 = load i32, i32* @SYSCFG_CHIPSIG2, align 4
  %11 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %12 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @writel(i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
