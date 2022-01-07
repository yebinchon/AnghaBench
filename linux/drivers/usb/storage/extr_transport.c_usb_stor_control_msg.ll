; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [50 x i8] c"rq=%02x rqtype=%02x value=%04x index=%02x len=%u\0A\00", align 1
@usb_stor_blocking_completion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_control_msg(%struct.us_data* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.us_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.us_data*, %struct.us_data** %10, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @usb_stor_dbg(%struct.us_data* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i32 %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.us_data*, %struct.us_data** %10, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.us_data*, %struct.us_data** %10, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.us_data*, %struct.us_data** %10, align 8
  %40 = getelementptr inbounds %struct.us_data, %struct.us_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.us_data*, %struct.us_data** %10, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.us_data*, %struct.us_data** %10, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load %struct.us_data*, %struct.us_data** %10, align 8
  %56 = getelementptr inbounds %struct.us_data, %struct.us_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.us_data*, %struct.us_data** %10, align 8
  %59 = getelementptr inbounds %struct.us_data, %struct.us_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.us_data*, %struct.us_data** %10, align 8
  %63 = getelementptr inbounds %struct.us_data, %struct.us_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = bitcast %struct.TYPE_3__* %64 to i8*
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @usb_stor_blocking_completion, align 4
  %69 = call i32 @usb_fill_control_urb(%struct.TYPE_4__* %57, i32 %60, i32 %61, i8* %65, i8* %66, i32 %67, i32 %68, i32* null)
  %70 = load %struct.us_data*, %struct.us_data** %10, align 8
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @usb_stor_msg_common(%struct.us_data* %70, i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %9
  %76 = load %struct.us_data*, %struct.us_data** %10, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %75, %9
  %82 = load i32, i32* %19, align 4
  ret i32 %82
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_4__*, i32, i32, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @usb_stor_msg_common(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
