; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_maintenance_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_maintenance_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"SET_IDENTIFYING_INFORMATION\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SET_TARGET_PORT_GROUPS\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CHANGE_ALIASES\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SET_PRIORITY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SET_TIMESTAMP\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MANAGEMENT_PROTOCOL_OUT\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s alloc_len=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_maintenance_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_maintenance_out(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
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
  switch i32 %13, label %20 [
    i32 131, label %14
    i32 129, label %15
    i32 133, label %16
    i32 130, label %17
    i32 128, label %18
    i32 132, label %19
  ]

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %23

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %23

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %23

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %23

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %23

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %22 = call i32 @trace_seq_puts(%struct.trace_seq* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %31

23:                                               ; preds = %19, %18, %17, %16, %15, %14
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  %26 = call i32 @get_unaligned_be32(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %33 = call i32 @trace_seq_putc(%struct.trace_seq* %32, i32 0)
  %34 = load i8*, i8** %7, align 8
  ret i8* %34
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
