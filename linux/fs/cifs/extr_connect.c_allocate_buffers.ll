; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i8*, i64 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No memory for large SMB response\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No memory for SMB response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_buffers(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %4 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %5 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = call i64 (...) @cifs_buf_get()
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = load i32, i32* @VFS, align 4
  %19 = call i32 @cifs_server_dbg(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @msleep(i32 3000)
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %8
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %32 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %31)
  %33 = call i32 @memset(i8* %30, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = call i64 (...) @cifs_small_buf_get()
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @VFS, align 4
  %51 = call i32 @cifs_server_dbg(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @msleep(i32 1000)
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %40
  br label %61

54:                                               ; preds = %35
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %59 = call i32 @HEADER_SIZE(%struct.TCP_Server_Info* %58)
  %60 = call i32 @memset(i8* %57, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %54, %53
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %49, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @cifs_buf_get(...) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @HEADER_SIZE(%struct.TCP_Server_Info*) #1

declare dso_local i64 @cifs_small_buf_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
