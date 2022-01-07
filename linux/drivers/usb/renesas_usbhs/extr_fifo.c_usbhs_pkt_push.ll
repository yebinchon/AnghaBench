; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_pkt_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_pkt_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32*, i32 }
%struct.usbhs_pkt = type { i32, i32, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, i32, i64, i32*, i8*, %struct.usbhs_pipe*, i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no done function\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no handler function\0A\00", align 1
@usbhsf_null_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pkt_push(%struct.usbhs_pipe* %0, %struct.usbhs_pkt* %1, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.usbhs_pipe*, align 8
  %9 = alloca %struct.usbhs_pkt*, align 8
  %10 = alloca void (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usbhs_priv*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i64, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %8, align 8
  store %struct.usbhs_pkt* %1, %struct.usbhs_pkt** %9, align 8
  store void (%struct.usbhs_priv*, %struct.usbhs_pkt*)* %2, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %19 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %18)
  store %struct.usbhs_priv* %19, %struct.usbhs_priv** %15, align 8
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %15, align 8
  %21 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %20)
  store %struct.device* %21, %struct.device** %16, align 8
  %22 = load void (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)** %10, align 8
  %23 = icmp ne void (%struct.usbhs_priv*, %struct.usbhs_pkt*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load %struct.device*, %struct.device** %16, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %74

27:                                               ; preds = %7
  %28 = load %struct.usbhs_priv*, %struct.usbhs_priv** %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @usbhs_lock(%struct.usbhs_priv* %28, i64 %29)
  %31 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %32 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %16, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %39 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %38, i32 0, i32 0
  store i32* @usbhsf_null_handler, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %42 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %41, i32 0, i32 8
  %43 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %44 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %43, i32 0, i32 1
  %45 = call i32 @list_move_tail(i32* %42, i32* %44)
  %46 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %47 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %48 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %47, i32 0, i32 7
  store %struct.usbhs_pipe* %46, %struct.usbhs_pipe** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %51 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %8, align 8
  %53 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %56 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %59 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %62 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %64 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load void (%struct.usbhs_priv*, %struct.usbhs_pkt*)*, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)** %10, align 8
  %66 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %67 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %66, i32 0, i32 2
  store void (%struct.usbhs_priv*, %struct.usbhs_pkt*)* %65, void (%struct.usbhs_priv*, %struct.usbhs_pkt*)** %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %9, align 8
  %70 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usbhs_priv*, %struct.usbhs_priv** %15, align 8
  %72 = load i64, i64* %17, align 8
  %73 = call i32 @usbhs_unlock(%struct.usbhs_priv* %71, i64 %72)
  br label %74

74:                                               ; preds = %40, %24
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
