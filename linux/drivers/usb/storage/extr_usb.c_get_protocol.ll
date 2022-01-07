; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_get_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_get_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Reduced Block Commands (RBC)\00", align 1
@usb_stor_transparent_scsi_command = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"8020i\00", align 1
@usb_stor_pad12_command = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"QIC-157\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"8070i\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Transparent SCSI\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Uniform Floppy Interface (UFI)\00", align 1
@usb_stor_ufi_command = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @get_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_protocol(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = load %struct.us_data*, %struct.us_data** %2, align 8
  %4 = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %48 [
    i32 130, label %6
    i32 133, label %12
    i32 131, label %20
    i32 132, label %28
    i32 129, label %36
    i32 128, label %42
  ]

6:                                                ; preds = %1
  %7 = load %struct.us_data*, %struct.us_data** %2, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i8*, i8** @usb_stor_transparent_scsi_command, align 8
  %10 = load %struct.us_data*, %struct.us_data** %2, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load i8*, i8** @usb_stor_pad12_command, align 8
  %16 = load %struct.us_data*, %struct.us_data** %2, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 3
  store i32 0, i32* %19, align 8
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.us_data*, %struct.us_data** %2, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load i8*, i8** @usb_stor_pad12_command, align 8
  %24 = load %struct.us_data*, %struct.us_data** %2, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.us_data*, %struct.us_data** %2, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 3
  store i32 0, i32* %27, align 8
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.us_data*, %struct.us_data** %2, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 8
  %31 = load i8*, i8** @usb_stor_pad12_command, align 8
  %32 = load %struct.us_data*, %struct.us_data** %2, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.us_data*, %struct.us_data** %2, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 3
  store i32 0, i32* %35, align 8
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.us_data*, %struct.us_data** %2, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = load i8*, i8** @usb_stor_transparent_scsi_command, align 8
  %40 = load %struct.us_data*, %struct.us_data** %2, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %48

42:                                               ; preds = %1
  %43 = load %struct.us_data*, %struct.us_data** %2, align 8
  %44 = getelementptr inbounds %struct.us_data, %struct.us_data* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 8
  %45 = load i8*, i8** @usb_stor_ufi_command, align 8
  %46 = load %struct.us_data*, %struct.us_data** %2, align 8
  %47 = getelementptr inbounds %struct.us_data, %struct.us_data* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %1, %42, %36, %28, %20, %12, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
