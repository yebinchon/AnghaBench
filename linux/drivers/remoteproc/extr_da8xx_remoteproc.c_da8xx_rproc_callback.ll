; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.da8xx_rproc = type { i32, i32 (i32)*, i64 }

@SYSCFG_CHIPSIG0 = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da8xx_rproc_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_rproc_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.da8xx_rproc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rproc*
  store %struct.rproc* %10, %struct.rproc** %6, align 8
  %11 = load %struct.rproc*, %struct.rproc** %6, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.da8xx_rproc*
  store %struct.da8xx_rproc* %14, %struct.da8xx_rproc** %7, align 8
  %15 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %7, align 8
  %16 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SYSCFG_CHIPSIG0, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @SYSCFG_CHIPSIG0, align 4
  %25 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %7, align 8
  %26 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i32 @writel(i32 %24, i64 %28)
  %30 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %7, align 8
  %31 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %7, align 8
  %34 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  %37 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
