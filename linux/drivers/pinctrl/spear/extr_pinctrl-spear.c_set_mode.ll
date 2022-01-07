; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_pmx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.spear_pmx_mode** }
%struct.spear_pmx_mode = type { i32, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Configured Mode: %s with id: %x\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_pmx*, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode(%struct.spear_pmx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spear_pmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spear_pmx_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spear_pmx* %0, %struct.spear_pmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.spear_pmx_mode* null, %struct.spear_pmx_mode** %6, align 8
  %9 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %10 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.spear_pmx_mode**, %struct.spear_pmx_mode*** %12, align 8
  %14 = icmp ne %struct.spear_pmx_mode** %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %17 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %117

25:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %60, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %29 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %26
  %35 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %36 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load %struct.spear_pmx_mode**, %struct.spear_pmx_mode*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %39, i64 %41
  %43 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %42, align 8
  %44 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %34
  %50 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %51 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load %struct.spear_pmx_mode**, %struct.spear_pmx_mode*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %54, i64 %56
  %58 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %57, align 8
  store %struct.spear_pmx_mode* %58, %struct.spear_pmx_mode** %6, align 8
  br label %63

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %26

63:                                               ; preds = %49, %26
  %64 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %65 = icmp ne %struct.spear_pmx_mode* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %117

69:                                               ; preds = %63
  %70 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %71 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %72 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pmx_readl(%struct.spear_pmx* %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %76 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %82 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %89 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pmx_writel(%struct.spear_pmx* %86, i32 %87, i32 %90)
  %92 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %93 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %96 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %100 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %103 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %69
  %107 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %108 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  br label %111

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i8* [ %109, %106 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %110 ]
  %113 = load %struct.spear_pmx_mode*, %struct.spear_pmx_mode** %6, align 8
  %114 = getelementptr inbounds %struct.spear_pmx_mode, %struct.spear_pmx_mode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_info(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %112, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %66, %22
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @pmx_readl(%struct.spear_pmx*, i32) #1

declare dso_local i32 @pmx_writel(%struct.spear_pmx*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
