; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBLogoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBLogoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"In SMBLogoff for session disconnect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB_COM_LOGOFF_ANDX = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBLogoff(i32 %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @FYI, align 4
  %9 = call i32 @cifs_dbg(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %11 = icmp ne %struct.cifs_ses* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %14 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %12
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %77

29:                                               ; preds = %20
  %30 = load i32, i32* @SMB_COM_LOGOFF_ANDX, align 4
  %31 = bitcast %struct.TYPE_6__** %6 to i8**
  %32 = call i32 @small_smb_init(i32 %30, i32 2, i32* null, i8** %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %37 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %88

40:                                               ; preds = %29
  %41 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %42 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @get_next_mid(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %49 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %40
  %62 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %63 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 255, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = bitcast %struct.TYPE_6__* %72 to i8*
  %74 = call i32 @SendReceiveNoRsp(i32 %70, %struct.cifs_ses* %71, i8* %73, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = call i32 @cifs_small_buf_release(%struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %61, %28
  %78 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %79 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %35, %17
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @small_smb_init(i32, i32, i32*, i8**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_next_mid(%struct.TYPE_7__*) #1

declare dso_local i32 @SendReceiveNoRsp(i32, %struct.cifs_ses*, i8*, i32) #1

declare dso_local i32 @cifs_small_buf_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
