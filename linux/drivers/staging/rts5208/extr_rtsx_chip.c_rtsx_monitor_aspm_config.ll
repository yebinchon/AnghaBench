; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_monitor_aspm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_monitor_aspm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32*, i32, i32, i64 }

@LCTLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\0A\00", align 1
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_monitor_aspm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_monitor_aspm_config(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = load i32, i32* @LCTLR, align 4
  %10 = call i32 @rtsx_read_config_byte(%struct.rtsx_chip* %8, i32 %9, i32* %6)
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %26 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = call i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %28
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %34 = call i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %33, i32 1, i32 192, i64* %5)
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %32
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 3
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %54, %50
  br label %66

60:                                               ; preds = %28, %24
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 3
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %118

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %74 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %73, i32 0, i32 1
  store i32 3, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %77 = call i32 @rtsx_dev(%struct.rtsx_chip* %76)
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %79 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %84 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %87)
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %95 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %94, i32 0, i32 2
  store i32 1, i32* %95, align 4
  br label %101

96:                                               ; preds = %75
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %98 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %97, i32 0, i32 2
  store i32 0, i32* %98, align 4
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %100 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %93
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %103 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %105 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 48, %108
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %111 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 2
  %116 = or i32 %109, %115
  %117 = call i32 @rtsx_write_register(%struct.rtsx_chip* %102, i32 %103, i32 255, i32 %116)
  br label %118

118:                                              ; preds = %101, %66
  ret void
}

declare dso_local i32 @rtsx_read_config_byte(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip*, i32, i32, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
