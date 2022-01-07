; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.spi_transfer = type { i64, i64, i32, i32, i32 }
%struct.npcm_pspi = type { i32, i64, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @npcm_pspi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_pspi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.npcm_pspi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.npcm_pspi* @spi_master_get_devdata(i32 %8)
  store %struct.npcm_pspi* %9, %struct.npcm_pspi** %5, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %14 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %19 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %24 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %29 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %31 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %36 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34, %2
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call i32 @npcm_pspi_set_mode(%struct.spi_device* %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %49 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %52 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %57 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55, %50
  %64 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @npcm_pspi_set_transfer_size(%struct.npcm_pspi* %64, i64 %67)
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %73 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %63, %55
  %75 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %76 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %81 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %79, %74
  %88 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %89 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @npcm_pspi_set_baudrate(%struct.npcm_pspi* %88, i64 %91)
  %93 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %97 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %87, %79
  %99 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %100 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.npcm_pspi*, %struct.npcm_pspi** %5, align 8
  %105 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  ret void
}

declare dso_local %struct.npcm_pspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @npcm_pspi_set_mode(%struct.spi_device*) #1

declare dso_local i32 @npcm_pspi_set_transfer_size(%struct.npcm_pspi*, i64) #1

declare dso_local i32 @npcm_pspi_set_baudrate(%struct.npcm_pspi*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
