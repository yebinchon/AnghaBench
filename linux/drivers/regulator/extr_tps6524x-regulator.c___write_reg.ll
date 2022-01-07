; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c___write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c___write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6524x = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"wrote reg %d, data %x, status %x\0A\00", align 1
@STAT_CLK = common dso_local global i32 0, align 4
@STAT_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@STAT_INVALID = common dso_local global i32 0, align 4
@STAT_WP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6524x*, i32, i32)* @__write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_reg(%struct.tps6524x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps6524x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca [3 x %struct.spi_transfer], align 16
  store %struct.tps6524x* %0, %struct.tps6524x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @CMD_WRITE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = call i32 @spi_message_init(%struct.spi_message* %12)
  %18 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 0
  %19 = call i32 @memset(%struct.spi_transfer* %18, i32 0, i32 72)
  %20 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  store i32* %9, i32** %21, align 16
  %22 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 0
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  store i32 12, i32* %25, align 4
  %26 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 0
  %27 = call i32 @spi_message_add_tail(%struct.spi_transfer* %26, %struct.spi_message* %12)
  %28 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 1
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i32* %10, i32** %29, align 8
  %30 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 1
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  store i32 2, i32* %31, align 8
  %32 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 1
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  store i32 16, i32* %33, align 4
  %34 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 1
  %35 = call i32 @spi_message_add_tail(%struct.spi_transfer* %34, %struct.spi_message* %12)
  %36 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 2
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 3
  store i32* %11, i32** %37, align 16
  %38 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 2
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 2
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 2
  store i32 4, i32* %41, align 4
  %42 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %13, i64 0, i64 2
  %43 = call i32 @spi_message_add_tail(%struct.spi_transfer* %42, %struct.spi_message* %12)
  %44 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %45 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @spi_sync(i32 %46, %struct.spi_message* %12)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %84

52:                                               ; preds = %3
  %53 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %54 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @STAT_CLK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @STAT_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %52
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @STAT_INVALID, align 4
  %75 = load i32, i32* @STAT_WP, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %79, %69, %50
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @CMD_WRITE(i32) #1

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
