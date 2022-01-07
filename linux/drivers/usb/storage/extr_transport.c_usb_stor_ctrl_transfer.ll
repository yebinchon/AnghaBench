; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_ctrl_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_ctrl_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [50 x i8] c"rq=%02x rqtype=%02x value=%04x index=%02x len=%u\0A\00", align 1
@usb_stor_blocking_completion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.us_data*, %struct.us_data** %9, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i32 @usb_stor_dbg(%struct.us_data* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.us_data*, %struct.us_data** %9, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.us_data*, %struct.us_data** %9, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.us_data*, %struct.us_data** %9, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.us_data*, %struct.us_data** %9, align 8
  %44 = getelementptr inbounds %struct.us_data, %struct.us_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.us_data*, %struct.us_data** %9, align 8
  %50 = getelementptr inbounds %struct.us_data, %struct.us_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.us_data*, %struct.us_data** %9, align 8
  %54 = getelementptr inbounds %struct.us_data, %struct.us_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.us_data*, %struct.us_data** %9, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.us_data*, %struct.us_data** %9, align 8
  %61 = getelementptr inbounds %struct.us_data, %struct.us_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = bitcast %struct.TYPE_3__* %62 to i8*
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @usb_stor_blocking_completion, align 4
  %67 = call i32 @usb_fill_control_urb(%struct.TYPE_4__* %55, i32 %58, i32 %59, i8* %63, i8* %64, i32 %65, i32 %66, i32* null)
  %68 = load %struct.us_data*, %struct.us_data** %9, align 8
  %69 = call i32 @usb_stor_msg_common(%struct.us_data* %68, i32 0)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.us_data*, %struct.us_data** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.us_data*, %struct.us_data** %9, align 8
  %75 = getelementptr inbounds %struct.us_data, %struct.us_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @interpret_urb_result(%struct.us_data* %70, i32 %71, i32 %72, i32 %73, i32 %78)
  ret i32 %79
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_4__*, i32, i32, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @usb_stor_msg_common(%struct.us_data*, i32) #1

declare dso_local i32 @interpret_urb_result(%struct.us_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
