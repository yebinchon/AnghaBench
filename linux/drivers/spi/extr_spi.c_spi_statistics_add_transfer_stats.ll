; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_statistics_add_transfer_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_statistics_add_transfer_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_statistics = type { i32, i32, i32, i32, i32*, i32 }
%struct.spi_transfer = type { i64, i64, i64 }
%struct.spi_controller = type { i64, i64 }

@SPI_STATISTICS_HISTO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_statistics_add_transfer_stats(%struct.spi_statistics* %0, %struct.spi_transfer* %1, %struct.spi_controller* %2) #0 {
  %4 = alloca %struct.spi_statistics*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.spi_statistics* %0, %struct.spi_statistics** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store %struct.spi_controller* %2, %struct.spi_controller** %6, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @fls(i64 %11)
  %13 = load i32, i32* @SPI_STATISTICS_HISTO_SIZE, align 4
  %14 = call i32 @min(i32 %12, i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %21 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %25 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %29 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %40 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %19
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %62 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  br label %67

67:                                               ; preds = %57, %49, %19
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %77 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %85 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  br label %90

90:                                               ; preds = %80, %72, %67
  %91 = load %struct.spi_statistics*, %struct.spi_statistics** %4, align 8
  %92 = getelementptr inbounds %struct.spi_statistics, %struct.spi_statistics* %91, i32 0, i32 0
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
