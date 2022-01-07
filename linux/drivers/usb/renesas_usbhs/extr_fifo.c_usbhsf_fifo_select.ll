; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_fifo_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_fifo_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MBW_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fifo select error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*, %struct.usbhs_fifo*, i32)* @usbhsf_fifo_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_fifo_select(%struct.usbhs_pipe* %0, %struct.usbhs_fifo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca %struct.usbhs_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbhs_priv*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %5, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %14 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %13)
  store %struct.usbhs_priv* %14, %struct.usbhs_priv** %8, align 8
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %16 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %15)
  store %struct.device* %16, %struct.device** %9, align 8
  store i32 1024, i32* %10, align 4
  store i32 47, i32* %11, align 4
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %18 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %20 = call i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %24 = call i64 @usbhsf_fifo_is_busy(%struct.usbhs_fifo* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %22
  %30 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %31 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 1, %34
  %36 = zext i1 %35 to i32
  %37 = shl i32 %36, 5
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %41 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @usbhs_dcp_dir_for_host(%struct.usbhs_pipe* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %33
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %50 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %51 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MBW_32, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @usbhs_write(%struct.usbhs_priv* %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %75, %48
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %10, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.usbhs_priv*, %struct.usbhs_priv** %8, align 8
  %65 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %66 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usbhs_read(%struct.usbhs_priv* %64, i32 %67)
  %69 = and i32 %63, %68
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %73 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %6, align 8
  %74 = call i32 @usbhs_pipe_select_fifo(%struct.usbhs_pipe* %72, %struct.usbhs_fifo* %73)
  store i32 0, i32* %4, align 4
  br label %82

75:                                               ; preds = %61
  %76 = call i32 @udelay(i32 10)
  br label %57

77:                                               ; preds = %57
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %71, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhsf_fifo_is_busy(%struct.usbhs_fifo*) #1

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_mod_is_host(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_dcp_dir_for_host(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @usbhs_read(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhs_pipe_select_fifo(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
