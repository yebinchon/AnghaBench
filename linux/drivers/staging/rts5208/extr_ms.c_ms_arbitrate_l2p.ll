; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_arbitrate_l2p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_arbitrate_l2p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, %struct.ms_info }
%struct.ms_info = type { %struct.zone_entry* }
%struct.zone_entry = type { i64* }

@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64, i64, i64, i64)* @ms_arbitrate_l2p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_arbitrate_l2p(%struct.rtsx_chip* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ms_info*, align 8
  %12 = alloca %struct.zone_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 1
  store %struct.ms_info* %16, %struct.ms_info** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = ashr i32 %18, 9
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ms_info*, %struct.ms_info** %11, align 8
  %21 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %20, i32 0, i32 0
  %22 = load %struct.zone_entry*, %struct.zone_entry** %21, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %22, i64 %24
  store %struct.zone_entry* %25, %struct.zone_entry** %12, align 8
  %26 = load %struct.zone_entry*, %struct.zone_entry** %12, align 8
  %27 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %5
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MS_CARD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @ms_erase_block(%struct.rtsx_chip* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.zone_entry*, %struct.zone_entry** %12, align 8
  %55 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  br label %74

59:                                               ; preds = %35
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %61 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MS_CARD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @ms_erase_block(%struct.rtsx_chip* %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %49
  br label %116

75:                                               ; preds = %5
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %81 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MS_CARD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @ms_erase_block(%struct.rtsx_chip* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %91, i64 %92)
  br label %115

94:                                               ; preds = %75
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %96 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MS_CARD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @ms_erase_block(%struct.rtsx_chip* %102, i64 %103)
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %106, i64 %107)
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.zone_entry*, %struct.zone_entry** %12, align 8
  %111 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %109, i64* %114, align 8
  br label %115

115:                                              ; preds = %105, %90
  br label %116

116:                                              ; preds = %115, %74
  %117 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %117
}

declare dso_local i32 @ms_erase_block(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @ms_set_unused_block(%struct.rtsx_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
