; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_file_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_file_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_dentry_t = type { i64, i64, i64 }
%struct.timestamp_t = type { i32 }
%struct.dentry_t = type { i32 }

@TM_CREATE = common dso_local global i32 0, align 4
@TM_MODIFY = common dso_local global i32 0, align 4
@TM_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_file_entry(%struct.file_dentry_t* %0, i32 %1) #0 {
  %3 = alloca %struct.file_dentry_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timestamp_t, align 4
  %6 = alloca %struct.timestamp_t*, align 8
  store %struct.file_dentry_t* %0, %struct.file_dentry_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %8 = bitcast %struct.file_dentry_t* %7 to %struct.dentry_t*
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @exfat_set_entry_type(%struct.dentry_t* %8, i32 %9)
  %11 = call %struct.timestamp_t* @tm_current(%struct.timestamp_t* %5)
  store %struct.timestamp_t* %11, %struct.timestamp_t** %6, align 8
  %12 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %13 = bitcast %struct.file_dentry_t* %12 to %struct.dentry_t*
  %14 = load %struct.timestamp_t*, %struct.timestamp_t** %6, align 8
  %15 = load i32, i32* @TM_CREATE, align 4
  %16 = call i32 @exfat_set_entry_time(%struct.dentry_t* %13, %struct.timestamp_t* %14, i32 %15)
  %17 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %18 = bitcast %struct.file_dentry_t* %17 to %struct.dentry_t*
  %19 = load %struct.timestamp_t*, %struct.timestamp_t** %6, align 8
  %20 = load i32, i32* @TM_MODIFY, align 4
  %21 = call i32 @exfat_set_entry_time(%struct.dentry_t* %18, %struct.timestamp_t* %19, i32 %20)
  %22 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %23 = bitcast %struct.file_dentry_t* %22 to %struct.dentry_t*
  %24 = load %struct.timestamp_t*, %struct.timestamp_t** %6, align 8
  %25 = load i32, i32* @TM_ACCESS, align 4
  %26 = call i32 @exfat_set_entry_time(%struct.dentry_t* %23, %struct.timestamp_t* %24, i32 %25)
  %27 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %28 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %30 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.file_dentry_t*, %struct.file_dentry_t** %3, align 8
  %32 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

declare dso_local i32 @exfat_set_entry_type(%struct.dentry_t*, i32) #1

declare dso_local %struct.timestamp_t* @tm_current(%struct.timestamp_t*) #1

declare dso_local i32 @exfat_set_entry_time(%struct.dentry_t*, %struct.timestamp_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
