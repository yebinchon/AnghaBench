; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_clock.c_via_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_clock.c_via_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_clock = type { i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i8* }

@dummy_set_clock_state = common dso_local global i8* null, align 8
@dummy_set_clock_source = common dso_local global i8* null, align 8
@dummy_set_pll_state = common dso_local global i8* null, align 8
@cle266_set_primary_pll = common dso_local global i32 0, align 4
@cle266_set_secondary_pll = common dso_local global i32 0, align 4
@dummy_set_pll = common dso_local global i32 0, align 4
@set_primary_clock_state = common dso_local global i8* null, align 8
@set_primary_clock_source = common dso_local global i8* null, align 8
@set_primary_pll_state = common dso_local global i8* null, align 8
@k800_set_primary_pll = common dso_local global i32 0, align 4
@set_secondary_clock_state = common dso_local global i8* null, align 8
@set_secondary_clock_source = common dso_local global i8* null, align 8
@set_secondary_pll_state = common dso_local global i8* null, align 8
@k800_set_secondary_pll = common dso_local global i32 0, align 4
@set_engine_pll_state = common dso_local global i8* null, align 8
@k800_set_engine_pll = common dso_local global i32 0, align 4
@vx855_set_primary_pll = common dso_local global i32 0, align 4
@vx855_set_secondary_pll = common dso_local global i32 0, align 4
@vx855_set_engine_pll = common dso_local global i32 0, align 4
@noop_set_clock_state = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @via_clock_init(%struct.via_clock* %0, i32 %1) #0 {
  %3 = alloca %struct.via_clock*, align 8
  %4 = alloca i32, align 4
  store %struct.via_clock* %0, %struct.via_clock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %99 [
    i32 140, label %6
    i32 136, label %6
    i32 135, label %37
    i32 131, label %37
    i32 139, label %37
    i32 137, label %37
    i32 138, label %37
    i32 134, label %37
    i32 133, label %37
    i32 132, label %37
    i32 130, label %37
    i32 129, label %68
    i32 128, label %68
  ]

6:                                                ; preds = %2, %2
  %7 = load i8*, i8** @dummy_set_clock_state, align 8
  %8 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %9 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @dummy_set_clock_source, align 8
  %11 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %12 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %11, i32 0, i32 9
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @dummy_set_pll_state, align 8
  %14 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %15 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @cle266_set_primary_pll, align 4
  %17 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %18 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @dummy_set_clock_state, align 8
  %20 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %21 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @dummy_set_clock_source, align 8
  %23 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %24 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @dummy_set_pll_state, align 8
  %26 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %27 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @cle266_set_secondary_pll, align 4
  %29 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %30 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @dummy_set_pll_state, align 8
  %32 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %33 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @dummy_set_pll, align 4
  %35 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %36 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %99

37:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %38 = load i8*, i8** @set_primary_clock_state, align 8
  %39 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %40 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @set_primary_clock_source, align 8
  %42 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %43 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @set_primary_pll_state, align 8
  %45 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %46 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @k800_set_primary_pll, align 4
  %48 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %49 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @set_secondary_clock_state, align 8
  %51 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %52 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @set_secondary_clock_source, align 8
  %54 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %55 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @set_secondary_pll_state, align 8
  %57 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %58 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @k800_set_secondary_pll, align 4
  %60 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %61 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @set_engine_pll_state, align 8
  %63 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %64 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @k800_set_engine_pll, align 4
  %66 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %67 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %99

68:                                               ; preds = %2, %2
  %69 = load i8*, i8** @set_primary_clock_state, align 8
  %70 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %71 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @set_primary_clock_source, align 8
  %73 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %74 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @set_primary_pll_state, align 8
  %76 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %77 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @vx855_set_primary_pll, align 4
  %79 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %80 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @set_secondary_clock_state, align 8
  %82 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %83 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @set_secondary_clock_source, align 8
  %85 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %86 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @set_secondary_pll_state, align 8
  %88 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %89 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @vx855_set_secondary_pll, align 4
  %91 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %92 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @set_engine_pll_state, align 8
  %94 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %95 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @vx855_set_engine_pll, align 4
  %97 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %98 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %2, %68, %37, %6
  %100 = call i64 (...) @machine_is_olpc()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i8*, i8** @noop_set_clock_state, align 8
  %104 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %105 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @noop_set_clock_state, align 8
  %107 = load %struct.via_clock*, %struct.via_clock** %3, align 8
  %108 = getelementptr inbounds %struct.via_clock, %struct.via_clock* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %99
  ret void
}

declare dso_local i64 @machine_is_olpc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
