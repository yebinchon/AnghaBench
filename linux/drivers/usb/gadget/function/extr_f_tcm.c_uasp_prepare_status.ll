; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_cmd = type { i64, i32, %struct.uas_stream*, %struct.sense_iu, %struct.se_cmd }
%struct.uas_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sense_iu*, i64, %struct.usbg_cmd* }
%struct.sense_iu = type { i32, i8*, i8*, i32 }
%struct.se_cmd = type { i64, i32 }

@UASP_QUEUE_COMMAND = common dso_local global i32 0, align 4
@IU_ID_STATUS = common dso_local global i32 0, align 4
@uasp_status_data_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbg_cmd*)* @uasp_prepare_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uasp_prepare_status(%struct.usbg_cmd* %0) #0 {
  %2 = alloca %struct.usbg_cmd*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.sense_iu*, align 8
  %5 = alloca %struct.uas_stream*, align 8
  store %struct.usbg_cmd* %0, %struct.usbg_cmd** %2, align 8
  %6 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %6, i32 0, i32 4
  store %struct.se_cmd* %7, %struct.se_cmd** %3, align 8
  %8 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %8, i32 0, i32 3
  store %struct.sense_iu* %9, %struct.sense_iu** %4, align 8
  %10 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %10, i32 0, i32 2
  %12 = load %struct.uas_stream*, %struct.uas_stream** %11, align 8
  store %struct.uas_stream* %12, %struct.uas_stream** %5, align 8
  %13 = load i32, i32* @UASP_QUEUE_COMMAND, align 4
  %14 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @IU_ID_STATUS, align 4
  %17 = load %struct.sense_iu*, %struct.sense_iu** %4, align 8
  %18 = getelementptr inbounds %struct.sense_iu, %struct.sense_iu* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @cpu_to_be16(i64 %21)
  %23 = load %struct.sense_iu*, %struct.sense_iu** %4, align 8
  %24 = getelementptr inbounds %struct.sense_iu, %struct.sense_iu* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_be16(i64 %27)
  %29 = load %struct.sense_iu*, %struct.sense_iu** %4, align 8
  %30 = getelementptr inbounds %struct.sense_iu, %struct.sense_iu* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sense_iu*, %struct.sense_iu** %4, align 8
  %35 = getelementptr inbounds %struct.sense_iu, %struct.sense_iu* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %37 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %38 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store %struct.usbg_cmd* %36, %struct.usbg_cmd** %40, align 8
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 16
  %45 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %46 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 %44, i64* %48, align 8
  %49 = load %struct.sense_iu*, %struct.sense_iu** %4, align 8
  %50 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %51 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.sense_iu* %49, %struct.sense_iu** %53, align 8
  %54 = load i32, i32* @uasp_status_data_cmpl, align 4
  %55 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %56 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  ret void
}

declare dso_local i8* @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
