; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.iTCO_wdt_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @iTCO_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iTCO_wdt_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.iTCO_wdt_private* %11, %struct.iTCO_wdt_private** %6, align 8
  %12 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @seconds_to_ticks(%struct.iTCO_wdt_private* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %16 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = udiv i32 %20, 2
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %128

28:                                               ; preds = %22
  %29 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %30 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp ugt i32 %34, 1023
  br i1 %35, label %44, label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %38 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp ugt i32 %42, 63
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %128

47:                                               ; preds = %41, %36
  %48 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %49 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %54 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %57 = call i32 @TCOv2_TMR(%struct.iTCO_wdt_private* %56)
  %58 = call i32 @inw(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 64512
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %66 = call i32 @TCOv2_TMR(%struct.iTCO_wdt_private* %65)
  %67 = call i32 @outw(i32 %64, i32 %66)
  %68 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %69 = call i32 @TCOv2_TMR(%struct.iTCO_wdt_private* %68)
  %70 = call i32 @inw(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %72 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 1023
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %52
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %128

81:                                               ; preds = %52
  br label %124

82:                                               ; preds = %47
  %83 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %84 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %123

87:                                               ; preds = %82
  %88 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %89 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %88, i32 0, i32 1
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %92 = call i32 @TCOv1_TMR(%struct.iTCO_wdt_private* %91)
  %93 = call zeroext i8 @inb(i32 %92)
  store i8 %93, i8* %8, align 1
  %94 = load i8, i8* %8, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 192
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %8, align 1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 255
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  %104 = load i8, i8* %8, align 1
  %105 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %106 = call i32 @TCOv1_TMR(%struct.iTCO_wdt_private* %105)
  %107 = call i32 @outb(i8 zeroext %104, i32 %106)
  %108 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %109 = call i32 @TCOv1_TMR(%struct.iTCO_wdt_private* %108)
  %110 = call zeroext i8 @inb(i32 %109)
  store i8 %110, i8* %8, align 1
  %111 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %6, align 8
  %112 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load i8, i8* %8, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 63
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %87
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %128

122:                                              ; preds = %87
  br label %123

123:                                              ; preds = %122, %82
  br label %124

124:                                              ; preds = %123, %81
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %127 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %119, %78, %44, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @seconds_to_ticks(%struct.iTCO_wdt_private*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @TCOv2_TMR(%struct.iTCO_wdt_private*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @TCOv1_TMR(%struct.iTCO_wdt_private*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
