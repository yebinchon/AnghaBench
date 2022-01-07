; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_read_regdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_read_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@E2P_SUBID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"regdomain: %#04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_read_regdomain(%struct.zd_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %9 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %12 = load i32, i32* @E2P_SUBID, align 4
  %13 = call i32 @zd_ioread32_locked(%struct.zd_chip* %11, i32* %7, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %15 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 16
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %26 = call i32 @zd_chip_dev(%struct.zd_chip* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg_f(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zd_ioread32_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
