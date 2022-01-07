; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_dynamic_configure_sdio_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_dynamic_configure_sdio_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i32, i32, i32*, i32 }

@SDIO_IDLE_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"SDIO enter ASPM!\0A\00", align 1
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SDIO exit ASPM!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dynamic_configure_sdio_aspm(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca [12 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 12
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 65288, %11
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 %14
  %16 = call i32 @rtsx_read_register(%struct.rtsx_chip* %10, i32 %12, i32* %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %22 = call i32 @rtsx_read_register(%struct.rtsx_chip* %21, i32 65317, i32* %4)
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 0
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @memcmp(i32* %23, i32 %26, i32 12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %20
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %37 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  br label %60

38:                                               ; preds = %29
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %40 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %49 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SDIO_IDLE_COUNT, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %43
  br label %59

59:                                               ; preds = %58, %38
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 0
  %65 = call i32 @memcpy(i32 %63, i32* %64, i32 12)
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %67 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %60
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %72 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %77 = call i32 @rtsx_dev(%struct.rtsx_chip* %76)
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %80 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %82 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 2
  %87 = or i32 48, %86
  %88 = call i32 @rtsx_write_register(%struct.rtsx_chip* %79, i32 %80, i32 252, i32 %87)
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %75, %70
  br label %107

92:                                               ; preds = %60
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %94 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %99 = call i32 @rtsx_dev(%struct.rtsx_chip* %98)
  %100 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %102 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %103 = call i32 @rtsx_write_register(%struct.rtsx_chip* %101, i32 %102, i32 252, i32 48)
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %105 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %104, i32 0, i32 2
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %97, %92
  br label %107

107:                                              ; preds = %106, %91
  ret void
}

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
