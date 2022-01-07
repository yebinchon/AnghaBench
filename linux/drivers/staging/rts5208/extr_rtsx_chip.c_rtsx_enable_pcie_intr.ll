; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_pcie_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_enable_pcie_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64, i64, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CDRESUMECTL = common dso_local global i32 0, align 4
@IC_VER_D = common dso_local global i64 0, align 8
@STATUS_FAIL = common dso_local global i32 0, align 4
@IC_VER_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rtsx_enable_pcie_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_enable_pcie_intr(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %12 = call i32 @CHECK_PID(%struct.rtsx_chip* %11, i32 21000)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = call i32 @rtsx_enable_bus_int(%struct.rtsx_chip* %15)
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %17, i32* %2, align 4
  br label %100

18:                                               ; preds = %10
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = load i32, i32* @CDRESUMECTL, align 4
  %26 = call i32 @rtsx_write_register(%struct.rtsx_chip* %24, i32 %25, i32 119, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %23
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = call i32 @rtsx_disable_bus_int(%struct.rtsx_chip* %32)
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = call i32 @rtsx_enable_bus_int(%struct.rtsx_chip* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IC_VER_D, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %37
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %44, i32 0, i32* %5)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %2, align 4
  br label %100

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 65151
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %5, align 4
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %56, i32 0, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %63, i32* %2, align 4
  br label %100

64:                                               ; preds = %51
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %66 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %65, i32 28, i32* %5)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %71, i32* %2, align 4
  br label %100

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 65527
  store i32 %74, i32* %5, align 4
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %75, i32 28, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @STATUS_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %82, i32* %2, align 4
  br label %100

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %37
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %86 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %91 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IC_VER_C, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %97 = call i32 @rtsx_calibration(%struct.rtsx_chip* %96)
  br label %98

98:                                               ; preds = %95, %89, %84
  %99 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %81, %70, %62, %49, %29, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_enable_bus_int(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_disable_bus_int(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_phy_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_calibration(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
