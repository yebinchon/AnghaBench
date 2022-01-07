; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_sync_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_sync_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_SYNCVALUE1 = common dso_local global i32 0, align 4
@REG_SYNCVALUE2 = common dso_local global i32 0, align 4
@REG_SYNCVALUE3 = common dso_local global i32 0, align 4
@REG_SYNCVALUE4 = common dso_local global i32 0, align 4
@REG_SYNCVALUE5 = common dso_local global i32 0, align 4
@REG_SYNCVALUE6 = common dso_local global i32 0, align 4
@REG_SYNCVALUE7 = common dso_local global i32 0, align 4
@REG_SYNCVALUE8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_sync_values(%struct.spi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @REG_SYNCVALUE1, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @rf69_write_reg(%struct.spi_device* %6, i32 %7, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load i32, i32* @REG_SYNCVALUE2, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rf69_write_reg(%struct.spi_device* %16, i32 %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load i32, i32* @REG_SYNCVALUE3, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @rf69_write_reg(%struct.spi_device* %26, i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load i32, i32* @REG_SYNCVALUE4, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @rf69_write_reg(%struct.spi_device* %36, i32 %37, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = load i32, i32* @REG_SYNCVALUE5, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @rf69_write_reg(%struct.spi_device* %46, i32 %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = load i32, i32* @REG_SYNCVALUE6, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @rf69_write_reg(%struct.spi_device* %56, i32 %57, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = load i32, i32* @REG_SYNCVALUE7, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @rf69_write_reg(%struct.spi_device* %66, i32 %67, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = load i32, i32* @REG_SYNCVALUE8, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @rf69_write_reg(%struct.spi_device* %76, i32 %77, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @rf69_write_reg(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
