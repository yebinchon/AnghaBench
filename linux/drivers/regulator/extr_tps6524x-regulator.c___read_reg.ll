; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c___read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c___read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6524x = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"read reg %d, data %x, status %x\0A\00", align 1
@STAT_CLK = common dso_local global i32 0, align 4
@STAT_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STAT_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6524x*, i32)* @__read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_reg(%struct.tps6524x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps6524x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca [3 x %struct.spi_transfer], align 16
  store %struct.tps6524x* %0, %struct.tps6524x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @CMD_READ(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 @spi_message_init(%struct.spi_message* %10)
  %15 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 0
  %16 = call i32 @memset(%struct.spi_transfer* %15, i32 0, i32 72)
  %17 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  store i32* %7, i32** %18, align 16
  %19 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 0
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  store i32 12, i32* %22, align 4
  %23 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 0
  %24 = call i32 @spi_message_add_tail(%struct.spi_transfer* %23, %struct.spi_message* %10)
  %25 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 1
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 3
  store i32* %8, i32** %26, align 8
  %27 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 1
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  store i32 2, i32* %28, align 8
  %29 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 1
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 2
  store i32 16, i32* %30, align 4
  %31 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 1
  %32 = call i32 @spi_message_add_tail(%struct.spi_transfer* %31, %struct.spi_message* %10)
  %33 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 2
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 3
  store i32* %9, i32** %34, align 16
  %35 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 2
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 2
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 2
  store i32 4, i32* %38, align 4
  %39 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %11, i64 0, i64 2
  %40 = call i32 @spi_message_add_tail(%struct.spi_transfer* %39, %struct.spi_message* %10)
  %41 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %42 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @spi_sync(i32 %43, %struct.spi_message* %10)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %2
  %50 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %51 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @STAT_CLK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @STAT_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %49
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @STAT_INVALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %74, %66, %47
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @CMD_READ(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
