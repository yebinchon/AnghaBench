; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_setup_pipecfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_setup_pipecfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }

@usbhsp_setup_pipecfg.type_array = internal constant [131 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131, i32 132, i32 133], align 16
@EINVAL = common dso_local global i32 0, align 4
@IS_DIR_HOST = common dso_local global i32 0, align 4
@DIR_OUT = common dso_local global i32 0, align 4
@IS_DIR_IN = common dso_local global i32 0, align 4
@SHTNAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*, i32, i32, i32*)* @usbhsp_setup_pipecfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsp_setup_pipecfg(%struct.usbhs_pipe* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %18 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %96

23:                                               ; preds = %4
  %24 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %25 = call i64 @usbhs_pipe_type(%struct.usbhs_pipe* %24)
  %26 = getelementptr inbounds [131 x i32], [131 x i32]* @usbhsp_setup_pipecfg.type_array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %29 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %28, i32 128)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %33 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %32, i32 130)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %38 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %37, i32 130)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %46 = load i32, i32* @IS_DIR_HOST, align 4
  %47 = call i32 @usbhsp_flags_set(%struct.usbhs_pipe* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = xor i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @DIR_OUT, align 4
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %48
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %70 = load i32, i32* @IS_DIR_IN, align 4
  %71 = call i32 @usbhsp_flags_set(%struct.usbhs_pipe* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %74 = call i64 @usbhs_pipe_type_is(%struct.usbhs_pipe* %73, i32 130)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @SHTNAK, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %79, %76, %72
  store i32 0, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %16, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %92, %93
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %81, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_type(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_type_is(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsp_flags_set(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
