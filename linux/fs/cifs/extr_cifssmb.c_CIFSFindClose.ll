; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSFindClose.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSFindClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"In CIFSSMBFindClose\0A\00", align 1
@SMB_COM_FIND_CLOSE2 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Send error in FindClose = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSFindClose(i32 %0, %struct.cifs_tcon* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %10 = load i32, i32* @FYI, align 4
  %11 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SMB_COM_FIND_CLOSE2, align 4
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %14 = bitcast %struct.TYPE_7__** %9 to i8**
  %15 = call i32 @small_smb_init(i32 %12, i32 1, %struct.cifs_tcon* %13, i8** %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %60

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = bitcast %struct.TYPE_7__* %36 to i8*
  %38 = call i32 @SendReceiveNoRsp(i32 %32, i32 %35, i8* %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call i32 @cifs_small_buf_release(%struct.TYPE_7__* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load i32, i32* @VFS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @cifs_stats_inc(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %24, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i32 @SendReceiveNoRsp(i32, i32, i8*, i32) #1

declare dso_local i32 @cifs_small_buf_release(%struct.TYPE_7__*) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
