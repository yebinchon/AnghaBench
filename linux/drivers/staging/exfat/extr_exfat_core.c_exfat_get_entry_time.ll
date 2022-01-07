; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_entry_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_entry_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry_t = type { i32 }
%struct.timestamp_t = type { i32, i32, i32, i32, i32, i32 }
%struct.file_dentry_t = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exfat_get_entry_time(%struct.dentry_t* %0, %struct.timestamp_t* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry_t*, align 8
  %5 = alloca %struct.timestamp_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_dentry_t*, align 8
  store %struct.dentry_t* %0, %struct.dentry_t** %4, align 8
  store %struct.timestamp_t* %1, %struct.timestamp_t** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 33, i32* %8, align 4
  %10 = load %struct.dentry_t*, %struct.dentry_t** %4, align 8
  %11 = bitcast %struct.dentry_t* %10 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %11, %struct.file_dentry_t** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %40 [
    i32 129, label %13
    i32 128, label %22
    i32 130, label %31
  ]

13:                                               ; preds = %3
  %14 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %15 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GET16_A(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %19 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GET16_A(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %24 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET16_A(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %28 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @GET16_A(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %3
  %32 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %33 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GET16_A(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.file_dentry_t*, %struct.file_dentry_t** %9, align 8
  %37 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GET16_A(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %3, %31, %22, %13
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 %42, 1
  %44 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %45 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 5
  %48 = and i32 %47, 63
  %49 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %50 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 11
  %53 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %54 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 31
  %57 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %58 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 5
  %61 = and i32 %60, 15
  %62 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %63 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 9
  %66 = load %struct.timestamp_t*, %struct.timestamp_t** %5, align 8
  %67 = getelementptr inbounds %struct.timestamp_t, %struct.timestamp_t* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @GET16_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
