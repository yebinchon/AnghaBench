; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rcar-sysc.c_rcar_sysc_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_sysc_ch = type { i32, i64, i32 }

@rcar_sysc_lock = common dso_local global i32 0, align 4
@rcar_sysc_base = common dso_local global i64 0, align 8
@SYSCIMR = common dso_local global i64 0, align 8
@SYSCIER = common dso_local global i64 0, align 8
@SYSCISCR = common dso_local global i64 0, align 8
@PWRER_RETRIES = common dso_local global i32 0, align 4
@PWRER_OFFS = common dso_local global i64 0, align 8
@PWRER_DELAY_US = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SYSCISR_RETRIES = common dso_local global i32 0, align 4
@SYSCISR = common dso_local global i64 0, align 8
@SYSCISR_DELAY_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sysc power %s domain %d: %08x -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_sysc_ch*, i32)* @rcar_sysc_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_sysc_power(%struct.rcar_sysc_ch* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_sysc_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rcar_sysc_ch* %0, %struct.rcar_sysc_ch** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @rcar_sysc_lock, i64 %19)
  %21 = load i64, i64* @rcar_sysc_base, align 8
  %22 = load i64, i64* @SYSCIMR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ioread32(i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* @rcar_sysc_base, align 8
  %28 = load i64, i64* @SYSCIMR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %26, i64 %29)
  %31 = load i64, i64* @rcar_sysc_base, align 8
  %32 = load i64, i64* @SYSCIER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @ioread32(i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %34, %35
  %37 = load i64, i64* @rcar_sysc_base, align 8
  %38 = load i64, i64* @SYSCIER, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 %36, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* @rcar_sysc_base, align 8
  %43 = load i64, i64* @SYSCISCR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 %41, i64 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %74, %2
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PWRER_RETRIES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @rcar_sysc_pwr_on_off(%struct.rcar_sysc_ch* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %117

57:                                               ; preds = %50
  %58 = load i64, i64* @rcar_sysc_base, align 8
  %59 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %60 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i64, i64* @PWRER_OFFS, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @ioread32(i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %77

71:                                               ; preds = %57
  %72 = load i32, i32* @PWRER_DELAY_US, align 4
  %73 = call i32 @udelay(i32 %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %46

77:                                               ; preds = %70, %46
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PWRER_RETRIES, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %117

84:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @SYSCISR_RETRIES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i64, i64* @rcar_sysc_base, align 8
  %91 = load i64, i64* @SYSCISR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @ioread32(i64 %92)
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @SYSCISR_DELAY_US, align 4
  %100 = call i32 @udelay(i32 %99)
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %85

104:                                              ; preds = %97, %85
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @SYSCISR_RETRIES, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* @rcar_sysc_base, align 8
  %114 = load i64, i64* @SYSCISCR, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite32(i32 %112, i64 %115)
  br label %117

117:                                              ; preds = %111, %81, %56
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* @rcar_sysc_lock, i64 %118)
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %124 = load %struct.rcar_sysc_ch*, %struct.rcar_sysc_ch** %3, align 8
  %125 = getelementptr inbounds %struct.rcar_sysc_ch, %struct.rcar_sysc_ch* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @rcar_sysc_base, align 8
  %128 = load i64, i64* @SYSCISR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @ioread32(i64 %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %123, i32 %126, i32 %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @rcar_sysc_pwr_on_off(%struct.rcar_sysc_ch*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
