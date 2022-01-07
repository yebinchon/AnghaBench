; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.st_slim_rproc*, %struct.device }
%struct.st_slim_rproc = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@SLIM_CLK_GATE_DIS = common dso_local global i32 0, align 4
@SLIM_CLK_GATE_RESET = common dso_local global i32 0, align 4
@SLIM_CLK_GATE_OFST = common dso_local global i64 0, align 8
@SLIM_STBUS_SYNC_DIS = common dso_local global i32 0, align 4
@SLIM_STBUS_SYNC_OFST = common dso_local global i64 0, align 8
@SLIM_INT_CLR_OFST = common dso_local global i64 0, align 8
@SLIM_CMD_CLR_OFST = common dso_local global i64 0, align 8
@SLIM_INT_MASK_OFST = common dso_local global i64 0, align 8
@SLIM_CMD_MASK_OFST = common dso_local global i64 0, align 8
@SLIM_EN_RUN = common dso_local global i32 0, align 4
@SLIM_EN_OFST = common dso_local global i64 0, align 8
@SLIM_ID_OFST = common dso_local global i64 0, align 8
@SLIM_VER_OFST = common dso_local global i64 0, align 8
@ST_SLIM_DMEM = common dso_local global i64 0, align 8
@SLIM_REV_ID_OFST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"fw rev:%ld.%ld on SLIM %ld.%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @slim_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.st_slim_rproc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %9 = load %struct.rproc*, %struct.rproc** %2, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.rproc*, %struct.rproc** %2, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %12, align 8
  store %struct.st_slim_rproc* %13, %struct.st_slim_rproc** %4, align 8
  %14 = load i32, i32* @SLIM_CLK_GATE_DIS, align 4
  %15 = load i32, i32* @SLIM_CLK_GATE_RESET, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %19 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SLIM_CLK_GATE_OFST, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load i32, i32* @SLIM_STBUS_SYNC_DIS, align 4
  %25 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %26 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SLIM_STBUS_SYNC_OFST, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* @SLIM_CLK_GATE_DIS, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %36 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SLIM_CLK_GATE_OFST, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %42 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SLIM_INT_CLR_OFST, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 -1, i64 %45)
  %47 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %48 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SLIM_CMD_CLR_OFST, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 -1, i64 %51)
  %53 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %54 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SLIM_INT_MASK_OFST, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 -1, i64 %57)
  %59 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %60 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SLIM_CMD_MASK_OFST, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 -1, i64 %63)
  %65 = load i32, i32* @SLIM_EN_RUN, align 4
  %66 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %67 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SLIM_EN_OFST, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %73 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SLIM_ID_OFST, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64 @readl_relaxed(i64 %76)
  store i64 %77, i64* %5, align 8
  %78 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %79 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SLIM_VER_OFST, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i64 @readl_relaxed(i64 %82)
  store i64 %83, i64* %6, align 8
  %84 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %85 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @ST_SLIM_DMEM, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SLIM_REV_ID_OFST, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i64 @readl(i64 %92)
  store i64 %93, i64* %7, align 8
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @SLIM_REV_ID_MAJ(i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @SLIM_REV_ID_MIN(i64 %97)
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @dev_info(%struct.device* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98, i64 %99, i64 %100)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @SLIM_REV_ID_MAJ(i64) #1

declare dso_local i32 @SLIM_REV_ID_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
