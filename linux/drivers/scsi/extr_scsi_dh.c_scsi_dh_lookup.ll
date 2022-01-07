; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device_handler = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"scsi_dh_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_device_handler* (i8*)* @scsi_dh_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_device_handler* @scsi_dh_lookup(i8* %0) #0 {
  %2 = alloca %struct.scsi_device_handler*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_device_handler*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.scsi_device_handler* null, %struct.scsi_device_handler** %2, align 8
  br label %24

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.scsi_device_handler* @__scsi_dh_lookup(i8* %13)
  store %struct.scsi_device_handler* %14, %struct.scsi_device_handler** %4, align 8
  %15 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  %16 = icmp ne %struct.scsi_device_handler* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call %struct.scsi_device_handler* @__scsi_dh_lookup(i8* %20)
  store %struct.scsi_device_handler* %21, %struct.scsi_device_handler** %4, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %4, align 8
  store %struct.scsi_device_handler* %23, %struct.scsi_device_handler** %2, align 8
  br label %24

24:                                               ; preds = %22, %11
  %25 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %2, align 8
  ret %struct.scsi_device_handler* %25
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.scsi_device_handler* @__scsi_dh_lookup(i8*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
