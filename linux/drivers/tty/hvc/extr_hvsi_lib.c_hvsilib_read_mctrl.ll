; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_read_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_read_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i64, i32, i32 }
%struct.hvsi_query = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"HVSI@%x: Querying modem control status...\0A\00", align 1
@VS_QUERY_PACKET_HEADER = common dso_local global i32 0, align 4
@VSV_SEND_MODEM_CTL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"HVSI@%x: Error %d...\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvsilib_read_mctrl(%struct.hvsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvsi_priv*, align 8
  %4 = alloca %struct.hvsi_query, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %3, align 8
  %7 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @VS_QUERY_PACKET_HEADER, align 4
  %14 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 12, i32* %17, align 4
  %18 = load i32, i32* @VSV_SEND_MODEM_CTL_STATUS, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hvsi_query, %struct.hvsi_query* %4, i32 0, i32 0
  %23 = call i32 @hvsi_send_packet(%struct.hvsi_priv* %21, %struct.TYPE_2__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %39 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %37
  %46 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %47 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %45
  %52 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %53 = call i32 @hvsi_get_packet(%struct.hvsi_priv* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 @maybe_msleep(i32 10)
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %50, %42, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @hvsi_send_packet(%struct.hvsi_priv*, %struct.TYPE_2__*) #1

declare dso_local i32 @hvsi_get_packet(%struct.hvsi_priv*) #1

declare dso_local i32 @maybe_msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
