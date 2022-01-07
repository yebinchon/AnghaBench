; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_f71808e_wdt.c_watchdog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@watchdog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIO_F71808FG_LD_WDT = common dso_local global i32 0, align 4
@SIO_REG_MFUNCT2 = common dso_local global i32 0, align 4
@SIO_REG_MFUNCT3 = common dso_local global i32 0, align 4
@SIO_REG_MFUNCT1 = common dso_local global i32 0, align 4
@SIO_REG_CLOCK_SEL = common dso_local global i32 0, align 4
@SIO_REG_TSI_LEVEL_SEL = common dso_local global i32 0, align 4
@SIO_F81866_REG_PORT_SEL = common dso_local global i32 0, align 4
@SIO_F81866_REG_GPIO1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SIO_REG_ENABLE = common dso_local global i32 0, align 4
@F81865_REG_WDO_CONF = common dso_local global i32 0, align 4
@F81865_FLAG_WDOUT_EN = common dso_local global i32 0, align 4
@F71808FG_REG_WDO_CONF = common dso_local global i32 0, align 4
@F71808FG_FLAG_WDOUT_EN = common dso_local global i32 0, align 4
@F71808FG_REG_WDT_CONF = common dso_local global i32 0, align 4
@F71808FG_FLAG_WD_EN = common dso_local global i32 0, align 4
@F71808FG_FLAG_WD_PULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @watchdog_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @watchdog_keepalive()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %148

10:                                               ; preds = %0
  %11 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 2))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %13 = call i32 @superio_enter(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %145

17:                                               ; preds = %10
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %19 = load i32, i32* @SIO_F71808FG_LD_WDT, align 4
  %20 = call i32 @superio_select(i32 %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0), align 8
  switch i32 %21, label %87 [
    i32 136, label %22
    i32 135, label %29
    i32 134, label %36
    i32 133, label %36
    i32 132, label %40
    i32 131, label %44
    i32 130, label %52
    i32 129, label %63
    i32 128, label %67
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %24 = load i32, i32* @SIO_REG_MFUNCT2, align 4
  %25 = call i32 @superio_clear_bit(i32 %23, i32 %24, i32 3)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %27 = load i32, i32* @SIO_REG_MFUNCT3, align 4
  %28 = call i32 @superio_clear_bit(i32 %26, i32 %27, i32 3)
  br label %90

29:                                               ; preds = %17
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %31 = call i32 @f71862fg_pin_configure(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %142

35:                                               ; preds = %29
  br label %90

36:                                               ; preds = %17, %17
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %38 = load i32, i32* @SIO_REG_MFUNCT1, align 4
  %39 = call i32 @superio_clear_bit(i32 %37, i32 %38, i32 4)
  br label %90

40:                                               ; preds = %17
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %42 = load i32, i32* @SIO_REG_MFUNCT1, align 4
  %43 = call i32 @superio_set_bit(i32 %41, i32 %42, i32 1)
  br label %90

44:                                               ; preds = %17
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %46 = load i32, i32* @SIO_REG_MFUNCT3, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %48 = load i32, i32* @SIO_REG_MFUNCT3, align 4
  %49 = call i32 @superio_inb(i32 %47, i32 %48)
  %50 = and i32 %49, 207
  %51 = call i32 @superio_outb(i32 %45, i32 %46, i32 %50)
  br label %90

52:                                               ; preds = %17
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %54 = load i32, i32* @SIO_REG_CLOCK_SEL, align 4
  %55 = call i32 @superio_clear_bit(i32 %53, i32 %54, i32 3)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %57 = load i32, i32* @SIO_REG_TSI_LEVEL_SEL, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %59 = load i32, i32* @SIO_REG_TSI_LEVEL_SEL, align 4
  %60 = call i32 @superio_inb(i32 %58, i32 %59)
  %61 = and i32 95, %60
  %62 = call i32 @superio_outb(i32 %56, i32 %57, i32 %61)
  br label %90

63:                                               ; preds = %17
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %65 = load i32, i32* @SIO_REG_MFUNCT3, align 4
  %66 = call i32 @superio_clear_bit(i32 %64, i32 %65, i32 5)
  br label %90

67:                                               ; preds = %17
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %69 = load i32, i32* @SIO_F81866_REG_PORT_SEL, align 4
  %70 = call i32 @superio_inb(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = call i32 @BIT(i32 3)
  %72 = call i32 @BIT(i32 0)
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = call i32 @BIT(i32 2)
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %81 = load i32, i32* @SIO_F81866_REG_PORT_SEL, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @superio_outb(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %85 = load i32, i32* @SIO_F81866_REG_GPIO1, align 4
  %86 = call i32 @superio_clear_bit(i32 %84, i32 %85, i32 5)
  br label %90

87:                                               ; preds = %17
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %142

90:                                               ; preds = %67, %63, %52, %44, %40, %36, %35, %22
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %92 = load i32, i32* @SIO_F71808FG_LD_WDT, align 4
  %93 = call i32 @superio_select(i32 %91, i32 %92)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %95 = load i32, i32* @SIO_REG_ENABLE, align 4
  %96 = call i32 @superio_set_bit(i32 %94, i32 %95, i32 0)
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0), align 8
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 0), align 8
  %101 = icmp eq i32 %100, 128
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %90
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %104 = load i32, i32* @F81865_REG_WDO_CONF, align 4
  %105 = load i32, i32* @F81865_FLAG_WDOUT_EN, align 4
  %106 = call i32 @superio_set_bit(i32 %103, i32 %104, i32 %105)
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %109 = load i32, i32* @F71808FG_REG_WDO_CONF, align 4
  %110 = load i32, i32* @F71808FG_FLAG_WDOUT_EN, align 4
  %111 = call i32 @superio_set_bit(i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %114 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %115 = load i32, i32* @F71808FG_FLAG_WD_EN, align 4
  %116 = call i32 @superio_set_bit(i32 %113, i32 %114, i32 %115)
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 4), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %112
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %121 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %122 = call i32 @superio_inb(i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = and i32 %123, 252
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 1), align 4
  %126 = and i32 %125, 3
  %127 = or i32 %124, %126
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @F71808FG_FLAG_WD_PULSE, align 4
  %129 = call i32 @BIT(i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %133 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @superio_outb(i32 %132, i32 %133, i32 %134)
  br label %141

136:                                              ; preds = %112
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %138 = load i32, i32* @F71808FG_REG_WDT_CONF, align 4
  %139 = load i32, i32* @F71808FG_FLAG_WD_PULSE, align 4
  %140 = call i32 @superio_clear_bit(i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %119
  br label %142

142:                                              ; preds = %141, %87, %34
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 3), align 4
  %144 = call i32 @superio_exit(i32 %143)
  br label %145

145:                                              ; preds = %142, %16
  %146 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog, i32 0, i32 2))
  %147 = load i32, i32* %2, align 4
  store i32 %147, i32* %1, align 4
  br label %148

148:                                              ; preds = %145, %8
  %149 = load i32, i32* %1, align 4
  ret i32 %149
}

declare dso_local i32 @watchdog_keepalive(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_clear_bit(i32, i32, i32) #1

declare dso_local i32 @f71862fg_pin_configure(i32) #1

declare dso_local i32 @superio_set_bit(i32, i32, i32) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
