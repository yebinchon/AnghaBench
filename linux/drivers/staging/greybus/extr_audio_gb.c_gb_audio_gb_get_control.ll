; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_audio_ctl_elem_value = type { i32 }
%struct.gb_audio_get_control_request = type { i8*, i8* }
%struct.gb_audio_get_control_response = type { i32 }

@GB_AUDIO_TYPE_GET_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_gb_get_control(%struct.gb_connection* %0, i8* %1, i8* %2, %struct.gb_audio_ctl_elem_value* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gb_audio_ctl_elem_value*, align 8
  %10 = alloca %struct.gb_audio_get_control_request, align 8
  %11 = alloca %struct.gb_audio_get_control_response, align 4
  %12 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.gb_audio_ctl_elem_value* %3, %struct.gb_audio_ctl_elem_value** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.gb_audio_get_control_request, %struct.gb_audio_get_control_request* %10, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.gb_audio_get_control_request, %struct.gb_audio_get_control_request* %10, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %18 = load i32, i32* @GB_AUDIO_TYPE_GET_CONTROL, align 4
  %19 = call i32 @gb_operation_sync(%struct.gb_connection* %17, i32 %18, %struct.gb_audio_get_control_request* %10, i32 16, %struct.gb_audio_get_control_response* %11, i32 4)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.gb_audio_ctl_elem_value*, %struct.gb_audio_ctl_elem_value** %9, align 8
  %26 = getelementptr inbounds %struct.gb_audio_get_control_response, %struct.gb_audio_get_control_response* %11, i32 0, i32 0
  %27 = call i32 @memcpy(%struct.gb_audio_ctl_elem_value* %25, i32* %26, i32 4)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_audio_get_control_request*, i32, %struct.gb_audio_get_control_response*, i32) #1

declare dso_local i32 @memcpy(%struct.gb_audio_ctl_elem_value*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
