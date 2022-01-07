; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mips_ejtag_fdc_tty = type { i32, i32, i32, i32, i32, i32, %struct.mips_ejtag_fdc_tty_port* }
%struct.mips_ejtag_fdc_tty_port = type { i32, i32, i32 }

@REG_FDSTAT = common dso_local global i32 0, align 4
@REG_FDSTAT_RXE = common dso_local global i32 0, align 4
@REG_FDSTAT_RXCHAN = common dso_local global i32 0, align 4
@REG_FDSTAT_RXCHAN_SHIFT = common dso_local global i32 0, align 4
@REG_FDRX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s%u: in  %08x: \22%*pE\22\0A\00", align 1
@TTY_NORMAL = common dso_local global i32 0, align 4
@REG_FDSTAT_TXF = common dso_local global i32 0, align 4
@REG_FDCFG = common dso_local global i32 0, align 4
@REG_FDCFG_TXINTTHRES = common dso_local global i32 0, align 4
@REG_FDCFG_TXINTTHRES_DISABLED = common dso_local global i32 0, align 4
@CONFIG_MIPS_EJTAG_FDC_KGDB_CHAN = common dso_local global i32 0, align 4
@mips_ejtag_fdc_con = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_ejtag_fdc_tty*)* @mips_ejtag_fdc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_ejtag_fdc_handle(%struct.mips_ejtag_fdc_tty* %0) #0 {
  %2 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  %3 = alloca %struct.mips_ejtag_fdc_tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  store %struct.mips_ejtag_fdc_tty* %0, %struct.mips_ejtag_fdc_tty** %2, align 8
  br label %12

12:                                               ; preds = %86, %1
  %13 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %14 = load i32, i32* @REG_FDSTAT, align 4
  %15 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @REG_FDSTAT_RXE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %90

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @REG_FDSTAT_RXCHAN, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @REG_FDSTAT_RXCHAN_SHIFT, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %28 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %27, i32 0, i32 6
  %29 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %29, i64 %31
  store %struct.mips_ejtag_fdc_tty_port* %32, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %33 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %34 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %33, i32 0, i32 0
  %35 = call i32 @raw_spin_lock(i32* %34)
  %36 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %37 = load i32, i32* @REG_FDRX, align 4
  %38 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %41 = call i32 @mips_ejtag_fdc_decode(i32 %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %43 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %46 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %52 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i8* %51)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %76, %21
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %59 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %76

63:                                               ; preds = %57
  %64 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %65 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %64, i32 0, i32 1
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* @TTY_NORMAL, align 4
  %71 = call i64 @tty_insert_flip_char(i32* %65, i8 signext %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %63, %62
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %53

79:                                               ; preds = %53
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %84 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %83, i32 0, i32 1
  %85 = call i32 @tty_flip_buffer_push(i32* %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %88 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %87, i32 0, i32 0
  %89 = call i32 @raw_spin_unlock(i32* %88)
  br label %12

90:                                               ; preds = %20
  %91 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %92 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %91, i32 0, i32 2
  %93 = call i32 @raw_spin_lock(i32* %92)
  %94 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %95 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @REG_FDSTAT_TXF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %98
  %104 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %105 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %107 = load i32, i32* @REG_FDCFG, align 4
  %108 = call i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty* %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @REG_FDCFG_TXINTTHRES, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @REG_FDCFG_TXINTTHRES_DISABLED, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %117 = load i32, i32* @REG_FDCFG, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @mips_ejtag_fdc_write(%struct.mips_ejtag_fdc_tty* %116, i32 %117, i32 %118)
  %120 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %121 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %120, i32 0, i32 3
  %122 = call i32 @wake_up_interruptible(i32* %121)
  br label %123

123:                                              ; preds = %103, %98, %90
  %124 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %2, align 8
  %125 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %124, i32 0, i32 2
  %126 = call i32 @raw_spin_unlock(i32* %125)
  ret void
}

declare dso_local i32 @mips_ejtag_fdc_read(%struct.mips_ejtag_fdc_tty*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @mips_ejtag_fdc_decode(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @tty_insert_flip_char(i32*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @mips_ejtag_fdc_write(%struct.mips_ejtag_fdc_tty*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
