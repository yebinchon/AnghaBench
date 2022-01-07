; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_update_mdata_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_update_mdata_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.mtk_spi = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @mtk_spi_update_mdata_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_spi_update_mdata_len(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %5 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %6 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %5)
  store %struct.mtk_spi* %6, %struct.mtk_spi** %4, align 8
  %7 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %1
  %12 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %11
  %17 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mtk_spi_get_mult_delta(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %68

46:                                               ; preds = %16
  %47 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mtk_spi_get_mult_delta(i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %46, %24
  br label %111

69:                                               ; preds = %11, %1
  %70 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mtk_spi_get_mult_delta(i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %80 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %85 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %110

89:                                               ; preds = %69
  %90 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %96 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mtk_spi_get_mult_delta(i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.mtk_spi*, %struct.mtk_spi** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %89
  br label %110

110:                                              ; preds = %109, %74
  br label %111

111:                                              ; preds = %110, %68
  ret void
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mtk_spi_get_mult_delta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
