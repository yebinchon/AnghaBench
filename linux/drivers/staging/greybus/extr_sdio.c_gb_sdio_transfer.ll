; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32, i32, i32 }
%struct.mmc_data = type { i32, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_sdio_host*, %struct.mmc_data*)* @gb_sdio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_sdio_transfer(%struct.gb_sdio_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.gb_sdio_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @single_op(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %113

25:                                               ; preds = %17, %2
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %28, %32
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %100, %25
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %34
  %38 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %39 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %38, i32 0, i32 2
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %42 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %47 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %49 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @EINTR, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %113

53:                                               ; preds = %37
  %54 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %55 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %59 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @min(i64 %57, i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = udiv i64 %62, %65
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = mul i64 %67, %70
  store i64 %71, i64* %6, align 8
  %72 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MMC_DATA_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %53
  %79 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %80 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @_gb_sdio_recv(%struct.gb_sdio_host* %79, %struct.mmc_data* %80, i64 %81, i64 %82, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %113

88:                                               ; preds = %78
  br label %100

89:                                               ; preds = %53
  %90 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %91 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @_gb_sdio_send(%struct.gb_sdio_host* %90, %struct.mmc_data* %91, i64 %92, i64 %93, i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %113

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %5, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %34

112:                                              ; preds = %34
  br label %113

113:                                              ; preds = %112, %98, %87, %45, %22
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i64 @single_op(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @_gb_sdio_recv(%struct.gb_sdio_host*, %struct.mmc_data*, i64, i64, i64) #1

declare dso_local i32 @_gb_sdio_send(%struct.gb_sdio_host*, %struct.mmc_data*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
