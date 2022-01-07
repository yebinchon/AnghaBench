; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_lmem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_lmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__PSS_LMEM_RESET = common dso_local global i32 0, align 4
@__PSS_LMEM_INIT_EN = common dso_local global i32 0, align 4
@__PSS_LMEM_INIT_DONE = common dso_local global i32 0, align 4
@PSS_LMEM_INIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_lmem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_lmem_init(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @__PSS_LMEM_RESET, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @__PSS_LMEM_INIT_EN, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = call i32 @__PSS_I2C_CLK_DIV(i64 3)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %20, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %42, %1
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @__PSS_LMEM_INIT_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 10000
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i1 [ false, %34 ], [ %41, %39 ]
  br i1 %43, label %26, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @__PSS_LMEM_INIT_DONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @bfa_trc(%struct.bfa_ioc_s* %52, i32 %53)
  %55 = load i32, i32* @__PSS_LMEM_INIT_DONE, align 4
  %56 = load i32, i32* @__PSS_LMEM_INIT_EN, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @writel(i32 %61, i32 %65)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @__PSS_I2C_CLK_DIV(i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
