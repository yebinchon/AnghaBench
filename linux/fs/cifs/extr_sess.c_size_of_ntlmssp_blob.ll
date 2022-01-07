; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_size_of_ntlmssp_blob.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_size_of_ntlmssp_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@CIFS_CPHTXT_SIZE = common dso_local global i32 0, align 4
@CIFS_MAX_DOMAINNAME_LEN = common dso_local global i32 0, align 4
@CIFS_MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*)* @size_of_ntlmssp_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_of_ntlmssp_blob(%struct.cifs_ses* %0) #0 {
  %2 = alloca %struct.cifs_ses*, align 8
  %3 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %2, align 8
  %4 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %5 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = add i64 4, %8
  %10 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %9, %11
  %13 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = add i64 %15, 2
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %19 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %24 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @CIFS_MAX_DOMAINNAME_LEN, align 4
  %27 = call i32 @strnlen(i64 %25, i32 %26)
  %28 = mul nsw i32 2, %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %36 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %2, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @CIFS_MAX_USERNAME_LEN, align 4
  %44 = call i32 @strnlen(i64 %42, i32 %43)
  %45 = mul nsw i32 2, %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %34
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @strnlen(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
