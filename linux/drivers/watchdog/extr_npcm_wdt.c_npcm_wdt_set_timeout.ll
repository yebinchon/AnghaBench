; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_npcm_wdt.c_npcm_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @npcm_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  br label %69

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %68

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 6
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %21 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %20, i32 0, i32 0
  store i32 5, i32* %21, align 4
  br label %67

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %23, 11
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %27 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %26, i32 0, i32 0
  store i32 10, i32* %27, align 4
  br label %66

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ult i32 %29, 22
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %33 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %32, i32 0, i32 0
  store i32 21, i32* %33, align 4
  br label %65

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp ult i32 %35, 44
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %38, i32 0, i32 0
  store i32 43, i32* %39, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ult i32 %41, 87
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %45 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %44, i32 0, i32 0
  store i32 86, i32* %45, align 4
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %47, 173
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %51 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %50, i32 0, i32 0
  store i32 172, i32* %51, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = icmp ult i32 %53, 688
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %57 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %56, i32 0, i32 0
  store i32 687, i32* %57, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %60 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 0
  store i32 2750, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64, %31
  br label %66

66:                                               ; preds = %65, %25
  br label %67

67:                                               ; preds = %66, %19
  br label %68

68:                                               ; preds = %67, %13
  br label %69

69:                                               ; preds = %68, %7
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %71 = call i64 @watchdog_active(%struct.watchdog_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %75 = call i32 @npcm_wdt_start(%struct.watchdog_device* %74)
  br label %76

76:                                               ; preds = %73, %69
  ret i32 0
}

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @npcm_wdt_start(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
