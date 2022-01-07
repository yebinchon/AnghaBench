; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_setup_tearsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_sossi.c_sossi_setup_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@sossi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"setup_tearsync: hs %d vs %d hs_inv %d vs_inv %d\0A\00", align 1
@SOSSI_TEARING_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @sossi_setup_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sossi_setup_tearsync(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %106

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @ps_to_sossi_ticks(i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @ps_to_sossi_ticks(i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %15, align 4
  %43 = icmp sge i32 %42, 4096
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %37, %28
  %45 = load i32, i32* @EDOM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %106

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = sdiv i32 %48, 8
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 8, i32* %14, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sossi, i32 0, i32 1), align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sossi, i32 0, i32 0), align 8
  %71 = call i32 @clk_enable(i32 %70)
  %72 = load i32, i32* @SOSSI_TEARING_REG, align 4
  %73 = call i32 @sossi_read_reg(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %74, -32768
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = shl i32 %76, 3
  %78 = load i32, i32* %16, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %16, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %61
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, 536870912
  store i32 %87, i32* %16, align 4
  br label %91

88:                                               ; preds = %61
  %89 = load i32, i32* %16, align 4
  %90 = and i32 %89, -536870913
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = or i32 %95, 268435456
  store i32 %96, i32* %16, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, -268435457
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @SOSSI_TEARING_REG, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @sossi_write_reg(i32 %101, i32 %102)
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sossi, i32 0, i32 0), align 8
  %105 = call i32 @clk_disable(i32 %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %100, %44, %25
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @ps_to_sossi_ticks(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @sossi_read_reg(i32) #1

declare dso_local i32 @sossi_write_reg(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
