; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_status_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_status_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i8, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@R0 = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@SYNC_HUNT = common dso_local global i8 0, align 1
@DCD = common dso_local global i8 0, align 1
@CTS = common dso_local global i8 0, align 1
@BRK_ABRT = common dso_local global i8 0, align 1
@PMACZILOG_FLAG_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_status_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_status_handle(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  %3 = alloca i8, align 1
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %5 = load i32, i32* @R0, align 4
  %6 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %8 = load i32, i32* @R0, align 4
  %9 = load i32, i32* @RES_EXT_INT, align 4
  %10 = call i32 @write_zsreg(%struct.uart_pmac_port* %7, i32 %8, i32 %9)
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %12 = call i32 @zssync(%struct.uart_pmac_port* %11)
  %13 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %14 = call i64 @ZS_IS_OPEN(%struct.uart_pmac_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %1
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %18 = call i64 @ZS_WANTS_MODEM_STATUS(%struct.uart_pmac_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %16
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @SYNC_HUNT, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = xor i32 %36, %40
  %42 = load i8, i8* @DCD, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %47, i32 0, i32 2
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @DCD, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = trunc i32 %53 to i8
  %55 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %48, i8 zeroext %54)
  br label %56

56:                                               ; preds = %46, %34
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %59, i32 0, i32 0
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = xor i32 %58, %62
  %64 = load i8, i8* @CTS, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %56
  %69 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %69, i32 0, i32 2
  %71 = load i8, i8* %3, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @CTS, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %70, i32 %78)
  br label %80

80:                                               ; preds = %68, %56
  %81 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %88

88:                                               ; preds = %80, %16, %1
  %89 = load i8, i8* %3, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @BRK_ABRT, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @PMACZILOG_FLAG_BREAK, align 4
  %97 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load i8, i8* %3, align 1
  %103 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %103, i32 0, i32 0
  store i8 %102, i8* %104, align 8
  ret void
}

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_WANTS_MODEM_STATUS(%struct.uart_pmac_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
