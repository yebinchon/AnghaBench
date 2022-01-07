; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { %struct.TYPE_11__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@check_modem_status.old_status = internal global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"CHECK_MODEM\00", align 1
@ICOM_RI = common dso_local global i8 0, align 1
@ICOM_DSR = common dso_local global i8 0, align 1
@ICOM_DCD = common dso_local global i8 0, align 1
@ICOM_CTS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icom_port*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_modem_status(%struct.icom_port* %0) #0 {
  %2 = alloca %struct.icom_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.icom_port* %0, %struct.icom_port** %2, align 8
  %5 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %6 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %10 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call zeroext i8 @readb(i32* %12)
  store i8 %13, i8* %4, align 1
  %14 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @trace(%struct.icom_port* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %15)
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @check_modem_status.old_status, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %3, align 1
  %23 = load i8, i8* %3, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %1
  %26 = load i8, i8* %3, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @ICOM_RI, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %34 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i8, i8* %3, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @ICOM_DSR, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %48 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i8, i8* %3, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @ICOM_DCD, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %62 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %61, i32 0, i32 0
  %63 = load i8, i8* %3, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @ICOM_DCD, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = trunc i32 %67 to i8
  %69 = call i32 @uart_handle_dcd_change(%struct.TYPE_11__* %62, i8 signext %68)
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @ICOM_CTS, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %79 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %78, i32 0, i32 0
  %80 = load i8, i8* %3, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @ICOM_CTS, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = trunc i32 %84 to i8
  %86 = call i32 @uart_handle_cts_change(%struct.TYPE_11__* %79, i8 signext %85)
  br label %87

87:                                               ; preds = %77, %70
  %88 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %89 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = call i32 @wake_up_interruptible(i32* %93)
  %95 = load i8, i8* %4, align 1
  store i8 %95, i8* @check_modem_status.old_status, align 1
  br label %96

96:                                               ; preds = %87, %1
  %97 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %98 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @trace(%struct.icom_port*, i8*, i8 zeroext) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
