; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_audio_ctl_elem_value = type { i32 }
%struct.gb_audio_set_control_request = type { i32, i8*, i8* }

@GB_AUDIO_TYPE_SET_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_gb_set_control(%struct.gb_connection* %0, i8* %1, i8* %2, %struct.gb_audio_ctl_elem_value* %3) #0 {
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gb_audio_ctl_elem_value*, align 8
  %9 = alloca %struct.gb_audio_set_control_request, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.gb_audio_ctl_elem_value* %3, %struct.gb_audio_ctl_elem_value** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.gb_audio_set_control_request, %struct.gb_audio_set_control_request* %9, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.gb_audio_set_control_request, %struct.gb_audio_set_control_request* %9, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.gb_audio_set_control_request, %struct.gb_audio_set_control_request* %9, i32 0, i32 0
  %15 = load %struct.gb_audio_ctl_elem_value*, %struct.gb_audio_ctl_elem_value** %8, align 8
  %16 = call i32 @memcpy(i32* %14, %struct.gb_audio_ctl_elem_value* %15, i32 4)
  %17 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %18 = load i32, i32* @GB_AUDIO_TYPE_SET_CONTROL, align 4
  %19 = call i32 @gb_operation_sync(%struct.gb_connection* %17, i32 %18, %struct.gb_audio_set_control_request* %9, i32 24, i32* null, i32 0)
  ret i32 %19
}

declare dso_local i32 @memcpy(i32*, %struct.gb_audio_ctl_elem_value*, i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_audio_set_control_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
