; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82365.c_cirrus_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82365.c_cirrus_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cirrus_state }
%struct.cirrus_state = type { i32, i32, i32* }

@socket = common dso_local global %struct.TYPE_4__* null, align 8
@PD67_MISC_CTL_2 = common dso_local global i64 0, align 8
@PD67_MC2_SUSPEND = common dso_local global i32 0, align 4
@PD67_MISC_CTL_1 = common dso_local global i64 0, align 8
@PD67_MC1_MEDIA_ENA = common dso_local global i32 0, align 4
@PD67_MC1_INPACK_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cirrus_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrus_set_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cirrus_state*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @socket, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.cirrus_state* %10, %struct.cirrus_state** %5, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @PD67_MISC_CTL_2, align 8
  %13 = call i32 @i365_get(i64 %11, i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @PD67_MISC_CTL_2, align 8
  %16 = load %struct.cirrus_state*, %struct.cirrus_state** %5, align 8
  %17 = getelementptr inbounds %struct.cirrus_state, %struct.cirrus_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @i365_set(i64 %14, i64 %15, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PD67_MC2_SUSPEND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @mdelay(i32 50)
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @PD67_MISC_CTL_1, align 8
  %29 = call i32 @i365_get(i64 %27, i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @PD67_MC1_MEDIA_ENA, align 4
  %31 = load i32, i32* @PD67_MC1_INPACK_ENA, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @PD67_MISC_CTL_1, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.cirrus_state*, %struct.cirrus_state** %5, align 8
  %40 = getelementptr inbounds %struct.cirrus_state, %struct.cirrus_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = call i32 @i365_set(i64 %36, i64 %37, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %61, %26
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 6
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @PD67_TIME_SETUP(i32 0)
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.cirrus_state*, %struct.cirrus_state** %5, align 8
  %54 = getelementptr inbounds %struct.cirrus_state, %struct.cirrus_state* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @i365_set(i64 %48, i64 %52, i32 %59)
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %44

64:                                               ; preds = %44
  ret void
}

declare dso_local i32 @i365_get(i64, i64) #1

declare dso_local i32 @i365_set(i64, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @PD67_TIME_SETUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
