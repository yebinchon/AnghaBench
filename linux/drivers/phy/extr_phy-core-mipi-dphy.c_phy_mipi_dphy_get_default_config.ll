; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core-mipi-dphy.c_phy_mipi_dphy_get_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core-mipi-dphy.c_phy_mipi_dphy_get_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_mipi_dphy_get_default_config(i64 %0, i32 %1, i32 %2, %struct.phy_configure_opts_mipi_dphy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.phy_configure_opts_mipi_dphy* %3, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %12 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %13 = icmp ne %struct.phy_configure_opts_mipi_dphy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %118

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %18, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = call i32 @do_div(i64 %22, i64 %24)
  %26 = load i32, i32* @PSEC_PER_SEC, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @ALIGN(i32 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @do_div(i64 %29, i64 %30)
  %32 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %33 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %32, i32 0, i32 23
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = mul i64 52, %34
  %36 = add i64 60000, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %39 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %41 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %40, i32 0, i32 1
  store i32 8000, i32* %41, align 4
  %42 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %43 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %42, i32 0, i32 2
  store i32 38000, i32* %43, align 8
  %44 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %45 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %44, i32 0, i32 3
  store i32 95000, i32* %45, align 4
  %46 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %47 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %46, i32 0, i32 22
  store i64 0, i64* %47, align 8
  %48 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %49 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %48, i32 0, i32 4
  store i32 60000, i32* %49, align 8
  %50 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %51 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %50, i32 0, i32 5
  store i32 262000, i32* %51, align 4
  %52 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %53 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %52, i32 0, i32 21
  store i64 0, i64* %53, align 8
  %54 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %55 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %54, i32 0, i32 20
  store i64 0, i64* %55, align 8
  %56 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %57 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %56, i32 0, i32 6
  store i32 100000, i32* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = mul i64 4, %58
  %60 = add i64 40000, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %63 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %11, align 8
  %65 = mul i64 6, %64
  %66 = add i64 105000, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %69 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = mul i64 6, %70
  %72 = add i64 85000, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %75 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %77 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %76, i32 0, i32 10
  store i32 40000, i32* %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = mul i64 32, %78
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %11, align 8
  %82 = mul i64 16, %81
  %83 = add i64 60000, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @max(i32 %80, i32 %84)
  %86 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %87 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %86, i32 0, i32 19
  store i32 %85, i32* %87, align 4
  %88 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %89 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %88, i32 0, i32 11
  store i32 100, i32* %89, align 4
  %90 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %91 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %90, i32 0, i32 12
  store i32 60000, i32* %91, align 8
  %92 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %93 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 5, %94
  %96 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %97 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %96, i32 0, i32 13
  store i32 %95, i32* %97, align 4
  %98 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %99 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 4, %100
  %102 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %103 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %102, i32 0, i32 14
  store i32 %101, i32* %103, align 8
  %104 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %105 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 2, %106
  %108 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %109 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %108, i32 0, i32 15
  store i32 %107, i32* %109, align 4
  %110 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %111 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %110, i32 0, i32 16
  store i32 1000, i32* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %114 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %113, i32 0, i32 17
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %117 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %116, i32 0, i32 18
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %17, %14
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @ALIGN(i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
