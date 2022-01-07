; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.st_slim_rproc* }
%struct.st_slim_rproc = type { i64, i64 }

@SLIM_INT_MASK_OFST = common dso_local global i64 0, align 8
@SLIM_CMD_MASK_OFST = common dso_local global i64 0, align 8
@SLIM_CLK_GATE_DIS = common dso_local global i32 0, align 4
@SLIM_CLK_GATE_OFST = common dso_local global i64 0, align 8
@SLIM_EN_RUN = common dso_local global i32 0, align 4
@SLIM_EN_OFST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to disable SLIM\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"slim stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @slim_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.st_slim_rproc*, align 8
  %4 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %5 = load %struct.rproc*, %struct.rproc** %2, align 8
  %6 = getelementptr inbounds %struct.rproc, %struct.rproc* %5, i32 0, i32 1
  %7 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %6, align 8
  store %struct.st_slim_rproc* %7, %struct.st_slim_rproc** %3, align 8
  %8 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  %9 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SLIM_INT_MASK_OFST, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  %14 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  %15 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SLIM_CMD_MASK_OFST, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load i32, i32* @SLIM_CLK_GATE_DIS, align 4
  %21 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  %22 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SLIM_CLK_GATE_OFST, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @SLIM_EN_RUN, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  %32 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SLIM_EN_OFST, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %3, align 8
  %38 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SLIM_EN_OFST, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SLIM_EN_RUN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load %struct.rproc*, %struct.rproc** %2, align 8
  %49 = getelementptr inbounds %struct.rproc, %struct.rproc* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %1
  %52 = load %struct.rproc*, %struct.rproc** %2, align 8
  %53 = getelementptr inbounds %struct.rproc, %struct.rproc* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
