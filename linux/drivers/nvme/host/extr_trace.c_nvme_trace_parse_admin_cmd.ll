; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_parse_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_parse_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvme_trace_parse_admin_cmd(%struct.trace_seq* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 133, label %13
    i32 132, label %17
    i32 134, label %21
    i32 128, label %25
    i32 130, label %29
    i32 129, label %33
  ]

9:                                                ; preds = %3
  %10 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i8* @nvme_trace_delete_sq(%struct.trace_seq* %10, i32* %11)
  store i8* %12, i8** %4, align 8
  br label %41

13:                                               ; preds = %3
  %14 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i8* @nvme_trace_create_sq(%struct.trace_seq* %14, i32* %15)
  store i8* %16, i8** %4, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @nvme_trace_delete_cq(%struct.trace_seq* %18, i32* %19)
  store i8* %20, i8** %4, align 8
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @nvme_trace_create_cq(%struct.trace_seq* %22, i32* %23)
  store i8* %24, i8** %4, align 8
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @nvme_trace_admin_identify(%struct.trace_seq* %26, i32* %27)
  store i8* %28, i8** %4, align 8
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @nvme_trace_admin_get_features(%struct.trace_seq* %30, i32* %31)
  store i8* %32, i8** %4, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i8* @nvme_trace_get_lba_status(%struct.trace_seq* %34, i32* %35)
  store i8* %36, i8** %4, align 8
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @nvme_trace_common(%struct.trace_seq* %38, i32* %39)
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %37, %33, %29, %25, %21, %17, %13, %9
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i8* @nvme_trace_delete_sq(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_create_sq(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_delete_cq(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_create_cq(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_admin_identify(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_admin_get_features(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_get_lba_status(%struct.trace_seq*, i32*) #1

declare dso_local i8* @nvme_trace_common(%struct.trace_seq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
