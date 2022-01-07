; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_write_tcs_reg_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_write_tcs_reg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i64 }

@RSC_DRV_TCS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsc_drv*, i32, i32, i64)* @write_tcs_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tcs_reg_sync(%struct.rsc_drv* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rsc_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rsc_drv* %0, %struct.rsc_drv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %11 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i32, i32* @RSC_DRV_TCS_OFFSET, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = call i32 @writel(i64 %9, i64 %20)
  br label %22

22:                                               ; preds = %38, %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %25 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* @RSC_DRV_TCS_OFFSET, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = call i64 @readl(i64 %34)
  %36 = icmp eq i64 %23, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %40

38:                                               ; preds = %22
  %39 = call i32 @udelay(i32 1)
  br label %22

40:                                               ; preds = %37
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
