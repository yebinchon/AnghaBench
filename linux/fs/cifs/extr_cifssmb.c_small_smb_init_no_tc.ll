; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_small_smb_init_no_tc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_small_smb_init_no_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32 }
%struct.smb_hdr = type { i32, i32 }

@CAP_UNICODE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@CAP_STATUS32 = common dso_local global i32 0, align 4
@SMBFLG2_ERR_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @small_smb_init_no_tc(i32 %0, i32 %1, %struct.cifs_ses* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb_hdr*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.cifs_ses* %2, %struct.cifs_ses** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i8**, i8*** %9, align 8
  %15 = call i32 @small_smb_init(i32 %12, i32 %13, i32* null, i8** %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %57

20:                                               ; preds = %4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.smb_hdr*
  store %struct.smb_hdr* %23, %struct.smb_hdr** %11, align 8
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_next_mid(i32 %26)
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %29 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %31 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CAP_UNICODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %20
  %37 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %38 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %39 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %20
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CAP_STATUS32, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @SMBFLG2_ERR_STATUS, align 4
  %51 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @small_smb_init(i32, i32, i32*, i8**) #1

declare dso_local i32 @get_next_mid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
