; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_recv_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_recv_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i64, i32 }
%struct.page = type { i32 }

@SMBD_CONNECTED = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"reading from page=%p address=%p to_read=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*, %struct.page*, i32, i32)* @smbd_recv_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_recv_page(%struct.smbd_connection* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbd_connection*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.smbd_connection*, %struct.smbd_connection** %6, align 8
  %14 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.smbd_connection*, %struct.smbd_connection** %6, align 8
  %17 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.smbd_connection*, %struct.smbd_connection** %6, align 8
  %23 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMBD_CONNECTED, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %4
  %28 = phi i1 [ true, %4 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @wait_event_interruptible(i32 %15, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %27
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = call i8* @kmap_atomic(%struct.page* %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i32, i32* @INFO, align 4
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @log_read(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.page* %43, i8* %44, i32 %45)
  %47 = load %struct.smbd_connection*, %struct.smbd_connection** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @smbd_recv_buf(%struct.smbd_connection* %47, i8* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @kunmap_atomic(i8* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %35, %33
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @log_read(i32, i8*, %struct.page*, i8*, i32) #1

declare dso_local i32 @smbd_recv_buf(%struct.smbd_connection*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
