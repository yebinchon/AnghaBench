; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.page = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"readpage %p at offset %d 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @cifs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @get_xid()
  store i32 %17, i32* %8, align 4
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @EBADF, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @free_xid(i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @FYI, align 4
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cifs_dbg(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.page* %30, i32 %31, i32 %32)
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @cifs_readpage_worker(%struct.file* %34, %struct.page* %35, i32* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @free_xid(i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.page*, i32, i32) #1

declare dso_local i32 @cifs_readpage_worker(%struct.file*, %struct.page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
