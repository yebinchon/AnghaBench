; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_note_last_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_note_last_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dir_file_info = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"note_last_dentry '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_dir_file_info*, i8*, i32, i32)* @note_last_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_last_dentry(%struct.ceph_dir_file_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_dir_file_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ceph_dir_file_info* %0, %struct.ceph_dir_file_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @kfree(i8* %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %35 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %42 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %6, align 8
  %44 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %20, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dout(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
