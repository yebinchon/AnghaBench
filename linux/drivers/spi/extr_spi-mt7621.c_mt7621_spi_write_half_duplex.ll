; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_write_half_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_write_half_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_spi = type { i32 }

@MT7621_SPI_OPCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_spi*, i32, i32*)* @mt7621_spi_write_half_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_spi_write_half_duplex(%struct.mt7621_spi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mt7621_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7621_spi* %0, %struct.mt7621_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %10 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %17 = load i64, i64* @MT7621_SPI_OPCODE, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @mt7621_spi_read(%struct.mt7621_spi* %16, i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 4, %26
  %28 = mul nsw i32 %27, 8
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @swab32(i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %25, %15
  br label %34

34:                                               ; preds = %33, %3
  br label %35

35:                                               ; preds = %77, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 36
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %44 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %46 = call i32 @mt7621_spi_flush(%struct.mt7621_spi* %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 3
  %53 = mul nsw i32 8, %52
  %54 = shl i32 %50, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %47
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @swab32(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %70 = load i64, i64* @MT7621_SPI_OPCODE, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = sub nsw i64 %73, 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %69, i64 %74, i32 %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %68, %47
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %35

80:                                               ; preds = %35
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @swab32(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 4, %90
  %92 = mul nsw i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %87, %84
  %96 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %97 = load i64, i64* @MT7621_SPI_OPCODE, align 8
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, -4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %96, i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %80
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.mt7621_spi*, %struct.mt7621_spi** %4, align 8
  %107 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  ret void
}

declare dso_local i32 @mt7621_spi_read(%struct.mt7621_spi*, i64) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @mt7621_spi_flush(%struct.mt7621_spi*) #1

declare dso_local i32 @mt7621_spi_write(%struct.mt7621_spi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
