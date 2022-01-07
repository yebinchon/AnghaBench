; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.npcm_wdt = type { i32 }

@NPCM_WTRE = common dso_local global i32 0, align 4
@NPCM_WTE = common dso_local global i32 0, align 4
@NPCM_WTR = common dso_local global i32 0, align 4
@NPCM_WTIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @npcm_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.npcm_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.npcm_wdt* @to_npcm_wdt(%struct.watchdog_device* %5)
  store %struct.npcm_wdt* %6, %struct.npcm_wdt** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 2048, i32* %4, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1056, i32* %4, align 4
  br label %68

18:                                               ; preds = %12
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 2064, i32* %4, align 4
  br label %67

24:                                               ; preds = %18
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1072, i32* %4, align 4
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 22
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 2080, i32* %4, align 4
  br label %65

36:                                               ; preds = %30
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 44
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 3072, i32* %4, align 4
  br label %64

42:                                               ; preds = %36
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 87
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 2096, i32* %4, align 4
  br label %63

48:                                               ; preds = %42
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %50 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 173
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 3088, i32* %4, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %56 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 688
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 3104, i32* %4, align 4
  br label %61

60:                                               ; preds = %54
  store i32 3120, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %29
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %17
  br label %69

69:                                               ; preds = %68, %11
  %70 = load i32, i32* @NPCM_WTRE, align 4
  %71 = load i32, i32* @NPCM_WTE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NPCM_WTR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @NPCM_WTIE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.npcm_wdt*, %struct.npcm_wdt** %3, align 8
  %81 = getelementptr inbounds %struct.npcm_wdt, %struct.npcm_wdt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writel(i32 %79, i32 %82)
  ret i32 0
}

declare dso_local %struct.npcm_wdt* @to_npcm_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
