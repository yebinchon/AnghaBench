; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_eject_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_eject_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32*, i32, i64* }

@SD_CARD = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eject_card(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i32 @do_remaining_work(%struct.rtsx_chip* %5)
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %9, %16
  %18 = load i32, i32* @SD_CARD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = call i32 @release_sd_card(%struct.rtsx_chip* %21)
  %23 = load i32, i32* @SD_CARD, align 4
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @SD_CARD, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %110

40:                                               ; preds = %2
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %42 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %43, %50
  %52 = load i32, i32* @XD_CARD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %40
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %56 = call i32 @release_xd_card(%struct.rtsx_chip* %55)
  %57 = load i32, i32* @XD_CARD, align 4
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @XD_CARD, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %65 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %69 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 0, i64* %73, align 8
  br label %109

74:                                               ; preds = %40
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %79 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %77, %84
  %86 = load i32, i32* @MS_CARD, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %74
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %90 = call i32 @release_ms_card(%struct.rtsx_chip* %89)
  %91 = load i32, i32* @MS_CARD, align 4
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %93 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @MS_CARD, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %99 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %103 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %88, %74
  br label %109

109:                                              ; preds = %108, %54
  br label %110

110:                                              ; preds = %109, %20
  ret void
}

declare dso_local i32 @do_remaining_work(%struct.rtsx_chip*) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_xd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @release_ms_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
