; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c___full_proxy_fops_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c___full_proxy_fops_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i64, i64, i64, i64, i64, i32 }

@full_proxy_release = common dso_local global i32 0, align 4
@full_proxy_llseek = common dso_local global i64 0, align 8
@full_proxy_read = common dso_local global i64 0, align 8
@full_proxy_write = common dso_local global i64 0, align 8
@full_proxy_poll = common dso_local global i64 0, align 8
@full_proxy_unlocked_ioctl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_operations*, %struct.file_operations*)* @__full_proxy_fops_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__full_proxy_fops_init(%struct.file_operations* %0, %struct.file_operations* %1) #0 {
  %3 = alloca %struct.file_operations*, align 8
  %4 = alloca %struct.file_operations*, align 8
  store %struct.file_operations* %0, %struct.file_operations** %3, align 8
  store %struct.file_operations* %1, %struct.file_operations** %4, align 8
  %5 = load i32, i32* @full_proxy_release, align 4
  %6 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %7 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  %8 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %9 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @full_proxy_llseek, align 8
  %14 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %15 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %14, i32 0, i32 4
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %18 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @full_proxy_read, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %24 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %27 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @full_proxy_write, align 8
  %32 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %33 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %36 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @full_proxy_poll, align 8
  %41 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %42 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %45 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @full_proxy_unlocked_ioctl, align 8
  %50 = load %struct.file_operations*, %struct.file_operations** %3, align 8
  %51 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
