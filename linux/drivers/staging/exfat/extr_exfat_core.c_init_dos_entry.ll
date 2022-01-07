; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_dos_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_dos_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_dentry_t = type { i64, i32, i32, i32, i32 }
%struct.timestamp_t = type { i32 }
%struct.dentry_t = type { i32 }

@TM_CREATE = common dso_local global i32 0, align 4
@TM_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dos_entry(%struct.dos_dentry_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dos_dentry_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timestamp_t, align 4
  %8 = alloca %struct.timestamp_t*, align 8
  store %struct.dos_dentry_t* %0, %struct.dos_dentry_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %10 = bitcast %struct.dos_dentry_t* %9 to %struct.dentry_t*
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @fat_set_entry_type(%struct.dentry_t* %10, i32 %11)
  %13 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %14 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @CLUSTER_16(i32 %16)
  %18 = call i32 @SET16_A(i32 %15, i32 %17)
  %19 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %20 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 16
  %24 = call i32 @CLUSTER_16(i32 %23)
  %25 = call i32 @SET16_A(i32 %21, i32 %24)
  %26 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %27 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SET32_A(i32 %28, i32 0)
  %30 = call %struct.timestamp_t* @tm_current(%struct.timestamp_t* %7)
  store %struct.timestamp_t* %30, %struct.timestamp_t** %8, align 8
  %31 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %32 = bitcast %struct.dos_dentry_t* %31 to %struct.dentry_t*
  %33 = load %struct.timestamp_t*, %struct.timestamp_t** %8, align 8
  %34 = load i32, i32* @TM_CREATE, align 4
  %35 = call i32 @fat_set_entry_time(%struct.dentry_t* %32, %struct.timestamp_t* %33, i32 %34)
  %36 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %37 = bitcast %struct.dos_dentry_t* %36 to %struct.dentry_t*
  %38 = load %struct.timestamp_t*, %struct.timestamp_t** %8, align 8
  %39 = load i32, i32* @TM_MODIFY, align 4
  %40 = call i32 @fat_set_entry_time(%struct.dentry_t* %37, %struct.timestamp_t* %38, i32 %39)
  %41 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %42 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @SET16_A(i32 %43, i32 0)
  %45 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %46 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @fat_set_entry_type(%struct.dentry_t*, i32) #1

declare dso_local i32 @SET16_A(i32, i32) #1

declare dso_local i32 @CLUSTER_16(i32) #1

declare dso_local i32 @SET32_A(i32, i32) #1

declare dso_local %struct.timestamp_t* @tm_current(%struct.timestamp_t*) #1

declare dso_local i32 @fat_set_entry_time(%struct.dentry_t*, %struct.timestamp_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
