; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_switch_coreidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_switch_coreidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_CORE_SIZE = common dso_local global i32 0, align 4
@SSB_ENUM_BASE = common dso_local global i32 0, align 4
@SSB_PCMCIA_ADDRESS0 = common dso_local global i32 0, align 4
@SSB_PCMCIA_ADDRESS1 = common dso_local global i32 0, align 4
@SSB_PCMCIA_ADDRESS2 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SSB_BAR0_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to switch to core %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pcmcia_switch_coreidx(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SSB_CORE_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @SSB_ENUM_BASE, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %2, %99
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %19 = load i32, i32* @SSB_PCMCIA_ADDRESS0, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 61440
  %22 = ashr i32 %21, 12
  %23 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %18, i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %102

27:                                               ; preds = %17
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %29 = load i32, i32* @SSB_PCMCIA_ADDRESS1, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 16711680
  %32 = ashr i32 %31, 16
  %33 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %28, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %102

37:                                               ; preds = %27
  %38 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %39 = load i32, i32* @SSB_PCMCIA_ADDRESS2, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -16777216
  %42 = lshr i32 %41, 24
  %43 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %38, i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %102

47:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  %48 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %49 = load i32, i32* @SSB_PCMCIA_ADDRESS0, align 4
  %50 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %48, i32 %49, i32* %11)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %102

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 12
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %61 = load i32, i32* @SSB_PCMCIA_ADDRESS1, align 4
  %62 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %60, i32 %61, i32* %11)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %102

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %72 = load i32, i32* @SSB_PCMCIA_ADDRESS2, align 4
  %73 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %71, i32 %72, i32* %11)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %102

77:                                               ; preds = %66
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 24
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SSB_ENUM_BASE, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @SSB_CORE_SIZE, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %101

91:                                               ; preds = %77
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @SSB_BAR0_MAX_RETRIES, align 4
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %102

99:                                               ; preds = %91
  %100 = call i32 @udelay(i32 10)
  br label %17

101:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %106

102:                                              ; preds = %98, %76, %65, %53, %46, %36, %26
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %101
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
