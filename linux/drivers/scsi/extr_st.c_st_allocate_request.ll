; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_allocate_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_allocate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_request = type { %struct.scsi_tape* }
%struct.scsi_tape = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't get SCSI request.\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_request* (%struct.scsi_tape*)* @st_allocate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_request* @st_allocate_request(%struct.scsi_tape* %0) #0 {
  %2 = alloca %struct.scsi_tape*, align 8
  %3 = alloca %struct.st_request*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.st_request* @kzalloc(i32 8, i32 %4)
  store %struct.st_request* %5, %struct.st_request** %3, align 8
  %6 = load %struct.st_request*, %struct.st_request** %3, align 8
  %7 = icmp ne %struct.st_request* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %10 = load %struct.st_request*, %struct.st_request** %3, align 8
  %11 = getelementptr inbounds %struct.st_request, %struct.st_request* %10, i32 0, i32 0
  store %struct.scsi_tape* %9, %struct.scsi_tape** %11, align 8
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %15 = call i32 @st_printk(i32 %13, %struct.scsi_tape* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @current, align 4
  %17 = call i64 @signal_pending(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %33

26:                                               ; preds = %12
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33, %8
  %35 = load %struct.st_request*, %struct.st_request** %3, align 8
  ret %struct.st_request* %35
}

declare dso_local %struct.st_request* @kzalloc(i32, i32) #1

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
