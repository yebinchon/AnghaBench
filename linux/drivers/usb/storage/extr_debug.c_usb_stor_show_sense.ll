; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_debug.c_usb_stor_show_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_debug.c_usb_stor_show_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(Unknown Key)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(unknown ASC/ASCQ)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: %s (%s%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_show_sense(%struct.us_data* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = load i8, i8* %6, align 1
  %13 = call i8* @scsi_sense_key_string(i8 zeroext %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8, i8* %7, align 1
  %15 = load i8, i8* %8, align 1
  %16 = call i8* @scsi_extd_sense_format(i8 zeroext %14, i8 zeroext %15, i8** %11)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.us_data*, %struct.us_data** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (%struct.us_data*, i8*, i8*, i8*, ...) @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %30, i8* %31, i32 %33)
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.us_data*, %struct.us_data** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 (%struct.us_data*, i8*, i8*, i8*, ...) @usb_stor_dbg(%struct.us_data* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %27
  ret void
}

declare dso_local i8* @scsi_sense_key_string(i8 zeroext) #1

declare dso_local i8* @scsi_extd_sense_format(i8 zeroext, i8 zeroext, i8**) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
