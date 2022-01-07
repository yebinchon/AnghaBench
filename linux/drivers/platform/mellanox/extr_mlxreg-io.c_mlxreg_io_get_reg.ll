; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_core_data = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxreg_core_data*, i32, i32, i32*)* @mlxreg_io_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_io_get_reg(i8* %0, %struct.mlxreg_core_data* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxreg_core_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.mlxreg_core_data* %1, %struct.mlxreg_core_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %14 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @regmap_read(i8* %12, i32 %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %106

21:                                               ; preds = %5
  %22 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %23 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %33 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, -1
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %60

42:                                               ; preds = %26
  %43 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %44 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %53 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %42
  br label %60

60:                                               ; preds = %59, %29
  br label %105

61:                                               ; preds = %21
  %62 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %63 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %73 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %77 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @ror32(i32 %75, i64 %79)
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %103

82:                                               ; preds = %66
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %85 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @rol32(i32 %83, i64 %87)
  %89 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %90 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %88, %91
  store i32 %92, i32* %8, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %96 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %82, %69
  br label %104

104:                                              ; preds = %103, %61
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %20
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @ror32(i32, i64) #1

declare dso_local i32 @rol32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
