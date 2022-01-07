; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_parse_smb_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_parse_smb_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32*, i32* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@cifs_smb_version_tokens = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"vers=1.0 (cifs) mount not permitted when legacy dialects disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"vers=2.0 mount not permitted when legacy dialects disabled\0A\00", align 1
@smb21_operations = common dso_local global i32 0, align 4
@smb21_values = common dso_local global i32 0, align 4
@smb30_operations = common dso_local global i32 0, align 4
@smb30_values = common dso_local global i32 0, align 4
@smb302_values = common dso_local global i32 0, align 4
@smb311_operations = common dso_local global i32 0, align 4
@smb311_values = common dso_local global i32 0, align 4
@smb3any_values = common dso_local global i32 0, align 4
@smbdefault_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unknown vers= option specified: %s\0A\00", align 1
@disable_legacy_dialects = common dso_local global i32 0, align 4
@smb1_operations = common dso_local global i32 0, align 4
@smb1_values = common dso_local global i32 0, align 4
@smb20_operations = common dso_local global i32 0, align 4
@smb20_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.smb_vol*, i32)* @cifs_parse_smb_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_parse_smb_version(i8* %0, %struct.smb_vol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smb_vol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MAX_OPT_ARGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @cifs_smb_version_tokens, align 4
  %17 = call i32 @match_token(i8* %15, i32 %16, i32* %14)
  switch i32 %17, label %54 [
    i32 135, label %18
    i32 134, label %21
    i32 133, label %24
    i32 132, label %29
    i32 131, label %34
    i32 130, label %39
    i32 129, label %44
    i32 128, label %49
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @VFS, align 4
  %20 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i32, i32* @VFS, align 4
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %26 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %25, i32 0, i32 1
  store i32* @smb21_operations, i32** %26, align 8
  %27 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %28 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %27, i32 0, i32 0
  store i32* @smb21_values, i32** %28, align 8
  br label %58

29:                                               ; preds = %3
  %30 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %31 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %30, i32 0, i32 1
  store i32* @smb30_operations, i32** %31, align 8
  %32 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %33 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %32, i32 0, i32 0
  store i32* @smb30_values, i32** %33, align 8
  br label %58

34:                                               ; preds = %3
  %35 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %36 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %35, i32 0, i32 1
  store i32* @smb30_operations, i32** %36, align 8
  %37 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %38 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %37, i32 0, i32 0
  store i32* @smb302_values, i32** %38, align 8
  br label %58

39:                                               ; preds = %3
  %40 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %41 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %40, i32 0, i32 1
  store i32* @smb311_operations, i32** %41, align 8
  %42 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %43 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %42, i32 0, i32 0
  store i32* @smb311_values, i32** %43, align 8
  br label %58

44:                                               ; preds = %3
  %45 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %46 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %45, i32 0, i32 1
  store i32* @smb30_operations, i32** %46, align 8
  %47 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %48 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %47, i32 0, i32 0
  store i32* @smb3any_values, i32** %48, align 8
  br label %58

49:                                               ; preds = %3
  %50 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %51 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %50, i32 0, i32 1
  store i32* @smb30_operations, i32** %51, align 8
  %52 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 0
  store i32* @smbdefault_values, i32** %53, align 8
  br label %58

54:                                               ; preds = %3
  %55 = load i32, i32* @VFS, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %59

58:                                               ; preds = %49, %44, %39, %34, %29, %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %54, %21, %18
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
