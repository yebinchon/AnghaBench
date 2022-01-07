; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_write_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_write_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i16, i32 }
%struct.hvsi_control = type { %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TIOCM_DTR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [20 x i8] c"HVSI@%x: %s DTR...\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Clearing\00", align 1
@VS_CONTROL_PACKET_HEADER = common dso_local global i32 0, align 4
@VSV_SET_MODEM_CTL = common dso_local global i32 0, align 4
@HVSI_TSDTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvsilib_write_mctrl(%struct.hvsi_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hvsi_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hvsi_control, align 8
  %7 = alloca i16, align 2
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hvsi_priv*, %struct.hvsi_priv** %4, align 8
  %9 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 4
  store i16 %10, i16* %7, align 2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i16, i16* @TIOCM_DTR, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %7, align 2
  br label %28

20:                                               ; preds = %2
  %21 = load i16, i16* @TIOCM_DTR, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %7, align 2
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.hvsi_priv*, %struct.hvsi_priv** %4, align 8
  %32 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %72

37:                                               ; preds = %28
  %38 = load i16, i16* %7, align 2
  %39 = load %struct.hvsi_priv*, %struct.hvsi_priv** %4, align 8
  %40 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 4
  %41 = load %struct.hvsi_priv*, %struct.hvsi_priv** %4, align 8
  %42 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @pr_devel(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %47)
  %49 = load i32, i32* @VS_CONTROL_PACKET_HEADER, align 4
  %50 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 32, i32* %53, align 8
  %54 = load i32, i32* @VSV_SET_MODEM_CTL, align 4
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @HVSI_TSDTR, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  %63 = load i32, i32* @HVSI_TSDTR, align 4
  br label %65

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = load %struct.hvsi_priv*, %struct.hvsi_priv** %4, align 8
  %70 = getelementptr inbounds %struct.hvsi_control, %struct.hvsi_control* %6, i32 0, i32 0
  %71 = call i32 @hvsi_send_packet(%struct.hvsi_priv* %69, %struct.TYPE_2__* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pr_devel(i8*, i32, i8*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hvsi_send_packet(%struct.hvsi_priv*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
