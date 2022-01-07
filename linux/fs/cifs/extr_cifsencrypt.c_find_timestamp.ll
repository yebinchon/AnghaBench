; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_find_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_find_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ntlmssp2_name = type { i32, i32 }
%struct.timespec64 = type { i32 }

@NTLMSSP_AV_EOL = common dso_local global i32 0, align 4
@NTLMSSP_AV_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*)* @find_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_timestamp(%struct.cifs_ses* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ntlmssp2_name*, align 8
  %10 = alloca %struct.timespec64, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %3, align 8
  store i32 8, i32* %6, align 4
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %12 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %93

23:                                               ; preds = %16
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %30 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %82, %23
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %44, %struct.ntlmssp2_name** %9, align 8
  %45 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %9, align 8
  %46 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NTLMSSP_AV_EOL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %87

53:                                               ; preds = %42
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %7, align 8
  %56 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %9, align 8
  %57 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %87

69:                                               ; preds = %53
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @NTLMSSP_AV_TIMESTAMP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %2, align 4
  br label %93

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i32, i32* %4, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %7, align 8
  br label %35

87:                                               ; preds = %68, %52, %35
  %88 = call i32 @ktime_get_real_ts64(%struct.timespec64* %10)
  %89 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cifs_UnixTimeToNT(i32 %90)
  %92 = call i32 @cpu_to_le64(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %77, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
