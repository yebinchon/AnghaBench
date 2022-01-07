; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBClose.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In CIFSSMBClose\0A\00", align 1
@SMB_COM_CLOSE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Send error in Close = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBClose(i32 %0, %struct.cifs_tcon* %1, i32 %2) #0 {
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
  %11 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SMB_COM_CLOSE, align 4
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %14 = bitcast %struct.TYPE_7__** %9 to i8**
  %15 = call i32 @small_smb_init(i32 %12, i32 3, %struct.cifs_tcon* %13, i8** %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = bitcast %struct.TYPE_7__* %39 to i8*
  %41 = call i32 @SendReceiveNoRsp(i32 %35, i32 %38, i8* %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = call i32 @cifs_small_buf_release(%struct.TYPE_7__* %42)
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @cifs_stats_inc(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %26
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EINTR, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @VFS, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %24, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
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
