; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"can't get pipe (%s)\0A\00", align 1
@usbhsp_pipe_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"pipe setup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't setup pipe\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"enable pipe %d : %s (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usbhs_pipe* @usbhs_pipe_malloc(%struct.usbhs_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_pipe*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.usbhs_pipe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %15 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %17 = call i32 @usbhs_mod_is_host(%struct.usbhs_priv* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.usbhs_pipe* @usbhsp_get_pipe(%struct.usbhs_priv* %18, i32 %19)
  store %struct.usbhs_pipe* %20, %struct.usbhs_pipe** %9, align 8
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %22 = icmp ne %struct.usbhs_pipe* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i32*, i32** @usbhsp_pipe_name, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  store %struct.usbhs_pipe* null, %struct.usbhs_pipe** %4, align 8
  br label %82

31:                                               ; preds = %3
  %32 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %33 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %36 = call i32 @usbhs_pipe_disable(%struct.usbhs_pipe* %35)
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %38 = call i32 @usbhsp_pipe_barrier(%struct.usbhs_pipe* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %44 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %43)
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store %struct.usbhs_pipe* null, %struct.usbhs_pipe** %4, align 8
  br label %82

46:                                               ; preds = %31
  %47 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @usbhsp_setup_pipecfg(%struct.usbhs_pipe* %47, i32 %48, i32 %49, i32* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.usbhs_pipe* null, %struct.usbhs_pipe** %4, align 8
  br label %82

55:                                               ; preds = %46
  %56 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %57 = call i32 @usbhsp_setup_pipebuff(%struct.usbhs_pipe* %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %59 = call i32 @usbhsp_pipe_select(%struct.usbhs_pipe* %58)
  %60 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe* %60, i32 65535, i32 %61)
  %63 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @usbhsp_pipe_buf_set(%struct.usbhs_pipe* %63, i32 65535, i32 %64)
  %66 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %67 = call i32 @usbhs_pipe_clear(%struct.usbhs_pipe* %66)
  %68 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %69 = call i32 @usbhs_pipe_sequence_data0(%struct.usbhs_pipe* %68)
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %72 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %71)
  %73 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %74 = call i32 @usbhs_pipe_name(%struct.usbhs_pipe* %73)
  %75 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  %76 = call i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe* %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %80 = call i32 @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %74, i8* %79)
  %81 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  store %struct.usbhs_pipe* %81, %struct.usbhs_pipe** %4, align 8
  br label %82

82:                                               ; preds = %55, %52, %41, %23
  %83 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  ret %struct.usbhs_pipe* %83
}

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_mod_is_host(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhs_pipe* @usbhsp_get_pipe(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usbhs_pipe_disable(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_barrier(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhsp_setup_pipecfg(%struct.usbhs_pipe*, i32, i32, i32*) #1

declare dso_local i32 @usbhsp_setup_pipebuff(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_select(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe*, i32, i32) #1

declare dso_local i32 @usbhsp_pipe_buf_set(%struct.usbhs_pipe*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_clear(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_sequence_data0(%struct.usbhs_pipe*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @usbhs_pipe_name(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
