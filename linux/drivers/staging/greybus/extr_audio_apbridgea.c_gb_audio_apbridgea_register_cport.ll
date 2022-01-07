; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_apbridgea.c_gb_audio_apbridgea_register_cport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_apbridgea.c_gb_audio_apbridgea_register_cport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32 }
%struct.audio_apbridgea_register_cport_request = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@AUDIO_APBRIDGEA_TYPE_REGISTER_CPORT = common dso_local global i32 0, align 4
@GB_APB_REQUEST_AUDIO_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_apbridgea_register_cport(%struct.gb_connection* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.audio_apbridgea_register_cport_request, align 8
  %11 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @AUDIO_APBRIDGEA_TYPE_REGISTER_CPORT, align 4
  %13 = getelementptr inbounds %struct.audio_apbridgea_register_cport_request, %struct.audio_apbridgea_register_cport_request* %10, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.audio_apbridgea_register_cport_request, %struct.audio_apbridgea_register_cport_request* %10, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.audio_apbridgea_register_cport_request, %struct.audio_apbridgea_register_cport_request* %10, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.audio_apbridgea_register_cport_request, %struct.audio_apbridgea_register_cport_request* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %25 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gb_pm_runtime_get_sync(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %4
  %33 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %34 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GB_APB_REQUEST_AUDIO_CONTROL, align 4
  %37 = call i32 @gb_hd_output(i32 %35, %struct.audio_apbridgea_register_cport_request* %10, i32 32, i32 %36, i32 1)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %30
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @gb_hd_output(i32, %struct.audio_apbridgea_register_cport_request*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
