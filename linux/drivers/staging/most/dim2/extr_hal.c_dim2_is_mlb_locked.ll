; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_is_mlb_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_is_mlb_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MLBC0_MLBLK_BIT = common dso_local global i32 0, align 4
@MLBC1_CLKMERR_BIT = common dso_local global i32 0, align 4
@MLBC1_LOCKERR_BIT = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MLBC1_NDA_MASK = common dso_local global i64 0, align 8
@MLBC1_NDA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dim2_is_mlb_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dim2_is_mlb_locked() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MLBC0_MLBLK_BIT, align 4
  %6 = call i32 @bit_mask(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @MLBC1_CLKMERR_BIT, align 4
  %8 = call i32 @bit_mask(i32 %7)
  %9 = load i32, i32* @MLBC1_LOCKERR_BIT, align 4
  %10 = call i32 @bit_mask(i32 %9)
  %11 = or i32 %8, %10
  store i32 %11, i32* %2, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* @MLBC1_NDA_MASK, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @MLBC1_NDA_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @writel(i32 %21, i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @readl(i32* %26)
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @readl(i32* %33)
  %35 = load i32, i32* %1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %0
  %39 = phi i1 [ false, %0 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @bit_mask(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
