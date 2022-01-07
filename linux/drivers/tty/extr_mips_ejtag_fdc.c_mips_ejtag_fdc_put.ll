; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_ejtag_fdc_tty = type { i32, i64, i64, %struct.mips_ejtag_fdc_tty_port*, i32, i32, i32 }
%struct.mips_ejtag_fdc_tty_port = type { i32, i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@REG_FDSTAT = common dso_local global i32 0, align 4
@REG_FDSTAT_TXF = common dso_local global i32 0, align 4
@REG_FDCFG = common dso_local global i32 0, align 4
@REG_FDCFG_TXINTTHRES = common dso_local global i32 0, align 4
@REG_FDCFG_TXINTTHRES_NOTFULL = common dso_local global i32 0, align 4
@NUM_TTY_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mips_ejtag_fdc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_ejtag_fdc_put(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  %4 = alloca %struct.mips_ejtag_fdc_tty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mips_ejtag_fdc_tty*
  store %struct.mips_ejtag_fdc_tty* %8, %struct.mips_ejtag_fdc_tty** %3, align 8
  %9 = load i32, i32* @TASK_RUNNING, align 4
  %10 = call i32 @__set_current_state(i32 %9)
  br label %11

11:                                               ; preds = %146, %1
  %12 = call i64 (...) @kthread_should_stop()
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %147

15:                                               ; preds = %11
  %16 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %17 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %20 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %19, i32 0, i32 6
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = call i64 (...) @kthread_should_stop()
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i1 [ true, %15 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event_interruptible(i32 %18, i32 %28)
  %30 = call i64 (...) @kthread_should_stop()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %147

33:                                               ; preds = %26
  %34 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %35 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %34, i32 0, i32 5
  %36 = call i32 @raw_spin_lock_irq(i32* %35)
  %37 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %38 = load i32, i32* @REG_FDSTAT, align 4
  %39 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %37, i32 %38)
  %40 = load i32, i32* @REG_FDSTAT_TXF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %45 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %47 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %52 = load i32, i32* @REG_FDCFG, align 4
  %53 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @REG_FDCFG_TXINTTHRES, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @REG_FDCFG_TXINTTHRES_NOTFULL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %62 = load i32, i32* @REG_FDCFG, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @mips_ejtag_fdc_write(%struct.mips_ejtag_fdc_tty* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %50, %43
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %68 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %67, i32 0, i32 5
  %69 = call i32 @raw_spin_unlock_irq(i32* %68)
  %70 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %71 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %74 = load i32, i32* @REG_FDSTAT, align 4
  %75 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %73, i32 %74)
  %76 = load i32, i32* @REG_FDSTAT_TXF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = call i64 (...) @kthread_should_stop()
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %79, %66
  %83 = phi i1 [ true, %66 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event_interruptible(i32 %72, i32 %84)
  %86 = call i64 (...) @kthread_should_stop()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %147

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %123, %89
  %91 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %92 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %91, i32 0, i32 3
  %93 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %92, align 8
  %94 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %95 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %93, i64 %96
  store %struct.mips_ejtag_fdc_tty_port* %97, %struct.mips_ejtag_fdc_tty_port** %4, align 8
  %98 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %4, align 8
  %99 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %4, align 8
  %102 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %5, align 4
  %104 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %4, align 8
  %105 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  br label %124

110:                                              ; preds = %90
  %111 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %112 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %116 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NUM_TTY_CHANNELS, align 8
  %119 = icmp uge i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %122 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %110
  br label %90

124:                                              ; preds = %109
  %125 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %126 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %127 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @mips_ejtag_fdc_put_chan(%struct.mips_ejtag_fdc_tty* %125, i64 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %124
  %133 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %134 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %138 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NUM_TTY_CHANNELS, align 8
  %141 = icmp uge i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %132
  %143 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %3, align 8
  %144 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %132
  br label %146

146:                                              ; preds = %145, %124
  br label %11

147:                                              ; preds = %88, %32, %11
  ret i32 0
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty*, i32) #1

declare dso_local i32 @mips_ejtag_fdc_write(%struct.mips_ejtag_fdc_tty*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mips_ejtag_fdc_put_chan(%struct.mips_ejtag_fdc_tty*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
