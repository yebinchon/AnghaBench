; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBFlush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In CIFSSMBFlush\0A\00", align 1
@SMB_COM_FLUSH = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Send error in Flush = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBFlush(i32 %0, %struct.cifs_tcon* %1, i32 %2) #0 {
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
  %12 = load i32, i32* @SMB_COM_FLUSH, align 4
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %14 = bitcast %struct.TYPE_7__** %9 to i8**
  %15 = call i32 @small_smb_init(i32 %12, i32 1, %struct.cifs_tcon* %13, i8** %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = bitcast %struct.TYPE_7__* %31 to i8*
  %33 = call i32 @SendReceiveNoRsp(i32 %27, i32 %30, i8* %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = call i32 @cifs_small_buf_release(%struct.TYPE_7__* %34)
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @cifs_stats_inc(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %20
  %44 = load i32, i32* @VFS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %20
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
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
