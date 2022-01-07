; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_recv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32 }
%struct.msghdr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@WRITE = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CIFS: invalid msg iter dir %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CIFS: invalid msg type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbd_recv(%struct.smbd_connection* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %10 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %11 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %12 = call i32 @iov_iter_rw(%struct.TYPE_7__* %11)
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @VFS, align 4
  %18 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = call i32 @iov_iter_rw(%struct.TYPE_7__* %19)
  %21 = call i32 @cifs_dbg(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 0
  %27 = call i32 @iov_iter_type(%struct.TYPE_7__* %26)
  switch i32 %27, label %69 [
    i32 128, label %28
    i32 129, label %45
  ]

28:                                               ; preds = %24
  %29 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @smbd_recv_buf(%struct.smbd_connection* %41, i8* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %77

45:                                               ; preds = %24
  %46 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.page*, %struct.page** %50, align 8
  store %struct.page* %51, %struct.page** %6, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  %58 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @smbd_recv_page(%struct.smbd_connection* %64, %struct.page* %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %77

69:                                               ; preds = %24
  %70 = load i32, i32* @VFS, align 4
  %71 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %71, i32 0, i32 0
  %73 = call i32 @iov_iter_type(%struct.TYPE_7__* %72)
  %74 = call i32 @cifs_dbg(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %45, %28
  br label %78

78:                                               ; preds = %77, %16
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @iov_iter_rw(%struct.TYPE_7__*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @iov_iter_type(%struct.TYPE_7__*) #1

declare dso_local i32 @smbd_recv_buf(%struct.smbd_connection*, i8*, i32) #1

declare dso_local i32 @smbd_recv_page(%struct.smbd_connection*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
