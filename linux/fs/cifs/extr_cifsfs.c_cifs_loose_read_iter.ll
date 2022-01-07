; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_loose_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_loose_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }

@O_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @cifs_loose_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cifs_loose_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.inode* @file_inode(%struct.TYPE_2__* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @O_DIRECT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %23 = call i64 @cifs_user_readv(%struct.kiocb* %21, %struct.iov_iter* %22)
  store i64 %23, i64* %3, align 8
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i64 @cifs_revalidate_mapping(%struct.inode* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %34 = call i64 @generic_file_read_iter(%struct.kiocb* %32, %struct.iov_iter* %33)
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %31, %29, %20
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_2__*) #1

declare dso_local i64 @cifs_user_readv(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @cifs_revalidate_mapping(%struct.inode*) #1

declare dso_local i64 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
