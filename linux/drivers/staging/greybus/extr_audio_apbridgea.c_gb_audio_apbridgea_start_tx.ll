; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_apbridgea.c_gb_audio_apbridgea_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_apbridgea.c_gb_audio_apbridgea_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.audio_apbridgea_start_tx_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AUDIO_APBRIDGEA_TYPE_START_TX = common dso_local global i32 0, align 4
@GB_APB_REQUEST_AUDIO_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_apbridgea_start_tx(%struct.gb_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_apbridgea_start_tx_request, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @AUDIO_APBRIDGEA_TYPE_START_TX, align 4
  %9 = getelementptr inbounds %struct.audio_apbridgea_start_tx_request, %struct.audio_apbridgea_start_tx_request* %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.audio_apbridgea_start_tx_request, %struct.audio_apbridgea_start_tx_request* %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cpu_to_le64(i32 %15)
  %17 = getelementptr inbounds %struct.audio_apbridgea_start_tx_request, %struct.audio_apbridgea_start_tx_request* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %19 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GB_APB_REQUEST_AUDIO_CONTROL, align 4
  %22 = call i32 @gb_hd_output(i32 %20, %struct.audio_apbridgea_start_tx_request* %7, i32 12, i32 %21, i32 1)
  ret i32 %22
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @gb_hd_output(i32, %struct.audio_apbridgea_start_tx_request*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
