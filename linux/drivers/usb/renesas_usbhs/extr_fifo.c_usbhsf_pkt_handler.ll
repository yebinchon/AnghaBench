; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_pkt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_pkt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_pkt = type { i32 (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown pkt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*, i32)* @usbhsf_pkt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_pkt_handler(%struct.usbhs_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca %struct.usbhs_pkt*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32 (%struct.usbhs_pkt*, i32*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %13 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %12)
  store %struct.usbhs_priv* %13, %struct.usbhs_priv** %5, align 8
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %15 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %14)
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @usbhs_lock(%struct.usbhs_priv* %16, i64 %17)
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %20 = call %struct.usbhs_pkt* @__usbhsf_pkt_get(%struct.usbhs_pipe* %19)
  store %struct.usbhs_pkt* %20, %struct.usbhs_pkt** %6, align 8
  %21 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %22 = icmp ne %struct.usbhs_pkt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %62

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %44 [
    i32 129, label %26
    i32 128, label %32
    i32 130, label %38
  ]

26:                                               ; preds = %24
  %27 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %28 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %30, align 8
  store i32 (%struct.usbhs_pkt*, i32*)* %31, i32 (%struct.usbhs_pkt*, i32*)** %8, align 8
  br label %47

32:                                               ; preds = %24
  %33 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %34 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %36, align 8
  store i32 (%struct.usbhs_pkt*, i32*)* %37, i32 (%struct.usbhs_pkt*, i32*)** %8, align 8
  br label %47

38:                                               ; preds = %24
  %39 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %40 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %42, align 8
  store i32 (%struct.usbhs_pkt*, i32*)* %43, i32 (%struct.usbhs_pkt*, i32*)** %8, align 8
  br label %47

44:                                               ; preds = %24
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %62

47:                                               ; preds = %38, %32, %26
  %48 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %8, align 8
  %49 = call i64 @likely(i32 (%struct.usbhs_pkt*, i32*)* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %8, align 8
  %53 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %54 = call i32 %52(%struct.usbhs_pkt* %53, i32* %11)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %60 = call i32 @__usbhsf_pkt_del(%struct.usbhs_pkt* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %44, %23
  %63 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @usbhs_unlock(%struct.usbhs_priv* %63, i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %70 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %69, i32 0, i32 0
  %71 = load i32 (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, i32 (%struct.usbhs_priv*, %struct.usbhs_pkt*)** %70, align 8
  %72 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %73 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %6, align 8
  %74 = call i32 %71(%struct.usbhs_priv* %72, %struct.usbhs_pkt* %73)
  %75 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %76 = call i32 @usbhs_pkt_start(%struct.usbhs_pipe* %75)
  br label %77

77:                                               ; preds = %68, %62
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local %struct.usbhs_pkt* @__usbhsf_pkt_get(%struct.usbhs_pipe*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @likely(i32 (%struct.usbhs_pkt*, i32*)*) #1

declare dso_local i32 @__usbhsf_pkt_del(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhs_pkt_start(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
