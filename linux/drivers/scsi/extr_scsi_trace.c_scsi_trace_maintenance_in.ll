; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_maintenance_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_maintenance_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"REPORT_IDENTIFYING_INFORMATION\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"REPORT_TARGET_PORT_GROUPS\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"REPORT_ALIASES\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"REPORT_SUPPORTED_OPERATION_CODES\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"REPORT_PRIORITY\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"REPORT_TIMESTAMP\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MANAGEMENT_PROTOCOL_IN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%s alloc_len=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_maintenance_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_maintenance_in(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %11 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @SERVICE_ACTION16(i8* %12)
  switch i32 %13, label %22 [
    i32 133, label %14
    i32 129, label %15
    i32 134, label %16
    i32 131, label %17
    i32 130, label %18
    i32 132, label %19
    i32 128, label %20
    i32 135, label %21
  ]

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %25

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %25

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %25

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %25

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %25

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %25

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %25

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %24 = call i32 @trace_seq_puts(%struct.trace_seq* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %33

25:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 6
  %28 = call i32 @get_unaligned_be32(i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @trace_seq_printf(%struct.trace_seq* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %35 = call i32 @trace_seq_putc(%struct.trace_seq* %34, i32 0)
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @SERVICE_ACTION16(i8*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
