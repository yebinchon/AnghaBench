; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBTDis.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBTDis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.smb_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"In tree disconnect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB_COM_TREE_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Tree disconnect failed %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBTDis(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @FYI, align 4
  %9 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %11 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %16 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %31 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %70

37:                                               ; preds = %29
  %38 = load i32, i32* @SMB_COM_TREE_DISCONNECT, align 4
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %40 = bitcast %struct.smb_hdr** %6 to i8**
  %41 = call i32 @small_smb_init(i32 %38, i32 0, %struct.cifs_tcon* %39, i8** %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %70

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %52 = bitcast %struct.smb_hdr* %51 to i8*
  %53 = call i32 @SendReceiveNoRsp(i32 %47, %struct.TYPE_2__* %50, i8* %52, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %55 = call i32 @cifs_small_buf_release(%struct.smb_hdr* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @FYI, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %44, %36, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i32 @SendReceiveNoRsp(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
