; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32, %struct.st_rproc* }
%struct.st_rproc = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to deassert S/W Reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to deassert Power Reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Started from 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @st_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.st_rproc*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 2
  %8 = load %struct.st_rproc*, %struct.st_rproc** %7, align 8
  store %struct.st_rproc* %8, %struct.st_rproc** %4, align 8
  %9 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %10 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %13 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %16 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rproc*, %struct.rproc** %3, align 8
  %21 = getelementptr inbounds %struct.rproc, %struct.rproc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regmap_update_bits(i32 %11, i32 %14, i32 %19, i32 %22)
  %24 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %25 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_enable(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.rproc*, %struct.rproc** %3, align 8
  %32 = getelementptr inbounds %struct.rproc, %struct.rproc* %31, i32 0, i32 1
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %1
  %36 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %37 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %44 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @reset_control_deassert(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.rproc*, %struct.rproc** %3, align 8
  %51 = getelementptr inbounds %struct.rproc, %struct.rproc* %50, i32 0, i32 1
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %93

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %56 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %63 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @reset_control_deassert(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.rproc*, %struct.rproc** %3, align 8
  %70 = getelementptr inbounds %struct.rproc, %struct.rproc* %69, i32 0, i32 1
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %80

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.rproc*, %struct.rproc** %3, align 8
  %75 = getelementptr inbounds %struct.rproc, %struct.rproc* %74, i32 0, i32 1
  %76 = load %struct.rproc*, %struct.rproc** %3, align 8
  %77 = getelementptr inbounds %struct.rproc, %struct.rproc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %99

80:                                               ; preds = %68
  %81 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %82 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %89 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @reset_control_assert(i32 %90)
  br label %92

92:                                               ; preds = %87, %80
  br label %93

93:                                               ; preds = %92, %49
  %94 = load %struct.st_rproc*, %struct.st_rproc** %4, align 8
  %95 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clk_disable(i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %73, %30
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
