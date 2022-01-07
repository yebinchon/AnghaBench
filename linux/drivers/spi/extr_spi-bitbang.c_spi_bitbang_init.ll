; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bitbang.c_spi_bitbang_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bitbang.c_spi_bitbang_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_bitbang = type { i32, i64, i64, i64, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@spi_bitbang_prepare_hardware = common dso_local global i32 0, align 4
@spi_bitbang_unprepare_hardware = common dso_local global i32 0, align 4
@spi_bitbang_transfer_one = common dso_local global i32 0, align 4
@spi_bitbang_set_cs = common dso_local global i32 0, align 4
@spi_bitbang_bufs = common dso_local global i64 0, align 8
@spi_bitbang_setup_transfer = common dso_local global i64 0, align 8
@spi_bitbang_setup = common dso_local global i64 0, align 8
@spi_bitbang_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bitbang_init(%struct.spi_bitbang* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_bitbang*, align 8
  %4 = alloca %struct.spi_master*, align 8
  store %struct.spi_bitbang* %0, %struct.spi_bitbang** %3, align 8
  %5 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %6 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %5, i32 0, i32 6
  %7 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  store %struct.spi_master* %7, %struct.spi_master** %4, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = icmp ne %struct.spi_master* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %12 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %10
  %19 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %20 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %19, i32 0, i32 4
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %23 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @SPI_CPOL, align 4
  %28 = load i32, i32* @SPI_CPHA, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %31 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %29, %32
  %34 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %26, %18
  %37 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %94

49:                                               ; preds = %41
  %50 = load i32, i32* @spi_bitbang_prepare_hardware, align 4
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @spi_bitbang_unprepare_hardware, align 4
  %54 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %55 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @spi_bitbang_transfer_one, align 4
  %57 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %58 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @spi_bitbang_set_cs, align 4
  %60 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %61 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %63 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %49
  %67 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %68 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* @spi_bitbang_bufs, align 8
  %70 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %71 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %73 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %66
  %77 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %78 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @spi_bitbang_setup_transfer, align 8
  %83 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %84 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i64, i64* @spi_bitbang_setup, align 8
  %87 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %88 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @spi_bitbang_cleanup, align 4
  %90 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %91 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %66
  br label %93

93:                                               ; preds = %92, %49
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %46, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
